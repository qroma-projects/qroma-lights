//
//  Generated code. Do not modify.
//  source: qroma-lights-types.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use qromaStrip_WS2812FX_PatternDescriptor instead')
const QromaStrip_WS2812FX_Pattern$json = {
  '1': 'QromaStrip_WS2812FX_Pattern',
  '2': [
    {'1': 'QSP_STATIC', '2': 0},
    {'1': 'QSP_BLINK', '2': 1},
    {'1': 'QSP_BREATH', '2': 2},
    {'1': 'QSP_COLOR_WIPE', '2': 3},
    {'1': 'QSP_COLOR_WIPE_INV', '2': 4},
    {'1': 'QSP_COLOR_WIPE_REV', '2': 5},
    {'1': 'QSP_COLOR_WIPE_REV_INV', '2': 6},
    {'1': 'QSP_COLOR_WIPE_RANDOM', '2': 7},
    {'1': 'QSP_RANDOM_COLOR', '2': 8},
    {'1': 'QSP_SINGLE_DYNAMIC', '2': 9},
    {'1': 'QSP_MULTI_DYNAMIC', '2': 10},
    {'1': 'QSP_RAINBOW', '2': 11},
    {'1': 'QSP_RAINBOW_CYCLE', '2': 12},
    {'1': 'QSP_SCAN', '2': 13},
    {'1': 'QSP_DUAL_SCAN', '2': 14},
    {'1': 'QSP_FADE', '2': 15},
    {'1': 'QSP_THEATER_CHASE', '2': 16},
    {'1': 'QSP_THEATER_CHASE_RAINBOW', '2': 17},
    {'1': 'QSP_RUNNING_LIGHTS', '2': 18},
    {'1': 'QSP_TWINKLE', '2': 19},
    {'1': 'QSP_TWINKLE_RANDOM', '2': 20},
    {'1': 'QSP_TWINKLE_FADE', '2': 21},
    {'1': 'QSP_TWINKLE_FADE_RANDOM', '2': 22},
    {'1': 'QSP_SPARKLE', '2': 23},
    {'1': 'QSP_FLASH_SPARKLE', '2': 24},
    {'1': 'QSP_HYPER_SPARKLE', '2': 25},
    {'1': 'QSP_STROBE', '2': 26},
    {'1': 'QSP_STROBE_RAINBOW', '2': 27},
    {'1': 'QSP_MULTI_STROBE', '2': 28},
    {'1': 'QSP_BLINK_RAINBOW', '2': 29},
    {'1': 'QSP_CHASE_WHITE', '2': 30},
    {'1': 'QSP_CHASE_COLOR', '2': 31},
    {'1': 'QSP_CHASE_RANDOM', '2': 32},
    {'1': 'QSP_CHASE_RAINBOW', '2': 33},
    {'1': 'QSP_CHASE_FLASH', '2': 34},
    {'1': 'QSP_CHASE_FLASH_RANDOM', '2': 35},
    {'1': 'QSP_CHASE_RAINBOW_WHITE', '2': 36},
    {'1': 'QSP_CHASE_BLACKOUT', '2': 37},
    {'1': 'QSP_CHASE_BLACKOUT_RAINBOW', '2': 38},
    {'1': 'QSP_COLOR_SWEEP_RANDOM', '2': 39},
    {'1': 'QSP_RUNNING_COLOR', '2': 40},
    {'1': 'QSP_RUNNING_RED_BLUE', '2': 41},
    {'1': 'QSP_RUNNING_RANDOM', '2': 42},
    {'1': 'QSP_LARSON_SCANNER', '2': 43},
    {'1': 'QSP_COMET', '2': 44},
    {'1': 'QSP_FIREWORKS', '2': 45},
    {'1': 'QSP_FIREWORKS_RANDOM', '2': 46},
    {'1': 'QSP_MERRY_CHRISTMAS', '2': 47},
    {'1': 'QSP_FIRE_FLICKER', '2': 48},
    {'1': 'QSP_FIRE_FLICKER_SOFT', '2': 49},
    {'1': 'QSP_FIRE_FLICKER_INTENSE', '2': 50},
    {'1': 'QSP_CIRCUS_COMBUSTUS', '2': 51},
    {'1': 'QSP_HALLOWEEN', '2': 52},
    {'1': 'QSP_BICOLOR_CHASE', '2': 53},
    {'1': 'QSP_TRICOLOR_CHASE', '2': 54},
    {'1': 'QSP_TWINKLEFOX', '2': 55},
    {'1': 'QSP_RAIN', '2': 56},
  ],
};

