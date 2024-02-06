#include "ws2812fx_utils.h"
#include <qroma/qroma.h>


void populateWithQromaStripDefaultAnimation_Ws2812FX(QromaStrip_WS2812FX_Animation * animation) {
  
  animation->pattern = QromaStrip_WS2812FX_Pattern_QSP_STATIC;
  // animation->pattern = QromaStrip_WS2812FX_Pattern_QSP_RAINBOW_CYCLE;

  const uint32_t INIT_COLOR_INTENSITY = 30;

  animation->color1.red = INIT_COLOR_INTENSITY;
  animation->color1.green = INIT_COLOR_INTENSITY;
  animation->color1.blue = INIT_COLOR_INTENSITY;
  animation->has_color1 = true;

  animation->color2.red = INIT_COLOR_INTENSITY;
  animation->color2.green = INIT_COLOR_INTENSITY;
  animation->color2.blue = INIT_COLOR_INTENSITY;
  animation->has_color2 = true;

  animation->color3.red = INIT_COLOR_INTENSITY;
  animation->color3.green = INIT_COLOR_INTENSITY;
  animation->color3.blue = INIT_COLOR_INTENSITY;
  animation->has_color3 = true;

  animation->speed = 1000;
  animation->reversed = false;
  animation->fadeSpeed = QromaStrip_WS2812FX_FadeSpeed_QSFS_MEDIUM;
  animation->size = QromaStrip_WS2812FX_PixelsSize_QSPS_MEDIUM;
}


uint32_t convertQromaStripColorToUint(QromaStripColor * qromaStripColor) {
  uint32_t color = (uint32_t)(qromaStripColor->red << 16 | qromaStripColor->green << 8 | qromaStripColor->blue);
  return color;
}
  

uint8_t calculateQromaStripAnimationOptions(QromaStrip_WS2812FX_Animation * animation) {
  uint8_t options = 0;
  if (animation->reversed) {
    options += REVERSE;
  }
  if (animation->useGammaCorrection) {
    options += GAMMA;
  }

  switch (animation->fadeSpeed) {
    
    case QromaStrip_WS2812FX_FadeSpeed_QSFS_XFAST:
      options += FADE_XFAST;
      break;
    case QromaStrip_WS2812FX_FadeSpeed_QSFS_FAST:
      options += FADE_FAST;
      break;
    case QromaStrip_WS2812FX_FadeSpeed_QSFS_MEDIUM:
      options += FADE_MEDIUM;
      break;
    case QromaStrip_WS2812FX_FadeSpeed_QSFS_SLOW:
      options += FADE_SLOW;
      break;
    case QromaStrip_WS2812FX_FadeSpeed_QSFS_XSLOW:
      options += FADE_XSLOW;
      break;
    case QromaStrip_WS2812FX_FadeSpeed_QSFS_XXSLOW:
      options += FADE_XXSLOW;
      break;
    case QromaStrip_WS2812FX_FadeSpeed_QSFS_GLACIAL:
      options += FADE_GLACIAL;
      break;
    default:
      break;
  }

  switch (animation->size) {
    case QromaStrip_WS2812FX_PixelsSize_QSPS_SMALL:
      options += SIZE_SMALL;
      break;
    case QromaStrip_WS2812FX_PixelsSize_QSPS_MEDIUM:
      options += SIZE_MEDIUM;
      break;
    case QromaStrip_WS2812FX_PixelsSize_QSPS_LARGE:
      options += SIZE_LARGE;
      break;
    case QromaStrip_WS2812FX_PixelsSize_QSPS_XLARGE:
      options += SIZE_XLARGE;
      break;
    default:
      break;
  }

  return options;
}



