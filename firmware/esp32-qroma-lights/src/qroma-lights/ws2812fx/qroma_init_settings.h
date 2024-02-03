#ifndef QROMA_INIT_SETTINGS_H
#define QROMA_INIT_SETTINGS_H

// #include <Adafruit_NeoPixel.h>
// #include <qroma-proto/driver-ws2812fx.pb.h>

// #define DEFAULT_QROMA_POINT_COUNT   1
#define MAX_QP_SEGMENT_COUNT   sizeof(((QromaStrip_WS2812FX_SegmentsDefinition){0}).segments) / sizeof(((QromaStrip_WS2812FX_SegmentsDefinition){0}).segments[0])


// #define QS_DEVICE_NAME "QromaStrip-2021.12.14"
// #define QS_STRIP_1_NAME "Strip 1"

#define QS_1_LED_PIN 14
#define QS_1_LED_COUNT 32

#define QS_2_LED_PIN 15

#define DEFAULT_QS_WS2812FX_BRIGHTNESS 30
// #define DEFAULT_QS_WS2812FX_NEOPIXEL_CONFIG      NEO_GRB + NEO_KHZ800

#define DEFAULT_QS_WS2812FX_NEOPIXEL_RGB_ORDER    QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_GRB
#define DEFAULT_QS_WS2812FX_NEOPIXEL_TX_RATE      QromaStrip_WS2812FX_NeoPixelTxRate_QSNPTR_400_KHZ


#endif