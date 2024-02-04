#include "QromaStripDriverWs2812Fx.h"
#include "ws2812fx_utils.h"
#include <qroma/qroma.h>
#include <qroma-proto/my-project-messages.pb.h>
#include <qroma-proto/qroma-lights-types.pb.h>


void QromaStripDriverWs2812Fx::startup(QromaStripConfig * config) {
  memcpy(&(_config), config, sizeof(QromaStripConfig));

  applyQromaStripIoSettings(&(config->ioSettings));

  QromaStrip_WS2812FX_IoSettings * qsio = &(_config.ioSettings);
  neoPixelType npt = mapRgbOrderAndTxRateToNeoPixelType(qsio->neoPixelRgbOrder, qsio->neoPixelTxRate);

  logInfo("INITIALIZING LED");
  logInfo(config->name);
  logInfo(config->brightness);
  logInfo(qsio->ledCount);
  logInfo(qsio->pin);
  logInfo(npt);

  _ws2812fx = new WS2812FX(qsio->ledCount, qsio->pin, npt, 1);
  _ws2812fx->init();

  applyQromaStripBrightness(config->brightness);
  applyQromaStripAnimation(&(config->animation));

  _ws2812fx->start();
}


void QromaStripDriverWs2812Fx::populateQromaStripIoSettings(QromaStrip_WS2812FX_IoSettings * settings) {
  memcpy(settings, &(_config.ioSettings), sizeof(QromaStrip_WS2812FX_IoSettings));
}


void QromaStripDriverWs2812Fx::populateQromaStripStartupAnimation(QromaStrip_WS2812FX_Animation * animation) {
  memcpy(animation, &(_config.animation), sizeof(QromaStrip_WS2812FX_Animation));
}


const char * QromaStripDriverWs2812Fx::getName() {
  return _config.name;
}


uint32_t QromaStripDriverWs2812Fx::getBrightness() {
  return _config.brightness;
}


void QromaStripDriverWs2812Fx::tick() {
  _ws2812fx->service();
}


void QromaStripDriverWs2812Fx::applyQromaStripBrightness(uint32_t brightness) {
  _ws2812fx->setBrightness(brightness);
  _config.brightness = brightness;

  logInfo("UPDATED BRIGHTNESS");
  logInfo(brightness);
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


void QromaStripDriverWs2812Fx::applyQromaStripAnimation(QromaStrip_WS2812FX_Animation * animation) {
  logInfo("updateQromaStripAnimation()");
  logInfo(animation->pattern);

  applyAnimation(animation);

  _ws2812fx->trigger();
}



void QromaStripDriverWs2812Fx::applyAnimation(QromaStrip_WS2812FX_Animation * animation) {
  logInfo("applyAnimation()");
  logInfo(animation->pattern);

  uint32_t colors[COLOR_COUNT];
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

  QromaStrip_WS2812FX_IoSettings * qsio = &(_config.ioSettings);

  _ws2812fx->setSegment(
    0, 
    0,
    qsio->ledCount - 1,
    animation->pattern, 
    colors,
    animation->speed,
    options
    );

  logInfo("COPYING - calling copyQromaStripAnimation");
  copyQromaStripAnimation(&(_config.animation), animation);

  _ws2812fx->trigger();
}


void QromaStripDriverWs2812Fx::applyQromaStripIoSettings(QromaStrip_WS2812FX_IoSettings * cmd) {
  if (cmd->ledCount == _config.ioSettings.ledCount &&
      cmd->pin == _config.ioSettings.pin &&
      cmd->neoPixelRgbOrder == _config.ioSettings.neoPixelRgbOrder &&
      cmd->neoPixelTxRate == _config.ioSettings.neoPixelTxRate) 
  {
    logInfo("NO IO CHANGES");
    return;
  }

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
}


void QromaStripDriverWs2812Fx::saveQromaStripCurrentState(SaveQromaStrip_CurrentState * cmd) {

  bool saved = false;

  if (!saved) {
    logError("ERROR SAVING QROMA STRIP IO SETTINGS");
  }
}
