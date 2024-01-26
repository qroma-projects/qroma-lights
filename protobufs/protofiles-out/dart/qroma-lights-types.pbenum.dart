//
//  Generated code. Do not modify.
//  source: qroma-lights-types.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class QromaStrip_WS2812FX_Pattern extends $pb.ProtobufEnum {
  static const QromaStrip_WS2812FX_Pattern QSP_STATIC = QromaStrip_WS2812FX_Pattern._(0, _omitEnumNames ? '' : 'QSP_STATIC');
  static const QromaStrip_WS2812FX_Pattern QSP_BLINK = QromaStrip_WS2812FX_Pattern._(1, _omitEnumNames ? '' : 'QSP_BLINK');
  static const QromaStrip_WS2812FX_Pattern QSP_BREATH = QromaStrip_WS2812FX_Pattern._(2, _omitEnumNames ? '' : 'QSP_BREATH');
  static const QromaStrip_WS2812FX_Pattern QSP_COLOR_WIPE = QromaStrip_WS2812FX_Pattern._(3, _omitEnumNames ? '' : 'QSP_COLOR_WIPE');
  static const QromaStrip_WS2812FX_Pattern QSP_COLOR_WIPE_INV = QromaStrip_WS2812FX_Pattern._(4, _omitEnumNames ? '' : 'QSP_COLOR_WIPE_INV');
  static const QromaStrip_WS2812FX_Pattern QSP_COLOR_WIPE_REV = QromaStrip_WS2812FX_Pattern._(5, _omitEnumNames ? '' : 'QSP_COLOR_WIPE_REV');
  static const QromaStrip_WS2812FX_Pattern QSP_COLOR_WIPE_REV_INV = QromaStrip_WS2812FX_Pattern._(6, _omitEnumNames ? '' : 'QSP_COLOR_WIPE_REV_INV');
  static const QromaStrip_WS2812FX_Pattern QSP_COLOR_WIPE_RANDOM = QromaStrip_WS2812FX_Pattern._(7, _omitEnumNames ? '' : 'QSP_COLOR_WIPE_RANDOM');
  static const QromaStrip_WS2812FX_Pattern QSP_RANDOM_COLOR = QromaStrip_WS2812FX_Pattern._(8, _omitEnumNames ? '' : 'QSP_RANDOM_COLOR');
  static const QromaStrip_WS2812FX_Pattern QSP_SINGLE_DYNAMIC = QromaStrip_WS2812FX_Pattern._(9, _omitEnumNames ? '' : 'QSP_SINGLE_DYNAMIC');
  static const QromaStrip_WS2812FX_Pattern QSP_MULTI_DYNAMIC = QromaStrip_WS2812FX_Pattern._(10, _omitEnumNames ? '' : 'QSP_MULTI_DYNAMIC');
  static const QromaStrip_WS2812FX_Pattern QSP_RAINBOW = QromaStrip_WS2812FX_Pattern._(11, _omitEnumNames ? '' : 'QSP_RAINBOW');
  static const QromaStrip_WS2812FX_Pattern QSP_RAINBOW_CYCLE = QromaStrip_WS2812FX_Pattern._(12, _omitEnumNames ? '' : 'QSP_RAINBOW_CYCLE');
  static const QromaStrip_WS2812FX_Pattern QSP_SCAN = QromaStrip_WS2812FX_Pattern._(13, _omitEnumNames ? '' : 'QSP_SCAN');
  static const QromaStrip_WS2812FX_Pattern QSP_DUAL_SCAN = QromaStrip_WS2812FX_Pattern._(14, _omitEnumNames ? '' : 'QSP_DUAL_SCAN');
  static const QromaStrip_WS2812FX_Pattern QSP_FADE = QromaStrip_WS2812FX_Pattern._(15, _omitEnumNames ? '' : 'QSP_FADE');
  static const QromaStrip_WS2812FX_Pattern QSP_THEATER_CHASE = QromaStrip_WS2812FX_Pattern._(16, _omitEnumNames ? '' : 'QSP_THEATER_CHASE');
  static const QromaStrip_WS2812FX_Pattern QSP_THEATER_CHASE_RAINBOW = QromaStrip_WS2812FX_Pattern._(17, _omitEnumNames ? '' : 'QSP_THEATER_CHASE_RAINBOW');
  static const QromaStrip_WS2812FX_Pattern QSP_RUNNING_LIGHTS = QromaStrip_WS2812FX_Pattern._(18, _omitEnumNames ? '' : 'QSP_RUNNING_LIGHTS');
  static const QromaStrip_WS2812FX_Pattern QSP_TWINKLE = QromaStrip_WS2812FX_Pattern._(19, _omitEnumNames ? '' : 'QSP_TWINKLE');
  static const QromaStrip_WS2812FX_Pattern QSP_TWINKLE_RANDOM = QromaStrip_WS2812FX_Pattern._(20, _omitEnumNames ? '' : 'QSP_TWINKLE_RANDOM');
  static const QromaStrip_WS2812FX_Pattern QSP_TWINKLE_FADE = QromaStrip_WS2812FX_Pattern._(21, _omitEnumNames ? '' : 'QSP_TWINKLE_FADE');
  static const QromaStrip_WS2812FX_Pattern QSP_TWINKLE_FADE_RANDOM = QromaStrip_WS2812FX_Pattern._(22, _omitEnumNames ? '' : 'QSP_TWINKLE_FADE_RANDOM');
  static const QromaStrip_WS2812FX_Pattern QSP_SPARKLE = QromaStrip_WS2812FX_Pattern._(23, _omitEnumNames ? '' : 'QSP_SPARKLE');
  static const QromaStrip_WS2812FX_Pattern QSP_FLASH_SPARKLE = QromaStrip_WS2812FX_Pattern._(24, _omitEnumNames ? '' : 'QSP_FLASH_SPARKLE');
  static const QromaStrip_WS2812FX_Pattern QSP_HYPER_SPARKLE = QromaStrip_WS2812FX_Pattern._(25, _omitEnumNames ? '' : 'QSP_HYPER_SPARKLE');
  static const QromaStrip_WS2812FX_Pattern QSP_STROBE = QromaStrip_WS2812FX_Pattern._(26, _omitEnumNames ? '' : 'QSP_STROBE');
  static const QromaStrip_WS2812FX_Pattern QSP_STROBE_RAINBOW = QromaStrip_WS2812FX_Pattern._(27, _omitEnumNames ? '' : 'QSP_STROBE_RAINBOW');
  static const QromaStrip_WS2812FX_Pattern QSP_MULTI_STROBE = QromaStrip_WS2812FX_Pattern._(28, _omitEnumNames ? '' : 'QSP_MULTI_STROBE');
  static const QromaStrip_WS2812FX_Pattern QSP_BLINK_RAINBOW = QromaStrip_WS2812FX_Pattern._(29, _omitEnumNames ? '' : 'QSP_BLINK_RAINBOW');
  static const QromaStrip_WS2812FX_Pattern QSP_CHASE_WHITE = QromaStrip_WS2812FX_Pattern._(30, _omitEnumNames ? '' : 'QSP_CHASE_WHITE');
  static const QromaStrip_WS2812FX_Pattern QSP_CHASE_COLOR = QromaStrip_WS2812FX_Pattern._(31, _omitEnumNames ? '' : 'QSP_CHASE_COLOR');
  static const QromaStrip_WS2812FX_Pattern QSP_CHASE_RANDOM = QromaStrip_WS2812FX_Pattern._(32, _omitEnumNames ? '' : 'QSP_CHASE_RANDOM');
  static const QromaStrip_WS2812FX_Pattern QSP_CHASE_RAINBOW = QromaStrip_WS2812FX_Pattern._(33, _omitEnumNames ? '' : 'QSP_CHASE_RAINBOW');
  static const QromaStrip_WS2812FX_Pattern QSP_CHASE_FLASH = QromaStrip_WS2812FX_Pattern._(34, _omitEnumNames ? '' : 'QSP_CHASE_FLASH');
  static const QromaStrip_WS2812FX_Pattern QSP_CHASE_FLASH_RANDOM = QromaStrip_WS2812FX_Pattern._(35, _omitEnumNames ? '' : 'QSP_CHASE_FLASH_RANDOM');
  static const QromaStrip_WS2812FX_Pattern QSP_CHASE_RAINBOW_WHITE = QromaStrip_WS2812FX_Pattern._(36, _omitEnumNames ? '' : 'QSP_CHASE_RAINBOW_WHITE');
  static const QromaStrip_WS2812FX_Pattern QSP_CHASE_BLACKOUT = QromaStrip_WS2812FX_Pattern._(37, _omitEnumNames ? '' : 'QSP_CHASE_BLACKOUT');
  static const QromaStrip_WS2812FX_Pattern QSP_CHASE_BLACKOUT_RAINBOW = QromaStrip_WS2812FX_Pattern._(38, _omitEnumNames ? '' : 'QSP_CHASE_BLACKOUT_RAINBOW');
  static const QromaStrip_WS2812FX_Pattern QSP_COLOR_SWEEP_RANDOM = QromaStrip_WS2812FX_Pattern._(39, _omitEnumNames ? '' : 'QSP_COLOR_SWEEP_RANDOM');
  static const QromaStrip_WS2812FX_Pattern QSP_RUNNING_COLOR = QromaStrip_WS2812FX_Pattern._(40, _omitEnumNames ? '' : 'QSP_RUNNING_COLOR');
  static const QromaStrip_WS2812FX_Pattern QSP_RUNNING_RED_BLUE = QromaStrip_WS2812FX_Pattern._(41, _omitEnumNames ? '' : 'QSP_RUNNING_RED_BLUE');
  static const QromaStrip_WS2812FX_Pattern QSP_RUNNING_RANDOM = QromaStrip_WS2812FX_Pattern._(42, _omitEnumNames ? '' : 'QSP_RUNNING_RANDOM');
  static const QromaStrip_WS2812FX_Pattern QSP_LARSON_SCANNER = QromaStrip_WS2812FX_Pattern._(43, _omitEnumNames ? '' : 'QSP_LARSON_SCANNER');
  static const QromaStrip_WS2812FX_Pattern QSP_COMET = QromaStrip_WS2812FX_Pattern._(44, _omitEnumNames ? '' : 'QSP_COMET');
  static const QromaStrip_WS2812FX_Pattern QSP_FIREWORKS = QromaStrip_WS2812FX_Pattern._(45, _omitEnumNames ? '' : 'QSP_FIREWORKS');
  static const QromaStrip_WS2812FX_Pattern QSP_FIREWORKS_RANDOM = QromaStrip_WS2812FX_Pattern._(46, _omitEnumNames ? '' : 'QSP_FIREWORKS_RANDOM');
  static const QromaStrip_WS2812FX_Pattern QSP_MERRY_CHRISTMAS = QromaStrip_WS2812FX_Pattern._(47, _omitEnumNames ? '' : 'QSP_MERRY_CHRISTMAS');
  static const QromaStrip_WS2812FX_Pattern QSP_FIRE_FLICKER = QromaStrip_WS2812FX_Pattern._(48, _omitEnumNames ? '' : 'QSP_FIRE_FLICKER');
  static const QromaStrip_WS2812FX_Pattern QSP_FIRE_FLICKER_SOFT = QromaStrip_WS2812FX_Pattern._(49, _omitEnumNames ? '' : 'QSP_FIRE_FLICKER_SOFT');
  static const QromaStrip_WS2812FX_Pattern QSP_FIRE_FLICKER_INTENSE = QromaStrip_WS2812FX_Pattern._(50, _omitEnumNames ? '' : 'QSP_FIRE_FLICKER_INTENSE');
  static const QromaStrip_WS2812FX_Pattern QSP_CIRCUS_COMBUSTUS = QromaStrip_WS2812FX_Pattern._(51, _omitEnumNames ? '' : 'QSP_CIRCUS_COMBUSTUS');
  static const QromaStrip_WS2812FX_Pattern QSP_HALLOWEEN = QromaStrip_WS2812FX_Pattern._(52, _omitEnumNames ? '' : 'QSP_HALLOWEEN');
  static const QromaStrip_WS2812FX_Pattern QSP_BICOLOR_CHASE = QromaStrip_WS2812FX_Pattern._(53, _omitEnumNames ? '' : 'QSP_BICOLOR_CHASE');
  static const QromaStrip_WS2812FX_Pattern QSP_TRICOLOR_CHASE = QromaStrip_WS2812FX_Pattern._(54, _omitEnumNames ? '' : 'QSP_TRICOLOR_CHASE');
  static const QromaStrip_WS2812FX_Pattern QSP_TWINKLEFOX = QromaStrip_WS2812FX_Pattern._(55, _omitEnumNames ? '' : 'QSP_TWINKLEFOX');
  static const QromaStrip_WS2812FX_Pattern QSP_RAIN = QromaStrip_WS2812FX_Pattern._(56, _omitEnumNames ? '' : 'QSP_RAIN');

  static const $core.List<QromaStrip_WS2812FX_Pattern> values = <QromaStrip_WS2812FX_Pattern> [
    QSP_STATIC,
    QSP_BLINK,
    QSP_BREATH,
    QSP_COLOR_WIPE,
    QSP_COLOR_WIPE_INV,
    QSP_COLOR_WIPE_REV,
    QSP_COLOR_WIPE_REV_INV,
    QSP_COLOR_WIPE_RANDOM,
    QSP_RANDOM_COLOR,
    QSP_SINGLE_DYNAMIC,
    QSP_MULTI_DYNAMIC,
    QSP_RAINBOW,
    QSP_RAINBOW_CYCLE,
    QSP_SCAN,
    QSP_DUAL_SCAN,
    QSP_FADE,
    QSP_THEATER_CHASE,
    QSP_THEATER_CHASE_RAINBOW,
    QSP_RUNNING_LIGHTS,
    QSP_TWINKLE,
    QSP_TWINKLE_RANDOM,
    QSP_TWINKLE_FADE,
    QSP_TWINKLE_FADE_RANDOM,
    QSP_SPARKLE,
    QSP_FLASH_SPARKLE,
    QSP_HYPER_SPARKLE,
    QSP_STROBE,
    QSP_STROBE_RAINBOW,
    QSP_MULTI_STROBE,
    QSP_BLINK_RAINBOW,
    QSP_CHASE_WHITE,
    QSP_CHASE_COLOR,
    QSP_CHASE_RANDOM,
    QSP_CHASE_RAINBOW,
    QSP_CHASE_FLASH,
    QSP_CHASE_FLASH_RANDOM,
    QSP_CHASE_RAINBOW_WHITE,
    QSP_CHASE_BLACKOUT,
    QSP_CHASE_BLACKOUT_RAINBOW,
    QSP_COLOR_SWEEP_RANDOM,
    QSP_RUNNING_COLOR,
    QSP_RUNNING_RED_BLUE,
    QSP_RUNNING_RANDOM,
    QSP_LARSON_SCANNER,
    QSP_COMET,
    QSP_FIREWORKS,
    QSP_FIREWORKS_RANDOM,
    QSP_MERRY_CHRISTMAS,
    QSP_FIRE_FLICKER,
    QSP_FIRE_FLICKER_SOFT,
    QSP_FIRE_FLICKER_INTENSE,
    QSP_CIRCUS_COMBUSTUS,
    QSP_HALLOWEEN,
    QSP_BICOLOR_CHASE,
    QSP_TRICOLOR_CHASE,
    QSP_TWINKLEFOX,
    QSP_RAIN,
  ];

  static final $core.Map<$core.int, QromaStrip_WS2812FX_Pattern> _byValue = $pb.ProtobufEnum.initByValue(values);
  static QromaStrip_WS2812FX_Pattern? valueOf($core.int value) => _byValue[value];

  const QromaStrip_WS2812FX_Pattern._($core.int v, $core.String n) : super(v, n);
}