int mapRgbOrderToNeoPixelValue(QromaStrip_WS2812FX_NeoPixelRgbOrder rgbOrder) {
  int mappedRgbOrder = 0;

  switch (rgbOrder) {
    case QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_RGB:
      mappedRgbOrder = NEO_RGB;
      break;
    case QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_RBG:
      mappedRgbOrder = NEO_RBG;
      break;
    case QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_GRB:
      mappedRgbOrder = NEO_GRB;
      break;
    case QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_GBR:
      mappedRgbOrder = NEO_GBR;
      break;
    case QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_BRG:
      mappedRgbOrder = NEO_BRG;
      break;
    case QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_BGR:
      mappedRgbOrder = NEO_BGR;
      break;

    case QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_WRGB:
      mappedRgbOrder = NEO_WRGB;
      break;
    case QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_WRBG:
      mappedRgbOrder = NEO_WRBG;
      break;
    case QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_WGRB:
      mappedRgbOrder = NEO_WGRB;
      break;
    case QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_WGBR:
      mappedRgbOrder = NEO_WGBR;
      break;
    case QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_WBRG:
      mappedRgbOrder = NEO_WBRG;
      break;
    case QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_WBGR:
      mappedRgbOrder = NEO_WBGR;
      break;

    case QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_RWGB:
      mappedRgbOrder = NEO_RWGB;
      break;
    case QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_RWBG:
      mappedRgbOrder = NEO_RWBG;
      break;
    case QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_RGWB:
      mappedRgbOrder = NEO_RGWB;
      break;
    case QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_RGBW:
      mappedRgbOrder = NEO_RGBW;
      break;
    case QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_RBWG:
      mappedRgbOrder = NEO_RBWG;
      break;
    case QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_RBGW:
      mappedRgbOrder = NEO_RBGW;
      break;

    case QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_GWRB:
      mappedRgbOrder = NEO_GWRB;
      break;
    case QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_GWBR:
      mappedRgbOrder = NEO_GWBR;
      break;
    case QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_GRWB:
      mappedRgbOrder = NEO_GRWB;
      break;
    case QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_GRBW:
      mappedRgbOrder = NEO_GRBW;
      break;
    case QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_GBWR:
      mappedRgbOrder = NEO_GBWR;
      break;
    case QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_GBRW:
      mappedRgbOrder = NEO_GBRW;
      break;

    case QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_BWRG:
      mappedRgbOrder = NEO_BWRG;
      break;
    case QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_BWGR:
      mappedRgbOrder = NEO_BWGR;
      break;
    case QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_BRWG:
      mappedRgbOrder = NEO_BRWG;
      break;
    case QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_BRGW:
      mappedRgbOrder = NEO_BRGW;
      break;
    case QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_BGWR:
      mappedRgbOrder = NEO_BGWR;
      break;
    case QromaStrip_WS2812FX_NeoPixelRgbOrder_QSNPO_NEO_BGRW:
      mappedRgbOrder = NEO_BGRW;
      break;
    default:
      logError("Unexpected value for mapping RGB order");
      logError(rgbOrder);
  }

  return mappedRgbOrder;
}


int mapTxRateToNeoPixelValue(QromaStrip_WS2812FX_NeoPixelTxRate txRate) {
  int mappedTxRate = 0;

  switch (txRate) {
    case QromaStrip_WS2812FX_NeoPixelTxRate_QSNPTR_400_KHZ:
      mappedTxRate = NEO_KHZ400;
      break;
    case QromaStrip_WS2812FX_NeoPixelTxRate_QSNPTR_800_KHZ:
      mappedTxRate = NEO_KHZ800;
      break;
    default:
      logError("Unexpected value for mapping TX rate");
      logError(txRate);
  }

  return mappedTxRate;
}


neoPixelType mapRgbOrderAndTxRateToNeoPixelType(QromaStrip_WS2812FX_NeoPixelRgbOrder rgbOrder, 
  QromaStrip_WS2812FX_NeoPixelTxRate txRate) 
{
  // #define DEFAULT_QS_WS2812FX_NEOPIXEL_CONFIG      NEO_GRB + NEO_KHZ800
  int mappedRgbOrder = mapRgbOrderToNeoPixelValue(rgbOrder);
  int mappedTxRate = mapTxRateToNeoPixelValue(txRate);

  return mappedRgbOrder + mappedTxRate;
}

