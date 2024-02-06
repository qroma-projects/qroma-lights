import {
  QromaStrip_WS2812FX_FadeSpeed,
  QromaStrip_WS2812FX_NeoPixelRgbOrder,
  QromaStrip_WS2812FX_NeoPixelTxRate,
  QromaStrip_WS2812FX_Pattern,
  QromaStrip_WS2812FX_PixelsSize
} from "../../qroma-proto/qroma-lights-types";


export const PATTERN_LABELS = Object.keys(QromaStrip_WS2812FX_Pattern).filter((item) => {
  return isNaN(Number(item));
});

export const PATTERN_VALUES = Object.values(QromaStrip_WS2812FX_Pattern).filter((item) => {
  return !isNaN(Number(item));
});

export const FADE_SPEED_LABELS = Object.keys(QromaStrip_WS2812FX_FadeSpeed).filter((item) => {
  return isNaN(Number(item));
});

export const FADE_SPEED_VALUES = Object.values(QromaStrip_WS2812FX_FadeSpeed).filter((item) => {
  return !isNaN(Number(item));
});

export const PIXEL_SIZE_LABELS = Object.keys(QromaStrip_WS2812FX_PixelsSize).filter((item) => {
  return isNaN(Number(item));
});

export const PIXEL_SIZE_VALUES = Object.values(QromaStrip_WS2812FX_PixelsSize).filter((item) => {
  return !isNaN(Number(item));
});

export const RGB_ORDER_LABELS = Object.keys(QromaStrip_WS2812FX_NeoPixelRgbOrder).filter((item) => {
  return isNaN(Number(item));
});

export const RGB_ORDER_VALUES = Object.values(QromaStrip_WS2812FX_NeoPixelRgbOrder).filter((item) => {
  return !isNaN(Number(item));
});

export const TX_RATE_LABELS = Object.keys(QromaStrip_WS2812FX_NeoPixelTxRate).filter((item) => {
  return isNaN(Number(item));
});

export const TX_RATE_VALUES = Object.values(QromaStrip_WS2812FX_NeoPixelTxRate).filter((item) => {
  return !isNaN(Number(item));
});