class QromaStrip_WS2812FX_FadeSpeed extends $pb.ProtobufEnum {
  static const QromaStrip_WS2812FX_FadeSpeed QSFS_NOT_SET = QromaStrip_WS2812FX_FadeSpeed._(0, _omitEnumNames ? '' : 'QSFS_NOT_SET');
  static const QromaStrip_WS2812FX_FadeSpeed QSFS_XFAST = QromaStrip_WS2812FX_FadeSpeed._(1, _omitEnumNames ? '' : 'QSFS_XFAST');
  static const QromaStrip_WS2812FX_FadeSpeed QSFS_FAST = QromaStrip_WS2812FX_FadeSpeed._(2, _omitEnumNames ? '' : 'QSFS_FAST');
  static const QromaStrip_WS2812FX_FadeSpeed QSFS_MEDIUM = QromaStrip_WS2812FX_FadeSpeed._(3, _omitEnumNames ? '' : 'QSFS_MEDIUM');
  static const QromaStrip_WS2812FX_FadeSpeed QSFS_SLOW = QromaStrip_WS2812FX_FadeSpeed._(4, _omitEnumNames ? '' : 'QSFS_SLOW');
  static const QromaStrip_WS2812FX_FadeSpeed QSFS_XSLOW = QromaStrip_WS2812FX_FadeSpeed._(5, _omitEnumNames ? '' : 'QSFS_XSLOW');
  static const QromaStrip_WS2812FX_FadeSpeed QSFS_XXSLOW = QromaStrip_WS2812FX_FadeSpeed._(6, _omitEnumNames ? '' : 'QSFS_XXSLOW');
  static const QromaStrip_WS2812FX_FadeSpeed QSFS_GLACIAL = QromaStrip_WS2812FX_FadeSpeed._(7, _omitEnumNames ? '' : 'QSFS_GLACIAL');

