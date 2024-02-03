#include "QromaStripDriverWs2812Fx.h"
#include "ws2812fx_utils.h"
#include <qroma/qroma.h>
#include <qroma-proto/my-project-messages.pb.h>
#include <qroma-proto/qroma-lights-types.pb.h>


// QromaPointDriverWs2812Fx::QromaPointDriverWs2812Fx(QromaPointDetails * qpDetails) {
//   strncpy( _manifest.pointName, qpDetails->pointName, sizeof( _manifest.pointName));
//   strncpy( _manifest.instanceId, qpDetails->instanceId, sizeof( _manifest.instanceId));
//   strncpy( _manifest.driverId, "qroma-ws2812fx", sizeof( _manifest.driverId));
// }

// QromaStripDriverWs2812Fx::QromaStripDriverWs2812Fx(QromaStripConfig * config) {

// }


void QromaStripDriverWs2812Fx::startup(QromaStripConfig * config) {
  memcpy(&(_config), config, sizeof(QromaStripConfig));

  QromaStrip_WS2812FX_IoSettings * qsio = &(_config.ioSettings);
  // QromaStrip_WS2812FX_LedsConfig * stripConfig = &(_config.ledsConfig);
  // QromaStrip_WS2812FX_LedsConfig * stripConfig = &(_config.ledsConfig);
  // QromaStrip_WS2812FX_SegmentsDefinition * segmentsDefinition = &(_config.segmentsDefinition);
  // QromaStrip_WS2812FX_StartupAnimations * startupAnimations = &(_config.startupAnimations);

  // logInfo("LED STARTUP SEGMENTS");
  // logInfo(segmentsDefinition->numSegments);
  // logInfo("MAX LED STARTUP SEGMENTS");
  // logInfo(segmentsDefinition->maxNumSegments);

  neoPixelType npt = mapRgbOrderAndTxRateToNeoPixelType(qsio->neoPixelRgbOrder, qsio->neoPixelTxRate);

  logInfo("INITIALIZING LED");
  logInfo(qsio->ledCount);
  logInfo(qsio->pin);
  logInfo(npt);
  // _ws2812fx = new WS2812FX(qsio->ledCount, qsio->pin, npt, segmentsDefinition->maxNumSegments);
  _ws2812fx = new WS2812FX(qsio->ledCount, qsio->pin, npt, 1);
  _ws2812fx->init();
  _ws2812fx->setBrightness(config->brightness);

  uint32_t colors[COLOR_COUNT];

  // for (int i=0; i < segmentsDefinition->numSegments; i++) {
  //   QromaStrip_WS2812FX_Segment * segment = &(segmentsDefinition->segments[i]);
    
  //   QromaStrip_WS2812FX_Animation * segmentAnimation = &(startupAnimations->segmentAnimations[i]);

  //   colors[0] = convertQromaStripColorToUint(&(segmentAnimation->color1));
  //   colors[1] = convertQromaStripColorToUint(&(segmentAnimation->color2));
  //   colors[2] = convertQromaStripColorToUint(&(segmentAnimation->color3));

  //   uint8_t options = calculateQromaStripAnimationOptions(segmentAnimation);

  //   _ws2812fx->setSegment(
  //     i, 
  //     segment->startIndex,
  //     segment->endIndex,
  //     segmentAnimation->pattern, 
  //     colors,
  //     segmentAnimation->speed,
  //     options
  //     );
  // }

  // QromaStrip_WS2812FX_SegmentsDefinition * segmentsDefinition = &(_config.segmentsDefinition);
  // QromaStrip_WS2812FX_Segment * segment = &(segmentsDefinition->segments[i]);
  // QromaStrip_WS2812FX_StartupAnimations * startupAnimations = &(_config.animation);
  QromaStrip_WS2812FX_Animation * startupAnimation = &(_config.animation);
  
  // QromaStrip_WS2812FX_Animation * segmentAnimation = &(startupAnimations->segmentAnimations[i]);

  colors[0] = convertQromaStripColorToUint(&(startupAnimation->color1));
  colors[1] = convertQromaStripColorToUint(&(startupAnimation->color2));
  colors[2] = convertQromaStripColorToUint(&(startupAnimation->color3));

  uint8_t options = calculateQromaStripAnimationOptions(startupAnimation);

  _ws2812fx->setSegment(
    0, 
    0,
    qsio->ledCount - 1,
    startupAnimation->pattern, 
    colors,
    startupAnimation->speed,
    options
    );

  _ws2812fx->start();
}


