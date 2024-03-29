#include "OMC_WIFI_mqtt.hpp"

String omcState   = "omc/00/estado";
String omcChanges = "omc/00/cambios";

char   omcIDtopic[11];

PZEM004Tv30 pzem1(Serial2, 16, 17);

void connectToMqtt() {

  //  Serial.println();
  //  Serial.println("Conectando MQTT...");
  //mqttClient.disconnect();
  if (MQTT_HOST != IPAddress(0, 0, 0, 0)) {

    mqttClient.connect();
    //    Serial.println("Server IP: " + MQTT_HOST.toString());

  }
  else {

    //    Serial.println("No hay servidor configurado");

  }

  //xTimerStart(mqttReconnectTimer, 0);

}


void WiFiEvent(WiFiEvent_t event) {

  //  Serial.println();
  //  Serial.printf("[WiFi-event] event: %d\n", event);

  switch (event) {

    case SYSTEM_EVENT_STA_GOT_IP:
      //      Serial.println("WiFi conectado");
      //      Serial.println("Direción IP OMC: ");
      //      Serial.println(WiFi.localIP());
      //connectToMqtt();
      xTimerStart(mqttReconnectTimer, 0);
      break;

    case SYSTEM_EVENT_STA_DISCONNECTED:
      //      Serial.println("Conexión WiFi perdida");
      xTimerStop(mqttReconnectTimer, 0); // ensure we don't reconnect to MQTT while reconnecting to Wi-Fi
      //xTimerStart(wifiReconnectTimer, 0);
      break;

  }
}


void onMqttConnect(bool sessionPresent) {

  //  char petition[6];

  connServer = true;
  numberID = 0;

  xTimerStop(mqttReconnectTimer, 0);

  esp_wifi_set_mode(WIFI_MODE_STA);

  //  Serial.println();
  //  Serial.println("Conectado a MQTT.");
  //  Serial.print("Sesión: ");
  //  Serial.println(sessionPresent);

  //  uint16_t packetIdSub = mqttClient.subscribe("omc/01/estado", 0);
  //  Serial.println();
  //  Serial.print("Suscrito a omc/01/estado con QoS 0. Packet ID: ");
  //  Serial.println(packetIdSub);

  uint16_t packetIdSub = mqttClient.subscribe("omc/respuesta", 2);
  //  Serial.println();
  //  Serial.print("Suscrito a omc/respuesta con QoS 2. Packet ID: ");
  //  Serial.println(packetIdSub);

  mqttClient.publish(omcIDtopic, 2, true, "CONECTADO");
  //  Serial.print("Mensaje de conexión enviado: CONECTADO");

  //publish de peticion
  //uint16_t packetIdSub = mqttClient.subscribe("omc/01/cambios", 2);
  //Serial.println();
  //Serial.print("Suscrito a omc/01/cambios con QoS 2. Packet ID: ");
  //Serial.println(packetIdSub);

  //  snprintf(petition, 6, "%s", omcID);
  //  mqttClient.publish("omc/peticion", 2, true, petition);

}


void onMqttDisconnect(AsyncMqttClientDisconnectReason reason) {

  connServer = false;

  //  Serial.println();
  //  Serial.println("Desconectado de MQTT.");

  if (WiFi.isConnected()) {

    xTimerStart(mqttReconnectTimer, 0);

  }

}

void onMqttSubscribe(uint16_t packetId, uint8_t qos) {
  //  Serial.println();
  //  Serial.println("Suscripción exitosa");
  //  Serial.print("  packetId: ");
  //  Serial.println(packetId);
  //  Serial.print("  qos: ");
  //  Serial.println(qos);
}

void onMqttUnsubscribe(uint16_t packetId) {
  //  Serial.println();
  //  Serial.println("Desuscripción existosa");
  //  Serial.print("  packetId: ");
  //  Serial.println(packetId);
}