  static const $core.List<QromaStrip_WS2812FX_FadeSpeed> values = <QromaStrip_WS2812FX_FadeSpeed> [
    QSFS_NOT_SET,
    QSFS_XFAST,
    QSFS_FAST,
    QSFS_MEDIUM,
    QSFS_SLOW,
    QSFS_XSLOW,
    QSFS_XXSLOW,
    QSFS_GLACIAL,
  ];

  static final $core.Map<$core.int, QromaStrip_WS2812FX_FadeSpeed> _byValue = $pb.ProtobufEnum.initByValue(values);
  static QromaStrip_WS2812FX_FadeSpeed? valueOf($core.int value) => _byValue[value];

  const QromaStrip_WS2812FX_FadeSpeed._($core.int v, $core.String n) : super(v, n);
}

class QromaStrip_WS2812FX_PixelsSize extends $pb.ProtobufEnum {
  static const QromaStrip_WS2812FX_PixelsSize QSPS_NOT_SET = QromaStrip_WS2812FX_PixelsSize._(0, _omitEnumNames ? '' : 'QSPS_NOT_SET');
  static const QromaStrip_WS2812FX_PixelsSize QSPS_SMALL = QromaStrip_WS2812FX_PixelsSize._(1, _omitEnumNames ? '' : 'QSPS_SMALL');
  static const QromaStrip_WS2812FX_PixelsSize QSPS_MEDIUM = QromaStrip_WS2812FX_PixelsSize._(2, _omitEnumNames ? '' : 'QSPS_MEDIUM');
  static const QromaStrip_WS2812FX_PixelsSize QSPS_LARGE = QromaStrip_WS2812FX_PixelsSize._(3, _omitEnumNames ? '' : 'QSPS_LARGE');
  static const QromaStrip_WS2812FX_PixelsSize QSPS_XLARGE = QromaStrip_WS2812FX_PixelsSize._(4, _omitEnumNames ? '' : 'QSPS_XLARGE');

