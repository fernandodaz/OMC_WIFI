#include "OMC_WIFI_mqtt.hpp"

//Funciones necesarias para configurar el cliente MQTT
//void connectToWifi() {
//  Serial.println();
//  Serial.println("Connecting to Wi-Fi...");
//  WiFi.begin(WIFI_SSID, WIFI_PASSWORD);
//}

void connectToMqtt() {
  Serial.println();
  Serial.println("Connecting to MQTT...");
  mqttClient.connect();
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

  connServer = true;

  Serial.println();
  Serial.println("Connected to MQTT.");
  Serial.print("Session present: ");
  Serial.println(sessionPresent);

  uint16_t packetIdSub = mqttClient.subscribe("esp32/estadoRelay", 0);
  Serial.println();
  Serial.print("Suscrito a esp32/estadoRelay con QoS 0. Packet ID: ");
  Serial.println(packetIdSub);

  packetIdSub = mqttClient.subscribe("esp32/controlRelay", 0);
  Serial.println();
  Serial.print("Suscrito a esp32/controlRelay con QoS 1. Packet ID: ");
  Serial.println(packetIdSub);

  mqttClient.publish("esp32/controlRelay", 0, true, "1");

  packetIdSub = mqttClient.subscribe("esp32/volt", 0);
  Serial.println();
  Serial.print("Suscrito a esp32/volt con QoS 0. Packet ID: ");
  Serial.println(packetIdSub);

  packetIdSub = mqttClient.subscribe("esp32/corr", 0);
  Serial.println();
  Serial.print("Suscrito a esp32/corr con QoS 0. Packet ID: ");
  Serial.println(packetIdSub);
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
  //Serial.println();
  //Serial.println("Se ha enviado/recibido un mensaje MQTT");
  //Serial.println("Topic: " + String(topic));
  //Serial.println("Payload: " + String(payload));

  if (String(topic) == "esp32/controlRelay") {

    Serial.println();
    Serial.println(payload);
    Serial.println();
    if (controlGlobalRelay == false) {
      controlGlobalRelay = true;
      Serial.println("Cambio a habilitado");
      Serial.println();
      Serial.println(controlGlobalRelay);
    }
    else if (controlGlobalRelay == true) {
      controlGlobalRelay = false;
      Serial.println("Cambio a deshabilitado");
      Serial.println();
      Serial.println(controlGlobalRelay);

    }
  }
}

void onMqttPublish(uint16_t packetId) {
  //Serial.println();
  //Serial.println("Publish acknowledged.");
  //Serial.print("  packetId: ");
  //Serial.println(packetId);
}

void publicarValores() {

  mqttClient.publish("esp32/volt", 0, true, String(rmsVolt).c_str());
  mqttClient.publish("esp32/corr", 0, true, String(rmsCorr).c_str());
  //mqttClient.publish("esp32/corr", 0, true, "0");
  Serial.println();
  Serial.print("V RMS = ");
  Serial.println(rmsVolt);
  Serial.print("C RMS = ");
  Serial.println(rmsCorr);
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
  mqttClient.onPublish(onMqttPublish);

  if (MQTT_HOST != IPAddress(0, 0, 0, 0)) {

    mqttClient.setServer(MQTT_HOST, MQTT_PORT);

  }

  //  connectToWifi();
  xTimerReset(publishTimer, 0);
}