// void QromaPointDriverWs2812Fx::startup() {

//   QfsPath qfsPath;
//   initQfsPath(&qfsPath);
//   getLocationForQromaPointFile(_manifest.instanceId, STARTUP_FILE_NAME, &qfsPath);

//   pb_byte_t qpConfigBytes[MAX_STARTUP_FILE_SIZE];
//   memset(qpConfigBytes, 0, sizeof qpConfigBytes);

//   int qpConfigBytesSize = loadDataFromPersistence(qfsPath.qfsPath, qpConfigBytes, sizeof(qpConfigBytes));

//   logInfo("STARTING QROMA POINT QromaPointDriverWs2812Fx");
//   logInfo(qpConfigBytesSize);

//   pb_istream_t stream = pb_istream_from_buffer(qpConfigBytes, qpConfigBytesSize);
//   bool decoded = pb_decode(&stream, WS2812FX_Config_fields, &_config);
//   if (!decoded) {
//     logError("UNABLE TO START QromaPointDriverWs2812Fx");
//     logError(qpConfigBytesSize);
//     return;
//   }

//   QromaPoint_WS2812FX_IoSettings * qsio = &(_config.ioSettings);
//   QromaStrip_WS2812FX_LedsConfig * stripConfig = &(_config.leds);
//   logInfo("LED STARTUP SEGMENTS");
//   logInfo(stripConfig->numSegments);
//   logInfo("MAX LED STARTUP SEGMENTS");
//   logInfo(stripConfig->maxNumSegments);

//   neoPixelType npt = mapRgbOrderAndTxRateToNeoPixelType(qsio->neoPixelRgbOrder, qsio->neoPixelTxRate);

//   _ws2812fx = new WS2812FX(qsio->ledCount, qsio->pin, npt, stripConfig->maxNumSegments);
//   _ws2812fx->init();

//   uint32_t colors[COLOR_COUNT];

//   for (int i=0; i < stripConfig->numSegments; i++) {
//     QromaStrip_WS2812FX_Segment * cmdSegment = &(stripConfig->segments[i]);
//     QromaStrip_WS2812FX_Animation * qsAnimation = &(stripConfig->segmentAnimations[i]);

//     logInfo("SETTING SEGMENT ANIMATION");
//     logInfo(i);
//     logInfo(qsAnimation->pattern);
    
//     for (int i = 0; i < COLOR_COUNT; i++) {
//       colors[i] = convertColorRgbBytesToUint(qsAnimation->threeSetsOfColorRgbBytes, i);
//     }

//     uint8_t options = calculateQromaStripAnimationOptions(qsAnimation);

//     _ws2812fx->setSegment(
//       i, 
//       cmdSegment->startIndex,
//       cmdSegment->endIndex,
//       qsAnimation->pattern, 
//       colors,
//       qsAnimation->speed,
//       options
//       );
//   }

//   _ws2812fx->start();

//   notifyQpManifest(&_manifest);
//   notifyWs2812FxConfigChanged();
// }


void QromaStripDriverWs2812Fx::populateQromaStripIoSettings(QromaStrip_WS2812FX_IoSettings * settings) {
  memcpy(settings, &(_config.ioSettings), sizeof(QromaStrip_WS2812FX_IoSettings));
}


// void QromaStripDriverWs2812Fx::populateQromaStripLedsConfig(QromaStrip_WS2812FX_LedsConfig * config) {
//   memcpy(config, &(_config.ledsConfig), sizeof(QromaStrip_WS2812FX_LedsConfig));
// }


