#include "qroma-lights-config.h"
#include "boards/qroma-boards.h"
#include "ws2812fx/ws2812fx_utils.h"
#include <qroma/util/fs.h>
#include "qroma-strip-handler.h"
#include <qroma/qroma.h>


const char * DEFAULT_NAME_FOR_QROMA_LIGHTS_DEVICE = "Qroma Lights";
const char * DEFAULT_NAME_FOR_QROMA_STRIP_1 = "Qroma Strip 1";
const char * DEFAULT_NAME_FOR_QROMA_STRIP_2 = "Qroma Strip 2";

const char * QROMA_LIGHTS_CONFIG_FILE_NAME = "/qroma-lights.config";

QromaLightsDeviceConfig _qromaLightsDeviceConfig;



QromaLightsDeviceConfig * getQromaLightsDeviceConfig() {
  return &_qromaLightsDeviceConfig;
}


void populateQromaLightsConfig() {
  if (hasQromaLightsConfigFile()) {
    if (populateQromaLightsConfigFromFile(&_qromaLightsDeviceConfig)) {
      return;
    }
  }

  populateWithDefaultQromaLightsConfig(&_qromaLightsDeviceConfig);
  saveQromaLightsConfig(&_qromaLightsDeviceConfig);
}


void populateWithDefaultQromaLightsConfig(QromaLightsDeviceConfig * config) {
  strncpy(config->deviceName, DEFAULT_NAME_FOR_QROMA_LIGHTS_DEVICE, sizeof(config->deviceName));

  strncpy(config->qromaStrip1Config.name, DEFAULT_NAME_FOR_QROMA_STRIP_1, sizeof(config->qromaStrip1Config.name));
  strncpy(config->qromaStrip2Config.name, DEFAULT_NAME_FOR_QROMA_STRIP_2, sizeof(config->qromaStrip2Config.name));

  config->qromaStrip1Config.brightness = 30;
  config->qromaStrip2Config.brightness = 30;

  populateWithBoardSpecificDefaultQromaLightsDeviceConfig(config);

  populateWithQromaStripDefaultAnimation_Ws2812FX(&(config->qromaStrip1Config.animation));
  populateWithQromaStripDefaultAnimation_Ws2812FX(&(config->qromaStrip2Config.animation));

  config->has_qromaStrip1Config = true;
  config->qromaStrip1Config.has_ioSettings = true;

  config->has_qromaStrip2Config = true;
  config->qromaStrip2Config.has_ioSettings = true;
}


bool saveQromaLightsConfig(QromaLightsDeviceConfig * config) {
  logInfo("SAVING QROMA LIGHTS CONFIG");

  bool saved = savePbToPersistence<QromaLightsDeviceConfig>(config, QROMA_LIGHTS_CONFIG_FILE_NAME, QromaLightsDeviceConfig_fields);

  if (!saved) {
    logError("ERROR SAVING QROMA LIGHTS CONFIG");
    logError(QROMA_LIGHTS_CONFIG_FILE_NAME);
  }

  logInfo("DONE SAVING QROMA LIGHTS CONFIG");
  logInfo(QROMA_LIGHTS_CONFIG_FILE_NAME);

  return saved;
}


bool saveCurrentQromaLightsConfig() {
  logInfo("SAVING CURRENT QROMA LIGHTS CONFIG");
  QromaLightsDeviceConfig config;
  
  populateConfigFromQromaLights(&config);
  return saveQromaLightsConfig(&config);
}


bool hasQromaLightsConfigFile() {
  return doesFileExist(QROMA_LIGHTS_CONFIG_FILE_NAME);
}


bool populateQromaLightsConfigFromFile(QromaLightsDeviceConfig * config) {
  bool success = loadPbFromPersistence(config, QROMA_LIGHTS_CONFIG_FILE_NAME, QromaLightsDeviceConfig_fields);
  if (!success) {
    logError("ERROR LOADING QROMA LIGHTS CONFIG");
    logError(QROMA_LIGHTS_CONFIG_FILE_NAME);
  }

  return success;
}


void populateStripConfigFromLights(QromaStripConfig * stripConfig, QromaStripDriverWs2812Fx * lights) {
  strncpy(stripConfig->name, lights->getName(), sizeof(stripConfig->name));
  stripConfig->brightness = lights->getBrightness();

  lights->populateQromaStripIoSettings(&(stripConfig->ioSettings));
  stripConfig->has_ioSettings = true;

  lights->populateQromaStripStartupAnimation(&(stripConfig->animation));
  stripConfig->has_animation = true;
}


void populateConfigFromQromaLights(QromaLightsDeviceConfig * config) {
  strncpy(config->deviceName, _qromaLightsDeviceConfig.deviceName, sizeof(config->deviceName));
  
  QromaStripDriverWs2812Fx * lights1 = getLightsForStripIndex(QromaStrip_WS2812FX_StripIndex_QSSI_STRIP_01);
  QromaStripDriverWs2812Fx * lights2 = getLightsForStripIndex(QromaStrip_WS2812FX_StripIndex_QSSI_STRIP_02);

  config->has_qromaStrip1Config = true;
  populateStripConfigFromLights(&(config->qromaStrip1Config), lights1);

  config->has_qromaStrip2Config = true;
  populateStripConfigFromLights(&(config->qromaStrip2Config), lights2);
}


void setQromaLightsDeviceName(const char * name) {
  strncpy(_qromaLightsDeviceConfig.deviceName, name, sizeof(_qromaLightsDeviceConfig.deviceName));
}