void onMqttMessage(char* topic, char* payload, AsyncMqttClientMessageProperties properties, size_t len, size_t index, size_t total) {

  char*  message    = payload;
  String messageStr = String(payload);
  String topicStr   = String(topic);
  String rate       = String(message[2]) + String(message[3]);
  //
  //  Serial.println();
  //  Serial.println("Mensaje recibido");
  //  Serial.println("Topico: ");
  //  Serial.println(topicStr);
  //  Serial.println("Mensaje: ");
  //  Serial.println(messageStr);


  if (topicStr == omcChanges) {
    //    Serial.println("El servidor pidio realizar un cambio");
    if ((message[0] + message[1]) == ('m' + 'r')) {

      controlGlobalRelay = !controlGlobalRelay;

      storage.begin("config", false);
      storage.putBool("controlManual", controlGlobalRelay);
      storage.end();

    }
    else if ((message[0] + message[1]) == ('m' + 'v')) {

      switch ((String(message[2]) + String(message[3])).toInt()) {

        case 1:
          voltMode = 120;
          break;

        case 2:
          voltMode = 220;
          break;

      }

      storage.begin("config", false);

      storage.putInt("voltMode", voltMode);

      storage.end();

      voltInf  = voltMode * lowFactor;                              //Se define el voltaje de corte inferior en base al modo de voltaje
      voltSup  = voltMode * highFactor;                             //Se define el voltaje de corte superior en base al modo de voltaje


    }
    else if ((message[0] + message[1]) == ('l' + 'c')) {

      if (message[2] == '0') {

        switch (message[3] - '0') {

          case 0:
            corrSup = 0.5;
            break;

          case 1:
            corrSup = 1;
            break;

          case 2:
            corrSup = 2;
            break;

          case 3:
            corrSup = 3;
            break;

          case 4:
            corrSup = 4;
            break;

          case 5:
            corrSup = 5;
            break;

          case 6:
            corrSup = 6;
            break;

          case 7:
            corrSup = 7;
            break;

          case 8:
            corrSup = 8;
            break;

          case 9:
            corrSup = 9;
            break;

        }

      }
      else if (message[2] == '1') {

        corrSup = 10;

      }

      storage.begin("config", false);

      storage.putUChar("corrSup", corrSup);

      storage.end();

    }
    else if ((message[0] + message[1]) == ('e' + 'n')) {

      pzem1.resetEnergy();
      //      Serial.println("Reiniciando consumo de energía");

    }
    else if ((message[0] + message[1]) == ('r' + 'e')) {

      //      Serial.println("Reiniciando OMC-WIFI por solicitud del servidor de monitoreo...");

      Serial.end();
      Serial2.end();
      vTaskDelay(100 / portTICK_PERIOD_MS);

      xTimerDelete(publishTimer, 0);
      xTimerDelete(mqttReconnectTimer, 0);
      xTimerDelete(timerRecuperacion, 0);
      xTimerDelete(timerSecundario, 0);
      vTaskDelay(100 / portTICK_PERIOD_MS);

      mqttClient.disconnect();
      vTaskDelay(100 / portTICK_PERIOD_MS);

      vTaskDelete(xAutoConnectHandle);
      vTaskDelete(xReadHandle);
      vTaskDelete(xGreenLedHandle);
      vTaskDelete(xRedLedHandle);
      vTaskDelete(xTouchHandle);
      vTaskDelay(100 / portTICK_PERIOD_MS);

      esp_task_wdt_init(1, true);
      esp_task_wdt_add(NULL);
      vTaskDelay(100 / portTICK_PERIOD_MS);

      ESP.restart();

    }

  }
  else if (topicStr == "omc/respuesta") {
    //    Serial.println("El servidor ha respondido a un dispositivo");
    //    String _omcID = "";
    //char _omcID[4]; //esto no se suponía que pudiera funcionar
    String _omcID = "123456";

    for (int i = 0; i < 6; i++) {

      _omcID[i] = messageStr[i];
      //_omcID = _omcID + String(message[i]);

    }
    if (_omcID == omcID) {
      //if (String(_omcID) == omcID) {
      //      Serial.println("Me ha respondido a mi");
      // Nos desuscribimos de cualquier topico en el que estuvimos suscritos antes, pues ahora tocó hacer un cambio
      uint16_t packetIdUns = mqttClient.unsubscribe(omcChanges.c_str());

      // Verificamos ahora cuál será nuestro nuevo ID
      switch ((String(message[6]) + String(message[7])).toInt()) {

        case 1:
          numberID = 1;
          break;

        case 2:
          numberID = 2;
          break;

        case 3:
          numberID = 3;
          break;

        case 4:
          numberID = 4;
          break;

        case 5:
          numberID = 5;
          break;

        case 6:
          numberID = 6;
          break;

        case 7:
          numberID = 7;
          break;

        case 8:
          numberID = 8;
          break;

        case 9:
          numberID = 9;
          break;

        case 10:
          numberID = 10;
          break;

        case 99:
          connServer = false;
          numberID = 99;
          break;

      }

      //      Serial.println("Soy el OMC0" + String(numberID));

      if (numberID < 10) {

        omcState   = "omc/0" + String(numberID) + "/estado";
        omcChanges = "omc/0" + String(numberID) + "/cambios";

        uint16_t packetIdSub = mqttClient.subscribe(omcChanges.c_str(), 2);
        //        Serial.println();
        //        Serial.print("Suscrito a " + omcChanges + " con QoS 2. Packet ID: ");
        //        Serial.println(packetIdSub);

        xTimerChangePeriod(publishTimer, 1000 / portTICK_PERIOD_MS, 0);

      }

    }


    // el id que me mando el servidor es igual al mio?
    // cual es el numero que me dio el servidor?
    // el numero que me dio el servidor es el 5
    // me suscribo al topico omc/05/cambios
    // debo publicar en omc/05/estado

    // cuando compruebo que el id si es el mio entonces me desuscribo del topico en donde estuviera conectado antes

  }
}