// void QromaStripDriverWs2812Fx::populateQromaStripSegmentsDefinition(QromaStrip_WS2812FX_SegmentsDefinition * segmentsDefinition) {
//   memcpy(segmentsDefinition, &(_config.segmentsDefinition), sizeof(QromaStrip_WS2812FX_SegmentsDefinition));
// }


// void QromaStripDriverWs2812Fx::populateQromaStripStartupAnimations(QromaStrip_WS2812FX_StartupAnimations * startupAnimations) {
//   memcpy(startupAnimations, &(_config.startupAnimations), sizeof(QromaStrip_WS2812FX_StartupAnimations));
// }


const char * QromaStripDriverWs2812Fx::getName() {
  return _config.name;
}


void QromaStripDriverWs2812Fx::tick() {
  // if (tickData->currentPowerMode != QromaPower_PowerMode_Qpm_WithBattery_LowBatteryVoltage_StopNormalOps) {
    _ws2812fx->service();
  // } else {
  //   _ws2812fx->stop();
  // }
}


void QromaStripDriverWs2812Fx::updateQromaStripBrightness(uint32_t brightness) {
  _ws2812fx->setBrightness(brightness);
  // _config.segmentsDefinition.brightness = cmd->brightness;
  logInfo("UPDATED BRIGHTNESS");
  logInfo(brightness);
  // _ws2812fx->trigger();
  // _ws2812fx->service();

  // _ws2812fx->stop();
  // _ws2812fx->start();
  
  // notifyWs2812FxConfigChanged();
}


void QromaStripDriverWs2812Fx::copyQromaStripAnimation(QromaStrip_WS2812FX_Animation * dest, QromaStrip_WS2812FX_Animation * src) {
  dest->pattern = src->pattern;
  dest->fadeSpeed = src->fadeSpeed;
  dest->reversed = src->reversed;
  dest->size = src->size;
  dest->speed = src->speed;
  dest->useGammaCorrection = src->useGammaCorrection;
  
  memcpy(&(dest->color1), &(src->color1), sizeof(dest->color1));
  memcpy(&(dest->color2), &(src->color2), sizeof(dest->color2));
  memcpy(&(dest->color3), &(src->color3), sizeof(dest->color3));
}


// void QromaStripDriverWs2812Fx::copyQromaStripSegment(QromaStrip_WS2812FX_Segment * dest, QromaStrip_WS2812FX_Segment * src) {
//   dest->startIndex = src->startIndex;
//   dest->endIndex = src->endIndex;
// }


void QromaStripDriverWs2812Fx::updateQromaStripAnimation(QromaStrip_WS2812FX_Animation * animation) {
  logInfo("updateQromaStripAnimation()");
  // logInfo(cmd->segmentIndex);
  logInfo(animation->pattern);

  // applySegmentAnimation(cmd->segmentIndex, &(cmd->animation));
  applyAnimation(animation);

  logInfo("COPYING - copyQromaStripAnimation");
  // copyQromaStripAnimation(&(_config.ledsConfig.segmentAnimations[cmd->segmentIndex]), &(cmd->animation));

  _ws2812fx->trigger();
  // notifyWs2812FxConfigChanged();
}



void QromaStripDriverWs2812Fx::applyAnimation(QromaStrip_WS2812FX_Animation * animation) {
  logInfo("applyAnimation()");
  logInfo(animation->pattern);

  uint32_t colors[COLOR_COUNT];
  // for (int i = 0; i < COLOR_COUNT; i++) {
    // colors[i] = convertColorRgbBytesToUint(animation->threeSetsOfColorRgbBytes, i);
  //   colors[i] = convertQromaStripColorToUint(&(animation->color));
  // }
  colors[0] = convertQromaStripColorToUint(&(animation->color1));
  colors[1] = convertQromaStripColorToUint(&(animation->color2));
  colors[2] = convertQromaStripColorToUint(&(animation->color3));


  uint8_t options = calculateQromaStripAnimationOptions(animation);
  
  WS2812FX::Segment * segment = _ws2812fx->getSegment(0);

  segment->mode = animation->pattern;
  segment->speed = animation->speed;
  for (int i=0; i < COLOR_COUNT; i++) {
    segment->colors[i] = colors[i];
  }
  segment->options = options;

  // logInfo("COPYING - calling copyQromaStripAnimation");
  // copyQromaStripAnimation(&(_config.ledsConfig.segmentAnimations[segmentIndex]), animation);

  // copyQromaStripAnimation(&(_config.ledsConfig.segmentAnimations[segmentIndex]), animation);

  // _ws2812fx->trigger();
  // notifyWs2812FxConfigChanged();
}