/// Descriptor for `QromaStrip_WS2812FX_Pattern`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List qromaStrip_WS2812FX_PatternDescriptor = $convert.base64Decode(
    'ChtRcm9tYVN0cmlwX1dTMjgxMkZYX1BhdHRlcm4SDgoKUVNQX1NUQVRJQxAAEg0KCVFTUF9CTE'
    'lOSxABEg4KClFTUF9CUkVBVEgQAhISCg5RU1BfQ09MT1JfV0lQRRADEhYKElFTUF9DT0xPUl9X'
    'SVBFX0lOVhAEEhYKElFTUF9DT0xPUl9XSVBFX1JFVhAFEhoKFlFTUF9DT0xPUl9XSVBFX1JFVl'
    '9JTlYQBhIZChVRU1BfQ09MT1JfV0lQRV9SQU5ET00QBxIUChBRU1BfUkFORE9NX0NPTE9SEAgS'
    'FgoSUVNQX1NJTkdMRV9EWU5BTUlDEAkSFQoRUVNQX01VTFRJX0RZTkFNSUMQChIPCgtRU1BfUk'
    'FJTkJPVxALEhUKEVFTUF9SQUlOQk9XX0NZQ0xFEAwSDAoIUVNQX1NDQU4QDRIRCg1RU1BfRFVB'
    'TF9TQ0FOEA4SDAoIUVNQX0ZBREUQDxIVChFRU1BfVEhFQVRFUl9DSEFTRRAQEh0KGVFTUF9USE'
    'VBVEVSX0NIQVNFX1JBSU5CT1cQERIWChJRU1BfUlVOTklOR19MSUdIVFMQEhIPCgtRU1BfVFdJ'
    'TktMRRATEhYKElFTUF9UV0lOS0xFX1JBTkRPTRAUEhQKEFFTUF9UV0lOS0xFX0ZBREUQFRIbCh'
    'dRU1BfVFdJTktMRV9GQURFX1JBTkRPTRAWEg8KC1FTUF9TUEFSS0xFEBcSFQoRUVNQX0ZMQVNI'
    'X1NQQVJLTEUQGBIVChFRU1BfSFlQRVJfU1BBUktMRRAZEg4KClFTUF9TVFJPQkUQGhIWChJRU1'
    'BfU1RST0JFX1JBSU5CT1cQGxIUChBRU1BfTVVMVElfU1RST0JFEBwSFQoRUVNQX0JMSU5LX1JB'
    'SU5CT1cQHRITCg9RU1BfQ0hBU0VfV0hJVEUQHhITCg9RU1BfQ0hBU0VfQ09MT1IQHxIUChBRU1'
    'BfQ0hBU0VfUkFORE9NECASFQoRUVNQX0NIQVNFX1JBSU5CT1cQIRITCg9RU1BfQ0hBU0VfRkxB'
    'U0gQIhIaChZRU1BfQ0hBU0VfRkxBU0hfUkFORE9NECMSGwoXUVNQX0NIQVNFX1JBSU5CT1dfV0'
    'hJVEUQJBIWChJRU1BfQ0hBU0VfQkxBQ0tPVVQQJRIeChpRU1BfQ0hBU0VfQkxBQ0tPVVRfUkFJ'
    'TkJPVxAmEhoKFlFTUF9DT0xPUl9TV0VFUF9SQU5ET00QJxIVChFRU1BfUlVOTklOR19DT0xPUh'
    'AoEhgKFFFTUF9SVU5OSU5HX1JFRF9CTFVFECkSFgoSUVNQX1JVTk5JTkdfUkFORE9NECoSFgoS'
    'UVNQX0xBUlNPTl9TQ0FOTkVSECsSDQoJUVNQX0NPTUVUECwSEQoNUVNQX0ZJUkVXT1JLUxAtEh'
    'gKFFFTUF9GSVJFV09SS1NfUkFORE9NEC4SFwoTUVNQX01FUlJZX0NIUklTVE1BUxAvEhQKEFFT'
    'UF9GSVJFX0ZMSUNLRVIQMBIZChVRU1BfRklSRV9GTElDS0VSX1NPRlQQMRIcChhRU1BfRklSRV'
    '9GTElDS0VSX0lOVEVOU0UQMhIYChRRU1BfQ0lSQ1VTX0NPTUJVU1RVUxAzEhEKDVFTUF9IQUxM'
    'T1dFRU4QNBIVChFRU1BfQklDT0xPUl9DSEFTRRA1EhYKElFTUF9UUklDT0xPUl9DSEFTRRA2Eh'
    'IKDlFTUF9UV0lOS0xFRk9YEDcSDAoIUVNQX1JBSU4QOA==');

