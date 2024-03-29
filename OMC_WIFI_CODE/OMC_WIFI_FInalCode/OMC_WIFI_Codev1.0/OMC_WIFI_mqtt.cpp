#include "OMC_WIFI_mqtt.hpp"

int    numberID = 0;

String omcState   = "omc/00/estado";
String omcChanges = "omc/00/cambios";


void connectToMqtt() {

  Serial.println();
  Serial.println("Connecting to MQTT...");
  mqttClient.disconnect();
  mqttClient.connect();
  Serial.println("Server IP: " + MQTT_HOST.toString());

}


void WiFiEvent(WiFiEvent_t event) {

  Serial.println();
  Serial.printf("[WiFi-event] event: %d\n", event);

  switch (event) {

    case SYSTEM_EVENT_STA_GOT_IP:
      Serial.println("WiFi connected");
      Serial.println("IP address: ");
      Serial.println(WiFi.localIP());
      connectToMqtt();
      break;

    case SYSTEM_EVENT_STA_DISCONNECTED:
      Serial.println("WiFi lost connection");
      xTimerStop(mqttReconnectTimer, 0); // ensure we don't reconnect to MQTT while reconnecting to Wi-Fi
      //xTimerStart(wifiReconnectTimer, 0);
      break;

  }
}


void onMqttConnect(bool sessionPresent) {

  //  char petition[6];

  connServer = true;

  Serial.println();
  Serial.println("Connected to MQTT.");
  Serial.print("Session present: ");
  Serial.println(sessionPresent);

  //  uint16_t packetIdSub = mqttClient.subscribe("omc/01/estado", 0);
  //  Serial.println();
  //  Serial.print("Suscrito a omc/01/estado con QoS 0. Packet ID: ");
  //  Serial.println(packetIdSub);

  uint16_t packetIdSub = mqttClient.subscribe("omc/respuesta", 2);
  Serial.println();
  Serial.print("Suscrito a omc/respuesta con QoS 2. Packet ID: ");
  Serial.println(packetIdSub);


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

  Serial.println();
  Serial.println("Disconnected from MQTT.");

  if (WiFi.isConnected()) {

    xTimerStart(mqttReconnectTimer, 0);

  }

}

void onMqttSubscribe(uint16_t packetId, uint8_t qos) {
  Serial.println();
  Serial.println("Subscribe acknowledged.");
  Serial.print("  packetId: ");
  Serial.println(packetId);
  Serial.print("  qos: ");
  Serial.println(qos);
}

void onMqttUnsubscribe(uint16_t packetId) {
  Serial.println();
  Serial.println("Unsubscribe acknowledged.");
  Serial.print("  packetId: ");
  Serial.println(packetId);
}

void onMqttMessage(char* topic, char* payload, AsyncMqttClientMessageProperties properties, size_t len, size_t index, size_t total) {

  char* message = payload;
  String rate   = String(message[2]) + String(message[3]);

  if (String(topic) == omcChanges) {

    if ((message[0] + message[1]) == ('m' + 'r')) {

      controlGlobalRelay = !controlGlobalRelay;

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
    //    else if ((message[0] + message[1]) == ('e' + 'n')) {
    //
    //      pzem.resetEnergy();
    //
    //    }
    else if ((message[0] + message[1]) == ('r' + 'e')) {

      Serial.println("Rebooting OMC-WIFI in 5 seconds...");
      vTaskDelay(5000 / portTICK_PERIOD_MS);
      ESP.restart();

    }

  }
  else if (String(topic) == "omc/respuesta") {

    //    String _omcID = "";
    char _omcID[4];

    for (int i = 0; i < 6; i++) {

      _omcID[i] = message[i];
      //      _omcID = _omcID + String(message[i]);

    }


    if (String(_omcID) == omcID) {

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
          numberID = 99;
          break;

      }

      if (numberID < 10) {

        omcState   = "omc/0" + String(numberID) + "/estado";
        omcChanges = "omc/0" + String(numberID) + "/cambios";
        Serial.println("Soy el OMC0" + String(numberID));

      }
      else {

        omcState   = "omc/" + String(numberID) + "/estado";
        omcChanges = "omc/" + String(numberID) + "/cambios";
        Serial.println("Soy el OMC" + String(numberID));

      }

      uint16_t packetIdSub = mqttClient.subscribe(omcChanges.c_str(), 2);
      Serial.println();
      Serial.print("Suscrito a " + omcChanges + " con QoS 2. Packet ID: ");
      Serial.println(packetIdSub);

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

  char   petition[7];
  char   state[60];
  int    _voltMode;
  String _corrSup;



  if (numberID == 0) {

    xTimerChangePeriod(publishTimer, 15000 / portTICK_PERIOD_MS, 0);

    snprintf(petition, 7, "%s", omcID);
    mqttClient.publish("omc/peticion", 2, true, petition);
    Serial.println("Petición enviada");

  }
  else if (numberID == 99) {

    xTimerStop(publishTimer, 0);
    Serial.println("Solicitud rechazada");

  }
  else {

    xTimerChangePeriod(publishTimer, 1000 / portTICK_PERIOD_MS, 0);

    switch (voltMode) {

      case 120:
        _voltMode = 1;
        break;

      case 220:
        _voltMode = 2;
        break;

    }

    switch (corrSup) {

      case 10:
        _corrSup = "10";
        break;

      default:
        _corrSup = "0" + String(corrSup);
        break;

    }

    snprintf(state, 60, "vo%d.%d,co%d.%d,po%d.%d,fp%d.%d,en%d.%d,es%d,mr%d,mv0%d,lc%s"
             , (int)rmsVolt
             , (int)(((rmsVolt - (int)rmsVolt)*pow(10, 2)) + 0.01)
             , (int)rmsCorr
             , (int)(((rmsCorr - (int)rmsCorr)*pow(10, 2)) + 0.01)
             , (int)(rmsVolt * rmsCorr)
             , (int)((((rmsVolt * rmsCorr) - (int)(rmsVolt * rmsCorr))*pow(10, 2)) + 0.01)
             //, (int)powFactor
             //, (int)(((powFactor-(int)powFactor)*pow(10,2))+0.01)
             , 0
             , 75
             //, (int)energy
             //, (int)(((energy-(int)energy)*pow(10,2))+0.01)
             , 0
             , 0
             , relay
             , controlGlobalRelay
             , _voltMode
             , _corrSup

            );


    mqttClient.publish(omcState.c_str(), 0, true, state);

  }

  xTimerReset(publishTimer, 0);

}

void mqttSetUp() {

  storage.begin("config", true);                                          //Se apertura el espacio en memoria flash denominado "storage" para leer y escribir (false)
  MQTT_HOST.fromString(storage.getString("server_ip", "0.0.0.0"));
  storage.end();

  mqttReconnectTimer = xTimerCreate("mqttTimer", pdMS_TO_TICKS(2000), pdFALSE, (void*)0, reinterpret_cast<TimerCallbackFunction_t>(connectToMqtt));
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

  xTimerReset(publishTimer, 0);
}