// void QromaStripDriverWs2812Fx::applySegmentAnimation(int segmentIndex, QromaStrip_WS2812FX_Animation * animation) {
//   logInfo("updateQromaStripAnimation()");
//   logInfo(segmentIndex);
//   logInfo(animation->pattern);

//   uint32_t colors[COLOR_COUNT];
//   // for (int i = 0; i < COLOR_COUNT; i++) {
//     // colors[i] = convertColorRgbBytesToUint(animation->threeSetsOfColorRgbBytes, i);
//   //   colors[i] = convertQromaStripColorToUint(&(animation->color));
//   // }
//   colors[0] = convertQromaStripColorToUint(&(animation->color1));
//   colors[1] = convertQromaStripColorToUint(&(animation->color2));
//   colors[2] = convertQromaStripColorToUint(&(animation->color3));


//   uint8_t options = calculateQromaStripAnimationOptions(animation);
  
//   WS2812FX::Segment * segment = _ws2812fx->getSegment(segmentIndex);

//   segment->mode = animation->pattern;
//   segment->speed = animation->speed;
//   for (int i=0; i < COLOR_COUNT; i++) {
//     segment->colors[i] = colors[i];
//   }
//   segment->options = options;

//   logInfo("COPYING - copyQromaStripAnimation");
//   // copyQromaStripAnimation(&(_config.ledsConfig.segmentAnimations[segmentIndex]), animation);

//   // _ws2812fx->trigger();
//   // notifyWs2812FxConfigChanged();
// }


// void QromaStripDriverWs2812Fx::updateWs2812FxSegments(int numSegments, 
//   QromaStrip_WS2812FX_Segment * segments, QromaStrip_WS2812FX_Animation * animations) 
// {
//   for (int i=0; i < numSegments; i++) {
//     QromaStrip_WS2812FX_Segment * cmdSegment = &(segments[i]);
//     QromaStrip_WS2812FX_Animation * cmdSegmentAnimation = &(animations[i]);

//     uint32_t colors[COLOR_COUNT];
//     // for (int i = 0; i < COLOR_COUNT; i++) {
//       // colors[i] = convertColorRgbBytesToUint(cmdSegmentAnimation->threeSetsOfColorRgbBytes, i);
//       // colors[i] = convertQromaStripColorToUint(&(cmdSegmentAnimation->color));
//     // }
//     colors[0] = convertQromaStripColorToUint(&(cmdSegmentAnimation->color1));
//     colors[1] = convertQromaStripColorToUint(&(cmdSegmentAnimation->color2));
//     colors[2] = convertQromaStripColorToUint(&(cmdSegmentAnimation->color3));
    
//     uint8_t options = calculateQromaStripAnimationOptions(cmdSegmentAnimation);

//     _ws2812fx->setSegment(
//       i, 
//       cmdSegment->startIndex, 
//       cmdSegment->endIndex,
//       cmdSegmentAnimation->pattern, 
//       colors,
//       cmdSegmentAnimation->speed,
//       options
//       );

//     copyQromaStripSegment(&(_config.segmentsDefinition.segments[i]), cmdSegment);
//     // copyQromaStripAnimation(&(_config.ledsConfig.segmentAnimations[i]), cmdSegmentAnimation);
//   }
// }


// void QromaStripDriverWs2812Fx::updateQromaStripSegments(SetQromaStrip_WS2812FX_Segments * cmd) {

