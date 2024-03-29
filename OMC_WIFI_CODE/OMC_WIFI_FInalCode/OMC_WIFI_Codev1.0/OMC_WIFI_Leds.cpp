#include "OMC_WIFI_Leds.hpp"


void ledSetUp(){

  ledcSetup(greenChannel, 1000, 8);
  ledcAttachPin(greenLed, greenChannel);

  ledcSetup(redChannel, 1000, 8);
  ledcAttachPin(redLed, redChannel);
}

void greenLedTask(void *greenLedParameter) {

  wifi_mode_t esp_mode;

  Serial.println("Green Led Task created");

  while (true) {

    esp_wifi_get_mode(&esp_mode);

    if ((esp_mode == WIFI_MODE_APSTA) and WiFi.isConnected()) {

      ledcWrite(greenChannel, 255);
      vTaskDelay(200 / portTICK_PERIOD_MS);

      ledcWrite(greenChannel, 0);
      vTaskDelay(200 / portTICK_PERIOD_MS);

      ledcWrite(greenChannel, 255);
      vTaskDelay(200 / portTICK_PERIOD_MS);

      ledcWrite(greenChannel, 0);
      vTaskDelay(1000 / portTICK_PERIOD_MS);

    }
    else {

      if (connServer) {

        ledcWrite(greenChannel, 255);
        vTaskDelay(200 / portTICK_PERIOD_MS);

      }
      else if (WiFi.isConnected() and !connServer) {

        //ledcSetup(greenChannel, 1, 8);
        ledcWrite(greenChannel, 255);
        vTaskDelay(1000 / portTICK_PERIOD_MS);

        ledcWrite(greenChannel, 0);
        vTaskDelay(1000 / portTICK_PERIOD_MS);


      }
      else if (!WiFi.isConnected()) {

        for (int dutyCycle = 0; dutyCycle <= 128; dutyCycle++) {
          // changing the LED brightness with PWM
          ledcWrite(greenChannel, dutyCycle);
          vTaskDelay(10 / portTICK_PERIOD_MS);
        }

        // decrease the LED brightness
        for (int dutyCycle = 128; dutyCycle >= 0; dutyCycle--) {
          // changing the LED brightness with PWM
          ledcWrite(greenChannel, dutyCycle);
          vTaskDelay(10 / portTICK_PERIOD_MS);
        }

      }

    }


  }

}


void redLedTask(void *redLedParameter) {

  Serial.println("Red Led Task created");

  while (true) {
  
    if (!controlGlobalRelay) {

      ledcWrite(redChannel, 255);
      vTaskDelay(200 / portTICK_PERIOD_MS);

    }
    else if (xTimerIsTimerActive(timerRecuperacion) != pdFALSE) {

      for (int dutyCycle = 0; dutyCycle <= 255; dutyCycle++) {
        // changing the LED brightness with PWM
        ledcWrite(redChannel, dutyCycle);
        vTaskDelay(10 / portTICK_PERIOD_MS);
      }

      // decrease the LED brightness
      for (int dutyCycle = 255; dutyCycle >= 0; dutyCycle--) {
        // changing the LED brightness with PWM
        ledcWrite(redChannel, dutyCycle);
        vTaskDelay(10 / portTICK_PERIOD_MS);
      }

    }
    else if (rmsCorr > 0.9 * corrSup) {

      //ledcSetup(greenChannel, 1, 8);
      ledcWrite(redChannel, 255);
      vTaskDelay(200 / portTICK_PERIOD_MS);

      ledcWrite(redChannel, 0);
      vTaskDelay(200 / portTICK_PERIOD_MS);

    }
    else if (rmsVolt > voltSup) {

      ledcWrite(redChannel, 255);
      vTaskDelay(200 / portTICK_PERIOD_MS);

      ledcWrite(redChannel, 0);
      vTaskDelay(200 / portTICK_PERIOD_MS);

      ledcWrite(redChannel, 255);
      vTaskDelay(200 / portTICK_PERIOD_MS);

      ledcWrite(redChannel, 0);
      vTaskDelay(1000 / portTICK_PERIOD_MS);

    }
    else if (rmsVolt < voltInf) {

      //ledcSetup(greenChannel, 1, 8);
      ledcWrite(redChannel, 255);
      vTaskDelay(1000 / portTICK_PERIOD_MS);

      ledcWrite(redChannel, 0);
      vTaskDelay(1000 / portTICK_PERIOD_MS);

    }
    else{

      ledcWrite(redChannel, 0);
      vTaskDelay(200 / portTICK_PERIOD_MS);
      
    }

  }

}
