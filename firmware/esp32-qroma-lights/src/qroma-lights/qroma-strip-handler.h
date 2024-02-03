#ifndef QROMA_LIGHTS_HANDLER_H
#define QROMA_LIGHTS_HANDLER_H

#include <qroma-proto/my-project-messages.pb.h>
#include "ws2812fx/QromaStripDriverWs2812Fx.h"


void initQromaLightsFromConfig(QromaLightsDeviceConfig * config);
void tickQromaLights();

QromaStripDriverWs2812Fx * getLightsForStripIndex(QromaStrip_WS2812FX_StripIndex stripIndex);

void handleQromaStripCommand(QromaStrip_WS2812FX_StripIndex stripIndex, QromaStripCommand * message, QromaLightsResponse * response);


#endif