//   if (_config.segmentsDefinition.numSegments != cmd->numSegments) {
//     logInfo("CHANGING NUMBER OF SEGMENTS (OLD/NEW)");
//     logInfo(_config.segmentsDefinition.numSegments);
//     logInfo(cmd->numSegments);
//     _config.segmentsDefinition.numSegments = cmd->numSegments;
    
//     _ws2812fx->resetSegments();
//     _ws2812fx->setNumSegments(cmd->numSegments);
//   }

//   // updateWs2812FxSegments(cmd->numSegments, cmd->segments, cmd->animations);

//   _ws2812fx->trigger();
// }


// void QromaStripDriverWs2812Fx::resetSegmentsForNewLedCount(uint32_t newLedCount) {
//   logInfo("NEW LED COUNT. RESETTING SEGMENTS");
//   logInfo(newLedCount);
//   SetQromaStrip_WS2812FX_Segments segmentsCommand = SetQromaStrip_WS2812FX_Segments();

//   // we will reset everything based on the first segment
//   segmentsCommand.numSegments = 1;
//   segmentsCommand.segments[0].startIndex = 0;
//   segmentsCommand.segments[0].endIndex = newLedCount - 1;
//   // copyQromaStripAnimation(&(segmentsCommand.animations[0]), &(_config.ledsConfig.segmentAnimations[0]));

//   updateQromaStripSegments(&segmentsCommand);
// }


void QromaStripDriverWs2812Fx::updateQromaStripIoSettings(QromaStrip_WS2812FX_IoSettings * cmd) {
  if (cmd->ledCount == _config.ioSettings.ledCount &&
      cmd->pin == _config.ioSettings.pin &&
      cmd->neoPixelRgbOrder == _config.ioSettings.neoPixelRgbOrder &&
      cmd->neoPixelTxRate == _config.ioSettings.neoPixelTxRate) 
  {
    logInfo("NO IO CHANGES");
    return;
  }

  // if (cmd->ledCount != _config.ioSettings.ledCount) {
  //   resetSegmentsForNewLedCount(cmd->ledCount);
  // }

  logInfo("UPDATE LED COUNT -> OLD/NEW");
  logInfo(_config.ioSettings.ledCount);
  logInfo(cmd->ledCount);
  _config.ioSettings.ledCount = cmd->ledCount;

  logInfo("UPDATE PIN NUMBER -> OLD/NEW");
  logInfo(_config.ioSettings.pin);
  logInfo(cmd->pin);
  _config.ioSettings.pin = cmd->pin;
  
  logInfo("UPDATE PIXEL RGB ORDER -> OLD/NEW");
  logInfo(_config.ioSettings.neoPixelRgbOrder);
  logInfo(cmd->neoPixelRgbOrder);
  _config.ioSettings.neoPixelRgbOrder = cmd->neoPixelRgbOrder;
  
  logInfo("UPDATE PIXEL TX RATE -> OLD/NEW");
  logInfo(_config.ioSettings.neoPixelTxRate);
  logInfo(cmd->neoPixelTxRate);
  _config.ioSettings.neoPixelTxRate = cmd->neoPixelTxRate;

  neoPixelType newType = mapRgbOrderAndTxRateToNeoPixelType(cmd->neoPixelRgbOrder, cmd->neoPixelTxRate);
  _ws2812fx->updateType(newType);
  
  // QfsPath qfsPath;
  // initQfsPath(&qfsPath);
  // getLocationForQromaPointFile(_manifest.instanceId, STARTUP_FILE_NAME, &qfsPath);
  // bool saved = savePbToPersistence<WS2812FX_Config>(&_config, qfsPath.qfsPath, WS2812FX_Config_fields);

  bool saved = false;

  if (!saved) {
    logError("ERROR SAVING QROMA STRIP IO SETTINGS");
    // logError(qfsPath.qfsPath);
    return;
  }

  // notifyWs2812FxConfigChanged();
}


