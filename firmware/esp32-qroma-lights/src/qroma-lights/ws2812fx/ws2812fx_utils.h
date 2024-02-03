#ifndef WS2812FX_UTILS_H
#define WS2812FX_UTILS_H

#include <qroma-proto/my-project-messages.pb.h>
#include <qroma-proto/qroma-lights-types.pb.h>
#include <WS2812FX.h>

const int COLOR_COUNT = 3;
// const int BYTES_PER_INCOMING_COLOR = 3;

// void doInitializeQromaStripDefaultSegmentsDefinition_Ws2812FX(QromaStrip_WS2812FX_SegmentsDefinition * segmentsDefinition);
// void doInitializeQromaStripDefaultStartupAnimations_Ws2812FX(QromaStrip_WS2812FX_StartupAnimations * startupAnimations, uint32_t numSegments);
void doInitializeQromaStripDefaultStartupAnimation_Ws2812FX(QromaStrip_WS2812FX_Animation * startupAnimation);

uint32_t convertColorRgbBytesToUint(pb_byte_t * colorRgbBytes, int index);
uint32_t convertQromaStripColorToUint(QromaStripColor * qromaStripColor);
uint8_t calculateQromaStripAnimationOptions(QromaStrip_WS2812FX_Animation * animation);

int mapRgbOrderToNeoPixelValue(QromaStrip_WS2812FX_NeoPixelRgbOrder rgbOrder);
int mapTxRateToNeoPixelValue(QromaStrip_WS2812FX_NeoPixelTxRate txRate);
neoPixelType mapRgbOrderAndTxRateToNeoPixelType(QromaStrip_WS2812FX_NeoPixelRgbOrder rgbOrder, QromaStrip_WS2812FX_NeoPixelTxRate txRate);

#endif