void publicarValores() {

  char        petition[7];
  char        state[110];
  uint32_t    oldTicks = 0;
  int         _voltMode;
  String      _corrSup;
  IPAddress   ip = WiFi.localIP();

  if (numberID == 0) {

    xTimerChangePeriod(publishTimer, 10000 / portTICK_PERIOD_MS, 0);
    if (connServer == true) {

      snprintf(petition, 7, "%s", omcID);
      mqttClient.publish("omc/peticion", 2, false, petition);
      //      Serial.println("Petición enviada");
      //      Serial.println(petition);

    }
    else {

      //      Serial.println("Dispositivo no conectado a servidor");

    }

  }
  else if (numberID == 99) {
    xTimerChangePeriod(publishTimer, 10000 / portTICK_PERIOD_MS, 0);
    //    Serial.println("El servidor ha rechazado/desvinculado este dispositivo");
    //    Serial.println("Reinicie el dispositivo para volver a intentar vincularlo");

  }
  else {

    switch (voltMode) {

      case 120:
        _voltMode = 1;
        break;

      case 220:
        _voltMode = 2;
        break;

    }

    switch ((int)corrSup) {

      case 10:
        _corrSup = "10";
        break;

      default:
        _corrSup = "0" + String((int)corrSup);
        break;

    }

    //    if ((xTaskGetTickCount() - oldTicks) > 0){
    //
    //      uptime = uptime + ((int)(xTaskGetTickCount() - oldTicks))/1000;
    //
    //    }
    //    else{
    //
    //      uptime = uptime + ((int)xTaskGetTickCount())/1000;
    //
    //    }
    //
    //    oldTicks = xTaskGetTickCount();


    snprintf(state, 110, "vo%d.%d,co%d.%d,po%d.%d,fp%d.%d,en%d.%d,es%d,mr%d,mv0%d,lc%s,ip%d.%d.%d.%d,up%d,"
             , (int)rmsVolt
             , (int)(((rmsVolt - (int)rmsVolt)*pow(10, 2)) + 0.01)
             , (int)rmsCorr
             , (int)(((rmsCorr - (int)rmsCorr)*pow(10, 2)) + 0.01)
             , (int)rmsPower
             , (int)(((rmsPower - (int)rmsPower)*pow(10, 2)) + 0.01)
             , (int)powFactor
             , (int)(((powFactor - (int)powFactor)*pow(10, 2)) + 0.01)
             , (int)_energy
             , (int)(((_energy - (int)_energy)*pow(10, 2)) + 0.01)
             , estadoOMC
             , controlGlobalRelay
             , _voltMode
             , _corrSup
             , (int)ip[0]
             , (int)ip[1]
             , (int)ip[2]
             , (int)ip[3]
             , uptime
            );

    mqttClient.publish(omcState.c_str(), 0, false, state);

    //IPAddress ip = WiFi.localIP();

  }

  xTimerReset(publishTimer, 0);

}

void mqttSetUp() {

  snprintf(omcIDtopic, 11, "omc/%s", omcID);

  storage.begin("config", true);                                          //Se abre el espacio en memoria flash denominado "storage" para leer y escribir (false)
  MQTT_HOST.fromString(storage.getString("server_ip", "0.0.0.0"));
  storage.end();

  mqttReconnectTimer = xTimerCreate("mqttTimer", pdMS_TO_TICKS(5000), pdFALSE, (void*)0, reinterpret_cast<TimerCallbackFunction_t>(connectToMqtt));
  //wifiReconnectTimer = xTimerCreate("wifiTimer", pdMS_TO_TICKS(2000), pdFALSE, (void*)0, reinterpret_cast<TimerCallbackFunction_t>(connectToWifi));
  publishTimer = xTimerCreate("publishTimer", pdMS_TO_TICKS(1000), pdFALSE, (void*)0, reinterpret_cast<TimerCallbackFunction_t>(publicarValores));
  xTimerStop(publishTimer, 0);

  WiFi.onEvent(WiFiEvent);

  mqttClient.onConnect(onMqttConnect);
  mqttClient.onDisconnect(onMqttDisconnect);
  mqttClient.onSubscribe(onMqttSubscribe);
  mqttClient.onUnsubscribe(onMqttUnsubscribe);
  mqttClient.onMessage(onMqttMessage);

  if (MQTT_HOST != IPAddress(0, 0, 0, 0)) {

    mqttClient.setServer(MQTT_HOST, MQTT_PORT);

  }

  mqttClient.setKeepAlive(10); // Keep alive de 10 segundos (por defecto son 15 seg)

  // Configuración del testamento
  mqttClient.setWill(omcIDtopic, 2, true, "DESCONECTADO");
  //  Serial.print("Topico LWT: ");
  //  Serial.println(omcIDtopic);

  xTimerReset(publishTimer, 0);
}