  static const $core.List<QromaStrip_WS2812FX_PixelsSize> values = <QromaStrip_WS2812FX_PixelsSize> [
    QSPS_NOT_SET,
    QSPS_SMALL,
    QSPS_MEDIUM,
    QSPS_LARGE,
    QSPS_XLARGE,
  ];

  static final $core.Map<$core.int, QromaStrip_WS2812FX_PixelsSize> _byValue = $pb.ProtobufEnum.initByValue(values);
  static QromaStrip_WS2812FX_PixelsSize? valueOf($core.int value) => _byValue[value];

  const QromaStrip_WS2812FX_PixelsSize._($core.int v, $core.String n) : super(v, n);
}

class QromaStrip_WS2812FX_NeoPixelRgbOrder extends $pb.ProtobufEnum {
  static const QromaStrip_WS2812FX_NeoPixelRgbOrder QSNPO_NOT_SET = QromaStrip_WS2812FX_NeoPixelRgbOrder._(0, _omitEnumNames ? '' : 'QSNPO_NOT_SET');
  static const QromaStrip_WS2812FX_NeoPixelRgbOrder QSNPO_NEO_RGB = QromaStrip_WS2812FX_NeoPixelRgbOrder._(1, _omitEnumNames ? '' : 'QSNPO_NEO_RGB');
  static const QromaStrip_WS2812FX_NeoPixelRgbOrder QSNPO_NEO_RBG = QromaStrip_WS2812FX_NeoPixelRgbOrder._(2, _omitEnumNames ? '' : 'QSNPO_NEO_RBG');
  static const QromaStrip_WS2812FX_NeoPixelRgbOrder QSNPO_NEO_GRB = QromaStrip_WS2812FX_NeoPixelRgbOrder._(3, _omitEnumNames ? '' : 'QSNPO_NEO_GRB');
  static const QromaStrip_WS2812FX_NeoPixelRgbOrder QSNPO_NEO_GBR = QromaStrip_WS2812FX_NeoPixelRgbOrder._(4, _omitEnumNames ? '' : 'QSNPO_NEO_GBR');
  static const QromaStrip_WS2812FX_NeoPixelRgbOrder QSNPO_NEO_BRG = QromaStrip_WS2812FX_NeoPixelRgbOrder._(5, _omitEnumNames ? '' : 'QSNPO_NEO_BRG');
  static const QromaStrip_WS2812FX_NeoPixelRgbOrder QSNPO_NEO_BGR = QromaStrip_WS2812FX_NeoPixelRgbOrder._(6, _omitEnumNames ? '' : 'QSNPO_NEO_BGR');
  static const QromaStrip_WS2812FX_NeoPixelRgbOrder QSNPO_NEO_WRGB = QromaStrip_WS2812FX_NeoPixelRgbOrder._(7, _omitEnumNames ? '' : 'QSNPO_NEO_WRGB');
  static const QromaStrip_WS2812FX_NeoPixelRgbOrder QSNPO_NEO_WRBG = QromaStrip_WS2812FX_NeoPixelRgbOrder._(8, _omitEnumNames ? '' : 'QSNPO_NEO_WRBG');
  static const QromaStrip_WS2812FX_NeoPixelRgbOrder QSNPO_NEO_WGRB = QromaStrip_WS2812FX_NeoPixelRgbOrder._(9, _omitEnumNames ? '' : 'QSNPO_NEO_WGRB');
  static const QromaStrip_WS2812FX_NeoPixelRgbOrder QSNPO_NEO_WGBR = QromaStrip_WS2812FX_NeoPixelRgbOrder._(10, _omitEnumNames ? '' : 'QSNPO_NEO_WGBR');
  static const QromaStrip_WS2812FX_NeoPixelRgbOrder QSNPO_NEO_WBRG = QromaStrip_WS2812FX_NeoPixelRgbOrder._(11, _omitEnumNames ? '' : 'QSNPO_NEO_WBRG');
  static const QromaStrip_WS2812FX_NeoPixelRgbOrder QSNPO_NEO_WBGR = QromaStrip_WS2812FX_NeoPixelRgbOrder._(12, _omitEnumNames ? '' : 'QSNPO_NEO_WBGR');
  static const QromaStrip_WS2812FX_NeoPixelRgbOrder QSNPO_NEO_RWGB = QromaStrip_WS2812FX_NeoPixelRgbOrder._(13, _omitEnumNames ? '' : 'QSNPO_NEO_RWGB');
  static const QromaStrip_WS2812FX_NeoPixelRgbOrder QSNPO_NEO_RWBG = QromaStrip_WS2812FX_NeoPixelRgbOrder._(14, _omitEnumNames ? '' : 'QSNPO_NEO_RWBG');
  static const QromaStrip_WS2812FX_NeoPixelRgbOrder QSNPO_NEO_RGWB = QromaStrip_WS2812FX_NeoPixelRgbOrder._(15, _omitEnumNames ? '' : 'QSNPO_NEO_RGWB');
  static const QromaStrip_WS2812FX_NeoPixelRgbOrder QSNPO_NEO_RGBW = QromaStrip_WS2812FX_NeoPixelRgbOrder._(16, _omitEnumNames ? '' : 'QSNPO_NEO_RGBW');
  static const QromaStrip_WS2812FX_NeoPixelRgbOrder QSNPO_NEO_RBWG = QromaStrip_WS2812FX_NeoPixelRgbOrder._(17, _omitEnumNames ? '' : 'QSNPO_NEO_RBWG');
  static const QromaStrip_WS2812FX_NeoPixelRgbOrder QSNPO_NEO_RBGW = QromaStrip_WS2812FX_NeoPixelRgbOrder._(18, _omitEnumNames ? '' : 'QSNPO_NEO_RBGW');
  static const QromaStrip_WS2812FX_NeoPixelRgbOrder QSNPO_NEO_GWRB = QromaStrip_WS2812FX_NeoPixelRgbOrder._(19, _omitEnumNames ? '' : 'QSNPO_NEO_GWRB');
  static const QromaStrip_WS2812FX_NeoPixelRgbOrder QSNPO_NEO_GWBR = QromaStrip_WS2812FX_NeoPixelRgbOrder._(20, _omitEnumNames ? '' : 'QSNPO_NEO_GWBR');
  static const QromaStrip_WS2812FX_NeoPixelRgbOrder QSNPO_NEO_GRWB = QromaStrip_WS2812FX_NeoPixelRgbOrder._(21, _omitEnumNames ? '' : 'QSNPO_NEO_GRWB');
  static const QromaStrip_WS2812FX_NeoPixelRgbOrder QSNPO_NEO_GRBW = QromaStrip_WS2812FX_NeoPixelRgbOrder._(22, _omitEnumNames ? '' : 'QSNPO_NEO_GRBW');
  static const QromaStrip_WS2812FX_NeoPixelRgbOrder QSNPO_NEO_GBWR = QromaStrip_WS2812FX_NeoPixelRgbOrder._(23, _omitEnumNames ? '' : 'QSNPO_NEO_GBWR');
  static const QromaStrip_WS2812FX_NeoPixelRgbOrder QSNPO_NEO_GBRW = QromaStrip_WS2812FX_NeoPixelRgbOrder._(24, _omitEnumNames ? '' : 'QSNPO_NEO_GBRW');
  static const QromaStrip_WS2812FX_NeoPixelRgbOrder QSNPO_NEO_BWRG = QromaStrip_WS2812FX_NeoPixelRgbOrder._(25, _omitEnumNames ? '' : 'QSNPO_NEO_BWRG');
  static const QromaStrip_WS2812FX_NeoPixelRgbOrder QSNPO_NEO_BWGR = QromaStrip_WS2812FX_NeoPixelRgbOrder._(26, _omitEnumNames ? '' : 'QSNPO_NEO_BWGR');
  static const QromaStrip_WS2812FX_NeoPixelRgbOrder QSNPO_NEO_BRWG = QromaStrip_WS2812FX_NeoPixelRgbOrder._(27, _omitEnumNames ? '' : 'QSNPO_NEO_BRWG');
  static const QromaStrip_WS2812FX_NeoPixelRgbOrder QSNPO_NEO_BRGW = QromaStrip_WS2812FX_NeoPixelRgbOrder._(28, _omitEnumNames ? '' : 'QSNPO_NEO_BRGW');
  static const QromaStrip_WS2812FX_NeoPixelRgbOrder QSNPO_NEO_BGWR = QromaStrip_WS2812FX_NeoPixelRgbOrder._(29, _omitEnumNames ? '' : 'QSNPO_NEO_BGWR');
  static const QromaStrip_WS2812FX_NeoPixelRgbOrder QSNPO_NEO_BGRW = QromaStrip_WS2812FX_NeoPixelRgbOrder._(30, _omitEnumNames ? '' : 'QSNPO_NEO_BGRW');