@$core.Deprecated('Use qromaStrip_WS2812FX_FadeSpeedDescriptor instead')
const QromaStrip_WS2812FX_FadeSpeed$json = {
  '1': 'QromaStrip_WS2812FX_FadeSpeed',
  '2': [
    {'1': 'QSFS_NOT_SET', '2': 0},
    {'1': 'QSFS_XFAST', '2': 1},
    {'1': 'QSFS_FAST', '2': 2},
    {'1': 'QSFS_MEDIUM', '2': 3},
    {'1': 'QSFS_SLOW', '2': 4},
    {'1': 'QSFS_XSLOW', '2': 5},
    {'1': 'QSFS_XXSLOW', '2': 6},
    {'1': 'QSFS_GLACIAL', '2': 7},
  ],
};

/// Descriptor for `QromaStrip_WS2812FX_FadeSpeed`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List qromaStrip_WS2812FX_FadeSpeedDescriptor = $convert.base64Decode(
    'Ch1Rcm9tYVN0cmlwX1dTMjgxMkZYX0ZhZGVTcGVlZBIQCgxRU0ZTX05PVF9TRVQQABIOCgpRU0'
    'ZTX1hGQVNUEAESDQoJUVNGU19GQVNUEAISDwoLUVNGU19NRURJVU0QAxINCglRU0ZTX1NMT1cQ'
    'BBIOCgpRU0ZTX1hTTE9XEAUSDwoLUVNGU19YWFNMT1cQBhIQCgxRU0ZTX0dMQUNJQUwQBw==');

@$core.Deprecated('Use qromaStrip_WS2812FX_PixelsSizeDescriptor instead')
const QromaStrip_WS2812FX_PixelsSize$json = {
  '1': 'QromaStrip_WS2812FX_PixelsSize',
  '2': [
    {'1': 'QSPS_NOT_SET', '2': 0},
    {'1': 'QSPS_SMALL', '2': 1},
    {'1': 'QSPS_MEDIUM', '2': 2},
    {'1': 'QSPS_LARGE', '2': 3},
    {'1': 'QSPS_XLARGE', '2': 4},
  ],
};

/// Descriptor for `QromaStrip_WS2812FX_PixelsSize`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List qromaStrip_WS2812FX_PixelsSizeDescriptor = $convert.base64Decode(
    'Ch5Rcm9tYVN0cmlwX1dTMjgxMkZYX1BpeGVsc1NpemUSEAoMUVNQU19OT1RfU0VUEAASDgoKUV'
    'NQU19TTUFMTBABEg8KC1FTUFNfTUVESVVNEAISDgoKUVNQU19MQVJHRRADEg8KC1FTUFNfWExB'
    'UkdFEAQ=');

