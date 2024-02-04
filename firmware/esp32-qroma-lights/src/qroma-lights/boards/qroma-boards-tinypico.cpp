#ifdef QROMA_BOARD_DEF_TINYPICO_ESP32

#ifndef QBD_TINYPICO_ESP32
#define QBD_TINYPICO_ESP32

#include <TinyPICO.h>
#include "qroma-boards.h"
#include "../ws2812fx/qroma_init_settings.h"


// Initialise the TinyPICO library
TinyPICO tp = TinyPICO();


void setOnboardLightColor(int r, int g, int b) {
  tp.DotStar_SetPixelColor(r, g, b);
}

void onInit() {
  setOnboardLightColor(0, 60, 100);
}

const char * getBoardName() {
  return "UM TinyPICO Firmware";
}


void handleSetBoardLightColorRequest(SetBoardLightColorRequest * request, SetBoardLightColorResponse * response) {
  response->success = true;
  strncpy(response->message, "", sizeof(response->message));
  setOnboardLightColor(request->red, request->green, request->blue);
}

void populateWithBoardSpecificDefaultQromaLightsDeviceConfig(QromaLightsDeviceConfig * config)
{
  config->qromaStrip1Config.ioSettings.ledCount = QS_1_LED_COUNT;
  config->qromaStrip1Config.ioSettings.pin = 14;
  config->qromaStrip1Config.ioSettings.neoPixelRgbOrder = QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_GRB;
  config->qromaStrip1Config.ioSettings.neoPixelTxRate = QromaStrip_WS2812FX_NeoPixelTxRate_QSNPTR_800_KHZ;

  config->qromaStrip2Config.ioSettings.ledCount = QS_1_LED_COUNT;
  config->qromaStrip2Config.ioSettings.pin = 15;
  config->qromaStrip2Config.ioSettings.neoPixelRgbOrder = QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_GRB;
  config->qromaStrip2Config.ioSettings.neoPixelTxRate = QromaStrip_WS2812FX_NeoPixelTxRate_QSNPTR_800_KHZ;
}

#endif

#endif