  static const $core.List<QromaStrip_WS2812FX_NeoPixelRgbOrder> values = <QromaStrip_WS2812FX_NeoPixelRgbOrder> [
    QSNPO_NOT_SET,
    QSNPO_NEO_RGB,
    QSNPO_NEO_RBG,
    QSNPO_NEO_GRB,
    QSNPO_NEO_GBR,
    QSNPO_NEO_BRG,
    QSNPO_NEO_BGR,
    QSNPO_NEO_WRGB,
    QSNPO_NEO_WRBG,
    QSNPO_NEO_WGRB,
    QSNPO_NEO_WGBR,
    QSNPO_NEO_WBRG,
    QSNPO_NEO_WBGR,
    QSNPO_NEO_RWGB,
    QSNPO_NEO_RWBG,
    QSNPO_NEO_RGWB,
    QSNPO_NEO_RGBW,
    QSNPO_NEO_RBWG,
    QSNPO_NEO_RBGW,
    QSNPO_NEO_GWRB,
    QSNPO_NEO_GWBR,
    QSNPO_NEO_GRWB,
    QSNPO_NEO_GRBW,
    QSNPO_NEO_GBWR,
    QSNPO_NEO_GBRW,
    QSNPO_NEO_BWRG,
    QSNPO_NEO_BWGR,
    QSNPO_NEO_BRWG,
    QSNPO_NEO_BRGW,
    QSNPO_NEO_BGWR,
    QSNPO_NEO_BGRW,
  ];