@$core.Deprecated('Use qromaStrip_WS2812FX_NeoPixelRgbOrderDescriptor instead')
const QromaStrip_WS2812FX_NeoPixelRgbOrder$json = {
  '1': 'QromaStrip_WS2812FX_NeoPixelRgbOrder',
  '2': [
    {'1': 'QSNPO_NOT_SET', '2': 0},
    {'1': 'QSNPO_NEO_RGB', '2': 1},
    {'1': 'QSNPO_NEO_RBG', '2': 2},
    {'1': 'QSNPO_NEO_GRB', '2': 3},
    {'1': 'QSNPO_NEO_GBR', '2': 4},
    {'1': 'QSNPO_NEO_BRG', '2': 5},
    {'1': 'QSNPO_NEO_BGR', '2': 6},
    {'1': 'QSNPO_NEO_WRGB', '2': 7},
    {'1': 'QSNPO_NEO_WRBG', '2': 8},
    {'1': 'QSNPO_NEO_WGRB', '2': 9},
    {'1': 'QSNPO_NEO_WGBR', '2': 10},
    {'1': 'QSNPO_NEO_WBRG', '2': 11},
    {'1': 'QSNPO_NEO_WBGR', '2': 12},
    {'1': 'QSNPO_NEO_RWGB', '2': 13},
    {'1': 'QSNPO_NEO_RWBG', '2': 14},
    {'1': 'QSNPO_NEO_RGWB', '2': 15},
    {'1': 'QSNPO_NEO_RGBW', '2': 16},
    {'1': 'QSNPO_NEO_RBWG', '2': 17},
    {'1': 'QSNPO_NEO_RBGW', '2': 18},
    {'1': 'QSNPO_NEO_GWRB', '2': 19},
    {'1': 'QSNPO_NEO_GWBR', '2': 20},
    {'1': 'QSNPO_NEO_GRWB', '2': 21},
    {'1': 'QSNPO_NEO_GRBW', '2': 22},
    {'1': 'QSNPO_NEO_GBWR', '2': 23},
    {'1': 'QSNPO_NEO_GBRW', '2': 24},
    {'1': 'QSNPO_NEO_BWRG', '2': 25},
    {'1': 'QSNPO_NEO_BWGR', '2': 26},
    {'1': 'QSNPO_NEO_BRWG', '2': 27},
    {'1': 'QSNPO_NEO_BRGW', '2': 28},
    {'1': 'QSNPO_NEO_BGWR', '2': 29},
    {'1': 'QSNPO_NEO_BGRW', '2': 30},
  ],
};

/// Descriptor for `QromaStrip_WS2812FX_NeoPixelRgbOrder`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List qromaStrip_WS2812FX_NeoPixelRgbOrderDescriptor = $convert.base64Decode(
    'CiRRcm9tYVN0cmlwX1dTMjgxMkZYX05lb1BpeGVsUmdiT3JkZXISEQoNUVNOUE9fTk9UX1NFVB'
    'AAEhEKDVFTTlBPX05FT19SR0IQARIRCg1RU05QT19ORU9fUkJHEAISEQoNUVNOUE9fTkVPX0dS'
    'QhADEhEKDVFTTlBPX05FT19HQlIQBBIRCg1RU05QT19ORU9fQlJHEAUSEQoNUVNOUE9fTkVPX0'
    'JHUhAGEhIKDlFTTlBPX05FT19XUkdCEAcSEgoOUVNOUE9fTkVPX1dSQkcQCBISCg5RU05QT19O'
    'RU9fV0dSQhAJEhIKDlFTTlBPX05FT19XR0JSEAoSEgoOUVNOUE9fTkVPX1dCUkcQCxISCg5RU0'
    '5QT19ORU9fV0JHUhAMEhIKDlFTTlBPX05FT19SV0dCEA0SEgoOUVNOUE9fTkVPX1JXQkcQDhIS'
    'Cg5RU05QT19ORU9fUkdXQhAPEhIKDlFTTlBPX05FT19SR0JXEBASEgoOUVNOUE9fTkVPX1JCV0'
    'cQERISCg5RU05QT19ORU9fUkJHVxASEhIKDlFTTlBPX05FT19HV1JCEBMSEgoOUVNOUE9fTkVP'
    'X0dXQlIQFBISCg5RU05QT19ORU9fR1JXQhAVEhIKDlFTTlBPX05FT19HUkJXEBYSEgoOUVNOUE'
    '9fTkVPX0dCV1IQFxISCg5RU05QT19ORU9fR0JSVxAYEhIKDlFTTlBPX05FT19CV1JHEBkSEgoO'
    'UVNOUE9fTkVPX0JXR1IQGhISCg5RU05QT19ORU9fQlJXRxAbEhIKDlFTTlBPX05FT19CUkdXEB'
    'wSEgoOUVNOUE9fTkVPX0JHV1IQHRISCg5RU05QT19ORU9fQkdSVxAe');