void QromaStripDriverWs2812Fx::saveQromaStripCurrentState(SaveQromaStrip_CurrentState * cmd) {
  // QfsPath qfsPath;
  // initQfsPath(&qfsPath);
  // getLocationForQromaPointFile(_manifest.instanceId, STARTUP_FILE_NAME, &qfsPath);
  // bool saved = savePbToPersistence<WS2812FX_Config>(&_config, qfsPath.qfsPath, WS2812FX_Config_fields);

  bool saved = false;

  if (!saved) {
    logError("ERROR SAVING QROMA STRIP IO SETTINGS");
    // logError(qfsPath.qfsPath);
  }
}


// void _taskHandleWS2812FX_Command(void * pvParameters) {
//   logInfo("HANDLING _taskHandleWS2812FX_Command");
//   logInfo(millis());
  
//   QromaPointDriverWs2812Fx * qpd = (QromaPointDriverWs2812Fx*)pvParameters;

//   qpd->processQpBtCommand();

//   vTaskDelete(NULL);
// }


// // void QromaPointDriverWs2812Fx::onQpBtCommand(WS2812FX_Command * ws2812fxCommand) {
// // logInfo("RECEIVED QromaPointDriverWs2812Fx::onQpBtCommand");
// void QromaPointDriverWs2812Fx::onQpPbCommand(WS2812FX_Command * ws2812fxCommand) {
//   logInfo("RECEIVED QromaPointDriverWs2812Fx::onQpPbCommand");
//   logInfo(millis());

//   memcpy(&_btCommand, ws2812fxCommand, sizeof(_btCommand));

//   BaseType_t xTaskStatus = xTaskCreate(_taskHandleWS2812FX_Command, "_taskHandleWS2812FX_Command", 8000, (void*)this, 1, NULL);

//   if (xTaskStatus != pdPASS) {
//     logError("ERROR CREATING TASK: _taskHandleWS2812FX_Command");
//     logError(xTaskStatus);
//     return;
//   }
// }


// void QromaPointDriverWs2812Fx::processQpBtCommand() {
//   switch (_btCommand.which_command) {
//     case WS2812FX_Command_setQromaStripBrightness_tag:
//       logInfo("HANDLING WS2812FX_Command_setQromaStripBrightness_tag");
//       updateQromaStripBrightness(&(_btCommand.command.setQromaStripBrightness));
//       break;
//     case WS2812FX_Command_setQromaStripSegmentAnimation_tag:
//       logInfo("HANDLING WS2812FX_Command_setQromaStripSegmentAnimation_tag");
//       updateQromaStripAnimation(&(_btCommand.command.setQromaStripSegmentAnimation));
//       break;
//     case WS2812FX_Command_setQromaStripSegments_tag:
//       logInfo("HANDLING WS2812FX_Command_setQromaStripSegments_tag");
//       updateQromaStripSegments(&(_btCommand.command.setQromaStripSegments));
//       break;
//     case WS2812FX_Command_setQromaStripIoSettings_tag:
//       logInfo("HANDLING WS2812FX_Command_setQromaStripIoSettings_tag");
//       updateQromaStripIoSettings(&(_btCommand.command.setQromaStripIoSettings));
//       break;
//     case WS2812FX_Command_saveQromaStripCurrentState_tag:
//       logInfo("HANDLING WS2812FX_Command_saveQromaStripCurrentState_tag");
//       saveQromaStripCurrentState(&(_btCommand.command.saveQromaStripCurrentState));
//       break;
//     default:
//       logError("Unrecognized WS2812Fx driver command");
//       logError(_btCommand.which_command);
//       break;
//   }

//   logInfo("DONE processQpBtCommand");
//   logInfo(millis());
// }


// void QromaPointDriverWs2812Fx::notifyWs2812FxConfigChanged() {
//   logInfo("notifyWs2812FxConfigChanged()");
//   notifyQpConfig(&_config);
//   logInfo("notifyWs2812FxConfigChanged() - pre status");
//   _status.lastConfigChangeTimeInMs = millis();
//   notifyQpStatus(&_status);
//   logInfo("notifyWs2812FxConfigChanged() - post status");
// }
