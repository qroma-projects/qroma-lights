#include "qroma-strip-handler.h"
#include "qroma/qroma.h"
#include "ws2812fx/QromaStripDriverWs2812Fx.h"
#include "qroma-lights-config.h"
#include "qroma-lights-handler.h"


QromaStripDriverWs2812Fx _qromaLights1;
QromaStripDriverWs2812Fx _qromaLights2;


void initQromaLightsFromConfig(QromaLightsDeviceConfig * config) {
  _qromaLights1.startup(&(config->qromaStrip1Config));
  _qromaLights2.startup(&(config->qromaStrip2Config));
}


void tickQromaLights() {
  _qromaLights1.tick();
  _qromaLights2.tick();
}


QromaStripDriverWs2812Fx * getLightsForStripIndex(QromaStrip_WS2812FX_StripIndex stripIndex) {
  switch (stripIndex) {
    case QromaStrip_WS2812FX_StripIndex_QSSI_STRIP_01:
      return &_qromaLights1;
    case QromaStrip_WS2812FX_StripIndex_QSSI_STRIP_02:
      return &_qromaLights2;
    default:
      logInfo("UNRECOGNIZED STRIP INDEX");
      logInfo(stripIndex);
  }

  return NULL;
}


void handleQromaStripCommand(QromaStrip_WS2812FX_StripIndex stripIndex, QromaStripCommand * message, QromaLightsResponse * response) {
  QromaStripDriverWs2812Fx * lights = NULL;

  switch (message->which_command) {
    case QromaStripCommand_setQromaStripAnimation_tag:
      logInfo("HANDLING setQromaStripAnimation_tag");
      lights = getLightsForStripIndex(stripIndex);
      lights->applyQromaStripAnimation(&(message->command.setQromaStripAnimation));
      setQromaLightsDeviceConfigUpdatedResponse(response, "New animation");
      break;
    case QromaStripCommand_setQromaStripBrightness_tag:
      logInfo("HANDLING QromaStripCommand_setQromaStripBrightness_tag");
      lights = getLightsForStripIndex(stripIndex);
      lights->applyQromaStripBrightness(message->command.setQromaStripBrightness);
      setQromaLightsDeviceConfigUpdatedResponse(response, "New brightness: ", message->command.setQromaStripBrightness);
      break;
    case QromaStripCommand_setQromaStripName_tag:
      logInfo("HANDLING QromaStripCommand_setQromaStripName_tag");
      lights = getLightsForStripIndex(stripIndex);
      lights->applyQromaStripName(message->command.setQromaStripName);
      setQromaLightsDeviceConfigUpdatedResponse(response, "New name: ", message->command.setQromaStripName);
      break;
    case QromaStripCommand_setQromaStripIoSettings_tag:
      logInfo("HANDLING setQromaStripIoSettings_tag");
      lights = getLightsForStripIndex(stripIndex);
      lights->applyQromaStripIoSettings(&(message->command.setQromaStripIoSettings));
      setQromaLightsDeviceConfigUpdatedResponse(response, "New IO settings");
      saveCurrentQromaLightsConfig();
      break;
    default:
      logError("Unrecognized WS2812Fx driver command");
      logError(message->which_command);
      break;
  }
}