@$core.Deprecated('Use qromaStrip_WS2812FX_NeoPixelTxRateDescriptor instead')
const QromaStrip_WS2812FX_NeoPixelTxRate$json = {
  '1': 'QromaStrip_WS2812FX_NeoPixelTxRate',
  '2': [
    {'1': 'QSNPTR_NOT_SET', '2': 0},
    {'1': 'QSNPTR_400_KHZ', '2': 1},
    {'1': 'QSNPTR_800_KHZ', '2': 2},
  ],
};

/// Descriptor for `QromaStrip_WS2812FX_NeoPixelTxRate`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List qromaStrip_WS2812FX_NeoPixelTxRateDescriptor = $convert.base64Decode(
    'CiJRcm9tYVN0cmlwX1dTMjgxMkZYX05lb1BpeGVsVHhSYXRlEhIKDlFTTlBUUl9OT1RfU0VUEA'
    'ASEgoOUVNOUFRSXzQwMF9LSFoQARISCg5RU05QVFJfODAwX0tIWhAC');

@$core.Deprecated('Use qromaStrip_WS2812FX_StripIndexDescriptor instead')
const QromaStrip_WS2812FX_StripIndex$json = {
  '1': 'QromaStrip_WS2812FX_StripIndex',
  '2': [
    {'1': 'QSSI_NOT_SET', '2': 0},
    {'1': 'QSSI_STRIP_01', '2': 1},
    {'1': 'QSSI_STRIP_02', '2': 2},
  ],
};

/// Descriptor for `QromaStrip_WS2812FX_StripIndex`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List qromaStrip_WS2812FX_StripIndexDescriptor = $convert.base64Decode(
    'Ch5Rcm9tYVN0cmlwX1dTMjgxMkZYX1N0cmlwSW5kZXgSEAoMUVNTSV9OT1RfU0VUEAASEQoNUV'
    'NTSV9TVFJJUF8wMRABEhEKDVFTU0lfU1RSSVBfMDIQAg==');

@$core.Deprecated('Use qromaStripColorDescriptor instead')
const QromaStripColor$json = {
  '1': 'QromaStripColor',
  '2': [
    {'1': 'red', '3': 1, '4': 1, '5': 13, '10': 'red'},
    {'1': 'green', '3': 2, '4': 1, '5': 13, '10': 'green'},
    {'1': 'blue', '3': 3, '4': 1, '5': 13, '10': 'blue'},
  ],
};

/// Descriptor for `QromaStripColor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List qromaStripColorDescriptor = $convert.base64Decode(
    'Cg9Rcm9tYVN0cmlwQ29sb3ISEAoDcmVkGAEgASgNUgNyZWQSFAoFZ3JlZW4YAiABKA1SBWdyZW'
    'VuEhIKBGJsdWUYAyABKA1SBGJsdWU=');

