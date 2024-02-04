#ifndef WS2812FX_UTILS_H
#define WS2812FX_UTILS_H

#include <qroma-proto/my-project-messages.pb.h>
#include <qroma-proto/qroma-lights-types.pb.h>
#include <WS2812FX.h>

const int COLOR_COUNT = 3;


void populateWithQromaStripDefaultAnimation_Ws2812FX(QromaStrip_WS2812FX_Animation * animation);

uint32_t convertColorRgbBytesToUint(pb_byte_t * colorRgbBytes, int index);
uint32_t convertQromaStripColorToUint(QromaStripColor * qromaStripColor);
uint8_t calculateQromaStripAnimationOptions(QromaStrip_WS2812FX_Animation * animation);

int mapRgbOrderToNeoPixelValue(QromaStrip_WS2812FX_NeoPixelRgbOrder rgbOrder);
int mapTxRateToNeoPixelValue(QromaStrip_WS2812FX_NeoPixelTxRate txRate);
neoPixelType mapRgbOrderAndTxRateToNeoPixelType(QromaStrip_WS2812FX_NeoPixelRgbOrder rgbOrder, QromaStrip_WS2812FX_NeoPixelTxRate txRate);

#endif