  static final $core.Map<$core.int, QromaStrip_WS2812FX_NeoPixelRgbOrder> _byValue = $pb.ProtobufEnum.initByValue(values);
  static QromaStrip_WS2812FX_NeoPixelRgbOrder? valueOf($core.int value) => _byValue[value];

  const QromaStrip_WS2812FX_NeoPixelRgbOrder._($core.int v, $core.String n) : super(v, n);
}

class QromaStrip_WS2812FX_NeoPixelTxRate extends $pb.ProtobufEnum {
  static const QromaStrip_WS2812FX_NeoPixelTxRate QSNPTR_NOT_SET = QromaStrip_WS2812FX_NeoPixelTxRate._(0, _omitEnumNames ? '' : 'QSNPTR_NOT_SET');
  static const QromaStrip_WS2812FX_NeoPixelTxRate QSNPTR_400_KHZ = QromaStrip_WS2812FX_NeoPixelTxRate._(1, _omitEnumNames ? '' : 'QSNPTR_400_KHZ');
  static const QromaStrip_WS2812FX_NeoPixelTxRate QSNPTR_800_KHZ = QromaStrip_WS2812FX_NeoPixelTxRate._(2, _omitEnumNames ? '' : 'QSNPTR_800_KHZ');

  static const $core.List<QromaStrip_WS2812FX_NeoPixelTxRate> values = <QromaStrip_WS2812FX_NeoPixelTxRate> [
    QSNPTR_NOT_SET,
    QSNPTR_400_KHZ,
    QSNPTR_800_KHZ,
  ];