@$core.Deprecated('Use qromaStrip_WS2812FX_AnimationDescriptor instead')
const QromaStrip_WS2812FX_Animation$json = {
  '1': 'QromaStrip_WS2812FX_Animation',
  '2': [
    {'1': 'pattern', '3': 1, '4': 1, '5': 14, '6': '.QromaStrip_WS2812FX_Pattern', '10': 'pattern'},
    {'1': 'speed', '3': 2, '4': 1, '5': 13, '10': 'speed'},
    {'1': 'color1', '3': 3, '4': 1, '5': 11, '6': '.QromaStripColor', '10': 'color1'},
    {'1': 'color2', '3': 4, '4': 1, '5': 11, '6': '.QromaStripColor', '10': 'color2'},
    {'1': 'color3', '3': 5, '4': 1, '5': 11, '6': '.QromaStripColor', '10': 'color3'},
    {'1': 'reversed', '3': 6, '4': 1, '5': 8, '10': 'reversed'},
    {'1': 'fadeSpeed', '3': 7, '4': 1, '5': 14, '6': '.QromaStrip_WS2812FX_FadeSpeed', '10': 'fadeSpeed'},
    {'1': 'size', '3': 8, '4': 1, '5': 14, '6': '.QromaStrip_WS2812FX_PixelsSize', '10': 'size'},
    {'1': 'useGammaCorrection', '3': 9, '4': 1, '5': 8, '10': 'useGammaCorrection'},
  ],
};

/// Descriptor for `QromaStrip_WS2812FX_Animation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List qromaStrip_WS2812FX_AnimationDescriptor = $convert.base64Decode(
    'Ch1Rcm9tYVN0cmlwX1dTMjgxMkZYX0FuaW1hdGlvbhI2CgdwYXR0ZXJuGAEgASgOMhwuUXJvbW'
    'FTdHJpcF9XUzI4MTJGWF9QYXR0ZXJuUgdwYXR0ZXJuEhQKBXNwZWVkGAIgASgNUgVzcGVlZBIo'
    'CgZjb2xvcjEYAyABKAsyEC5Rcm9tYVN0cmlwQ29sb3JSBmNvbG9yMRIoCgZjb2xvcjIYBCABKA'
    'syEC5Rcm9tYVN0cmlwQ29sb3JSBmNvbG9yMhIoCgZjb2xvcjMYBSABKAsyEC5Rcm9tYVN0cmlw'
    'Q29sb3JSBmNvbG9yMxIaCghyZXZlcnNlZBgGIAEoCFIIcmV2ZXJzZWQSPAoJZmFkZVNwZWVkGA'
    'cgASgOMh4uUXJvbWFTdHJpcF9XUzI4MTJGWF9GYWRlU3BlZWRSCWZhZGVTcGVlZBIzCgRzaXpl'
    'GAggASgOMh8uUXJvbWFTdHJpcF9XUzI4MTJGWF9QaXhlbHNTaXplUgRzaXplEi4KEnVzZUdhbW'
    '1hQ29ycmVjdGlvbhgJIAEoCFISdXNlR2FtbWFDb3JyZWN0aW9u');

@$core.Deprecated('Use qromaStrip_WS2812FX_IoSettingsDescriptor instead')
const QromaStrip_WS2812FX_IoSettings$json = {
  '1': 'QromaStrip_WS2812FX_IoSettings',
  '2': [
    {'1': 'pin', '3': 1, '4': 1, '5': 13, '10': 'pin'},
    {'1': 'ledCount', '3': 2, '4': 1, '5': 13, '10': 'ledCount'},
    {'1': 'neoPixelRgbOrder', '3': 3, '4': 1, '5': 14, '6': '.QromaStrip_WS2812FX_NeoPixelRgbOrder', '10': 'neoPixelRgbOrder'},
    {'1': 'neoPixelTxRate', '3': 4, '4': 1, '5': 14, '6': '.QromaStrip_WS2812FX_NeoPixelTxRate', '10': 'neoPixelTxRate'},
  ],
};

