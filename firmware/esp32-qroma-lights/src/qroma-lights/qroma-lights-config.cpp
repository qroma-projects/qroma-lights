#include "qroma-lights-config.h"
#include "boards/qroma-boards.h"
#include "ws2812fx/ws2812fx_utils.h"
#include <qroma/util/fs.h>
#include "qroma-strip-handler.h"
#include <qroma/qroma.h>


const char * DEFAULT_NAME_FOR_QROMA_LIGHTS_DEVICE = "Qroma Lights";
const char * DEFAULT_NAME_FOR_QROMA_STRIP_1 = "Qroma Strip 1";
const char * DEFAULT_NAME_FOR_QROMA_STRIP_2 = "Qroma Strip 2";

const char * QROMA_CONFIG_FILE_NAME = "/config.qroma";

QromaLightsDeviceConfig _qromaLightsDeviceConfig;



void populateQromaLightsConfig(QromaLightsDeviceConfig * config) {
  if (hasQromaLightsConfigFile()) {
    if (populateQromaLightsConfigFromFile(config)) {
      return;
    }
  }

  populateWithDefaultQromaLightsConfig(config);
}


void populateWithDefaultQromaLightsConfig(QromaLightsDeviceConfig * config) {
  strncpy(config->deviceName, DEFAULT_NAME_FOR_QROMA_LIGHTS_DEVICE, sizeof(config->deviceName));

  strncpy(config->qromaStrip1Config.name, DEFAULT_NAME_FOR_QROMA_STRIP_1, sizeof(config->qromaStrip1Config.name));
  strncpy(config->qromaStrip2Config.name, DEFAULT_NAME_FOR_QROMA_STRIP_2, sizeof(config->qromaStrip2Config.name));

  populateWithBoardSpecificDefaultQromaLightsDeviceConfig(config);

  // doInitializeQromaStripDefaultSegmentsDefinition_Ws2812FX(&(config->qromaStrip1Config.segmentsDefinition));
  // doInitializeQromaStripDefaultSegmentsDefinition_Ws2812FX(&(config->qromaStrip2Config.segmentsDefinition));

  // doInitializeQromaStripDefaultStartupAnimations_Ws2812FX(&(config->qromaStrip1Config.startupAnimations), 
  //   config->qromaStrip1Config.segmentsDefinition.maxNumSegments);
  // doInitializeQromaStripDefaultStartupAnimations_Ws2812FX(&(config->qromaStrip2Config.startupAnimations), 
  //   config->qromaStrip2Config.segmentsDefinition.maxNumSegments);

  config->has_qromaStrip1Config = true;
  config->qromaStrip1Config.has_ioSettings = true;
  // config->qromaStrip1Config.has_segmentsDefinition = true;

  config->has_qromaStrip2Config = true;
  config->qromaStrip2Config.has_ioSettings = true;
  // config->qromaStrip2Config.has_segmentsDefinition = true;
}


bool saveQromaLightsConfig() {
  logInfo("SAVING QROMA LIGHTS CONFIG");
  QromaLightsDeviceConfig config;
  
  populateConfigFromQromaLights(&config);

  bool saved = savePbToPersistence<QromaLightsDeviceConfig>(&config, QROMA_CONFIG_FILE_NAME, QromaLightsDeviceConfig_fields);

  if (!saved) {
    logError("ERROR SAVING QROMA LIGHTS CONFIG");
    logError(QROMA_CONFIG_FILE_NAME);
  }

  logInfo("DONE SAVING QROMA LIGHTS CONFIG");

  return saved;
}


// bool saveQromaLightsStartupAnimations() {
//   logInfo("SAVING QROMA LIGHTS ANIMATIONS");
//   QromaStripStartupAnimation config;
  
//   populateConfigFromQromaLights(&config);

//   bool saved = savePbToPersistence<QromaLightsConfig>(&config, QROMA_CONFIG_FILE_NAME, QromaLightsConfig_fields);

//   if (!saved) {
//     logError("ERROR SAVING QROMA LIGHTS CONFIG");
//     logError(QROMA_CONFIG_FILE_NAME);
//   }

//   logInfo("DONE SAVING QROMA LIGHTS CONFIG");

//   return saved;
// }


bool hasQromaLightsConfigFile() {
  return doesFileExist(QROMA_CONFIG_FILE_NAME);
}


bool populateQromaLightsConfigFromFile(QromaLightsDeviceConfig * config) {
  bool success = loadPbFromPersistence(config, QROMA_CONFIG_FILE_NAME, QromaLightsDeviceConfig_fields);
  if (!success) {
    logError("ERROR LOADING QROMA LIGHTS CONFIG");
    logError(QROMA_CONFIG_FILE_NAME);
  }

  return success;
}


void populateStripConfigFromLights(QromaStripConfig * stripConfig, QromaStripDriverWs2812Fx * lights) {
  strncpy(stripConfig->name, lights->getName(), sizeof(stripConfig->name));

  lights->populateQromaStripIoSettings(&(stripConfig->ioSettings));
  stripConfig->has_ioSettings = true;

  // lights->populateQromaStripSegmentsDefinition(&(stripConfig->segmentsDefinition));
  // stripConfig->has_segmentsDefinition = true;

  // lights->populateQromaStripStartupAnimations(&(stripConfig->startupAnimations));
  // stripConfig->has_startupAnimations = true;
}


void populateConfigFromQromaLights(QromaLightsDeviceConfig * config) {
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