  static final $core.Map<$core.int, QromaStrip_WS2812FX_NeoPixelTxRate> _byValue = $pb.ProtobufEnum.initByValue(values);
  static QromaStrip_WS2812FX_NeoPixelTxRate? valueOf($core.int value) => _byValue[value];

  const QromaStrip_WS2812FX_NeoPixelTxRate._($core.int v, $core.String n) : super(v, n);
}

class QromaStrip_WS2812FX_StripIndex extends $pb.ProtobufEnum {
  static const QromaStrip_WS2812FX_StripIndex QSSI_NOT_SET = QromaStrip_WS2812FX_StripIndex._(0, _omitEnumNames ? '' : 'QSSI_NOT_SET');
  static const QromaStrip_WS2812FX_StripIndex QSSI_STRIP_01 = QromaStrip_WS2812FX_StripIndex._(1, _omitEnumNames ? '' : 'QSSI_STRIP_01');
  static const QromaStrip_WS2812FX_StripIndex QSSI_STRIP_02 = QromaStrip_WS2812FX_StripIndex._(2, _omitEnumNames ? '' : 'QSSI_STRIP_02');

  static const $core.List<QromaStrip_WS2812FX_StripIndex> values = <QromaStrip_WS2812FX_StripIndex> [
    QSSI_NOT_SET,
    QSSI_STRIP_01,
    QSSI_STRIP_02,
  ];

  static final $core.Map<$core.int, QromaStrip_WS2812FX_StripIndex> _byValue = $pb.ProtobufEnum.initByValue(values);
  static QromaStrip_WS2812FX_StripIndex? valueOf($core.int value) => _byValue[value];

  const QromaStrip_WS2812FX_StripIndex._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