/// Descriptor for `QromaStrip_WS2812FX_IoSettings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List qromaStrip_WS2812FX_IoSettingsDescriptor = $convert.base64Decode(
    'Ch5Rcm9tYVN0cmlwX1dTMjgxMkZYX0lvU2V0dGluZ3MSEAoDcGluGAEgASgNUgNwaW4SGgoIbG'
    'VkQ291bnQYAiABKA1SCGxlZENvdW50ElEKEG5lb1BpeGVsUmdiT3JkZXIYAyABKA4yJS5Rcm9t'
    'YVN0cmlwX1dTMjgxMkZYX05lb1BpeGVsUmdiT3JkZXJSEG5lb1BpeGVsUmdiT3JkZXISSwoObm'
    'VvUGl4ZWxUeFJhdGUYBCABKA4yIy5Rcm9tYVN0cmlwX1dTMjgxMkZYX05lb1BpeGVsVHhSYXRl'
    'Ug5uZW9QaXhlbFR4UmF0ZQ==');

@$core.Deprecated('Use qromaStripConfigDescriptor instead')
const QromaStripConfig$json = {
  '1': 'QromaStripConfig',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'brightness', '3': 2, '4': 1, '5': 13, '10': 'brightness'},
    {'1': 'ioSettings', '3': 3, '4': 1, '5': 11, '6': '.QromaStrip_WS2812FX_IoSettings', '10': 'ioSettings'},
    {'1': 'animation', '3': 4, '4': 1, '5': 11, '6': '.QromaStrip_WS2812FX_Animation', '10': 'animation'},
  ],
};

/// Descriptor for `QromaStripConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List qromaStripConfigDescriptor = $convert.base64Decode(
    'ChBRcm9tYVN0cmlwQ29uZmlnEhIKBG5hbWUYASABKAlSBG5hbWUSHgoKYnJpZ2h0bmVzcxgCIA'
    'EoDVIKYnJpZ2h0bmVzcxI/Cgppb1NldHRpbmdzGAMgASgLMh8uUXJvbWFTdHJpcF9XUzI4MTJG'
    'WF9Jb1NldHRpbmdzUgppb1NldHRpbmdzEjwKCWFuaW1hdGlvbhgEIAEoCzIeLlFyb21hU3RyaX'
    'BfV1MyODEyRlhfQW5pbWF0aW9uUglhbmltYXRpb24=');

@$core.Deprecated('Use qromaLightsDeviceConfigDescriptor instead')
const QromaLightsDeviceConfig$json = {
  '1': 'QromaLightsDeviceConfig',
  '2': [
    {'1': 'deviceName', '3': 1, '4': 1, '5': 9, '10': 'deviceName'},
    {'1': 'qromaStrip1Config', '3': 2, '4': 1, '5': 11, '6': '.QromaStripConfig', '10': 'qromaStrip1Config'},
    {'1': 'qromaStrip2Config', '3': 3, '4': 1, '5': 11, '6': '.QromaStripConfig', '10': 'qromaStrip2Config'},
  ],
};

/// Descriptor for `QromaLightsDeviceConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List qromaLightsDeviceConfigDescriptor = $convert.base64Decode(
    'ChdRcm9tYUxpZ2h0c0RldmljZUNvbmZpZxIeCgpkZXZpY2VOYW1lGAEgASgJUgpkZXZpY2VOYW'
    '1lEj8KEXFyb21hU3RyaXAxQ29uZmlnGAIgASgLMhEuUXJvbWFTdHJpcENvbmZpZ1IRcXJvbWFT'
    'dHJpcDFDb25maWcSPwoRcXJvbWFTdHJpcDJDb25maWcYAyABKAsyES5Rcm9tYVN0cmlwQ29uZm'
    'lnUhFxcm9tYVN0cmlwMkNvbmZpZw==');

