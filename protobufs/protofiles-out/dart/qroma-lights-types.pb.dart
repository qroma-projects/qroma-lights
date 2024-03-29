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

import 'qroma-lights-types.pbenum.dart';

export 'qroma-lights-types.pbenum.dart';

class QromaStripColor extends $pb.GeneratedMessage {
  factory QromaStripColor({
    $core.int? red,
    $core.int? green,
    $core.int? blue,
  }) {
    final $result = create();
    if (red != null) {
      $result.red = red;
    }
    if (green != null) {
      $result.green = green;
    }
    if (blue != null) {
      $result.blue = blue;
    }
    return $result;
  }
  QromaStripColor._() : super();
  factory QromaStripColor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QromaStripColor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QromaStripColor', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'red', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'green', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'blue', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QromaStripColor clone() => QromaStripColor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QromaStripColor copyWith(void Function(QromaStripColor) updates) => super.copyWith((message) => updates(message as QromaStripColor)) as QromaStripColor;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QromaStripColor create() => QromaStripColor._();
  QromaStripColor createEmptyInstance() => create();
  static $pb.PbList<QromaStripColor> createRepeated() => $pb.PbList<QromaStripColor>();
  @$core.pragma('dart2js:noInline')
  static QromaStripColor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QromaStripColor>(create);
  static QromaStripColor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get red => $_getIZ(0);
  @$pb.TagNumber(1)
  set red($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRed() => $_has(0);
  @$pb.TagNumber(1)
  void clearRed() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get green => $_getIZ(1);
  @$pb.TagNumber(2)
  set green($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGreen() => $_has(1);
  @$pb.TagNumber(2)
  void clearGreen() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get blue => $_getIZ(2);
  @$pb.TagNumber(3)
  set blue($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBlue() => $_has(2);
  @$pb.TagNumber(3)
  void clearBlue() => clearField(3);
}

class QromaStrip_WS2812FX_Animation extends $pb.GeneratedMessage {
  factory QromaStrip_WS2812FX_Animation({
    QromaStrip_WS2812FX_Pattern? pattern,
    $core.int? speed,
    QromaStripColor? color1,
    QromaStripColor? color2,
    QromaStripColor? color3,
    $core.bool? reversed,
    QromaStrip_WS2812FX_FadeSpeed? fadeSpeed,
    QromaStrip_WS2812FX_PixelsSize? size,
    $core.bool? useGammaCorrection,
  }) {
    final $result = create();
    if (pattern != null) {
      $result.pattern = pattern;
    }
    if (speed != null) {
      $result.speed = speed;
    }
    if (color1 != null) {
      $result.color1 = color1;
    }
    if (color2 != null) {
      $result.color2 = color2;
    }
    if (color3 != null) {
      $result.color3 = color3;
    }
    if (reversed != null) {
      $result.reversed = reversed;
    }
    if (fadeSpeed != null) {
      $result.fadeSpeed = fadeSpeed;
    }
    if (size != null) {
      $result.size = size;
    }
    if (useGammaCorrection != null) {
      $result.useGammaCorrection = useGammaCorrection;
    }
    return $result;
  }
  QromaStrip_WS2812FX_Animation._() : super();
  factory QromaStrip_WS2812FX_Animation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QromaStrip_WS2812FX_Animation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QromaStrip_WS2812FX_Animation', createEmptyInstance: create)
    ..e<QromaStrip_WS2812FX_Pattern>(1, _omitFieldNames ? '' : 'pattern', $pb.PbFieldType.OE, defaultOrMaker: QromaStrip_WS2812FX_Pattern.QSP_STATIC, valueOf: QromaStrip_WS2812FX_Pattern.valueOf, enumValues: QromaStrip_WS2812FX_Pattern.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'speed', $pb.PbFieldType.OU3)
    ..aOM<QromaStripColor>(3, _omitFieldNames ? '' : 'color1', subBuilder: QromaStripColor.create)
    ..aOM<QromaStripColor>(4, _omitFieldNames ? '' : 'color2', subBuilder: QromaStripColor.create)
    ..aOM<QromaStripColor>(5, _omitFieldNames ? '' : 'color3', subBuilder: QromaStripColor.create)
    ..aOB(6, _omitFieldNames ? '' : 'reversed')
    ..e<QromaStrip_WS2812FX_FadeSpeed>(7, _omitFieldNames ? '' : 'fadeSpeed', $pb.PbFieldType.OE, protoName: 'fadeSpeed', defaultOrMaker: QromaStrip_WS2812FX_FadeSpeed.QSFS_NOT_SET, valueOf: QromaStrip_WS2812FX_FadeSpeed.valueOf, enumValues: QromaStrip_WS2812FX_FadeSpeed.values)
    ..e<QromaStrip_WS2812FX_PixelsSize>(8, _omitFieldNames ? '' : 'size', $pb.PbFieldType.OE, defaultOrMaker: QromaStrip_WS2812FX_PixelsSize.QSPS_NOT_SET, valueOf: QromaStrip_WS2812FX_PixelsSize.valueOf, enumValues: QromaStrip_WS2812FX_PixelsSize.values)
    ..aOB(9, _omitFieldNames ? '' : 'useGammaCorrection', protoName: 'useGammaCorrection')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QromaStrip_WS2812FX_Animation clone() => QromaStrip_WS2812FX_Animation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QromaStrip_WS2812FX_Animation copyWith(void Function(QromaStrip_WS2812FX_Animation) updates) => super.copyWith((message) => updates(message as QromaStrip_WS2812FX_Animation)) as QromaStrip_WS2812FX_Animation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QromaStrip_WS2812FX_Animation create() => QromaStrip_WS2812FX_Animation._();
  QromaStrip_WS2812FX_Animation createEmptyInstance() => create();
  static $pb.PbList<QromaStrip_WS2812FX_Animation> createRepeated() => $pb.PbList<QromaStrip_WS2812FX_Animation>();
  @$core.pragma('dart2js:noInline')
  static QromaStrip_WS2812FX_Animation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QromaStrip_WS2812FX_Animation>(create);
  static QromaStrip_WS2812FX_Animation? _defaultInstance;

  @$pb.TagNumber(1)
  QromaStrip_WS2812FX_Pattern get pattern => $_getN(0);
  @$pb.TagNumber(1)
  set pattern(QromaStrip_WS2812FX_Pattern v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPattern() => $_has(0);
  @$pb.TagNumber(1)
  void clearPattern() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get speed => $_getIZ(1);
  @$pb.TagNumber(2)
  set speed($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpeed() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpeed() => clearField(2);

  @$pb.TagNumber(3)
  QromaStripColor get color1 => $_getN(2);
  @$pb.TagNumber(3)
  set color1(QromaStripColor v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasColor1() => $_has(2);
  @$pb.TagNumber(3)
  void clearColor1() => clearField(3);
  @$pb.TagNumber(3)
  QromaStripColor ensureColor1() => $_ensure(2);

  @$pb.TagNumber(4)
  QromaStripColor get color2 => $_getN(3);
  @$pb.TagNumber(4)
  set color2(QromaStripColor v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasColor2() => $_has(3);
  @$pb.TagNumber(4)
  void clearColor2() => clearField(4);
  @$pb.TagNumber(4)
  QromaStripColor ensureColor2() => $_ensure(3);

  @$pb.TagNumber(5)
  QromaStripColor get color3 => $_getN(4);
  @$pb.TagNumber(5)
  set color3(QromaStripColor v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasColor3() => $_has(4);
  @$pb.TagNumber(5)
  void clearColor3() => clearField(5);
  @$pb.TagNumber(5)
  QromaStripColor ensureColor3() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.bool get reversed => $_getBF(5);
  @$pb.TagNumber(6)
  set reversed($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasReversed() => $_has(5);
  @$pb.TagNumber(6)
  void clearReversed() => clearField(6);

  @$pb.TagNumber(7)
  QromaStrip_WS2812FX_FadeSpeed get fadeSpeed => $_getN(6);
  @$pb.TagNumber(7)
  set fadeSpeed(QromaStrip_WS2812FX_FadeSpeed v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasFadeSpeed() => $_has(6);
  @$pb.TagNumber(7)
  void clearFadeSpeed() => clearField(7);

  @$pb.TagNumber(8)
  QromaStrip_WS2812FX_PixelsSize get size => $_getN(7);
  @$pb.TagNumber(8)
  set size(QromaStrip_WS2812FX_PixelsSize v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasSize() => $_has(7);
  @$pb.TagNumber(8)
  void clearSize() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get useGammaCorrection => $_getBF(8);
  @$pb.TagNumber(9)
  set useGammaCorrection($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasUseGammaCorrection() => $_has(8);
  @$pb.TagNumber(9)
  void clearUseGammaCorrection() => clearField(9);
}

class QromaStrip_WS2812FX_IoSettings extends $pb.GeneratedMessage {
  factory QromaStrip_WS2812FX_IoSettings({
    $core.int? pin,
    $core.int? ledCount,
    QromaStrip_WS2812FX_NeoPixelRgbOrder? neoPixelRgbOrder,
    QromaStrip_WS2812FX_NeoPixelTxRate? neoPixelTxRate,
  }) {
    final $result = create();
    if (pin != null) {
      $result.pin = pin;
    }
    if (ledCount != null) {
      $result.ledCount = ledCount;
    }
    if (neoPixelRgbOrder != null) {
      $result.neoPixelRgbOrder = neoPixelRgbOrder;
    }
    if (neoPixelTxRate != null) {
      $result.neoPixelTxRate = neoPixelTxRate;
    }
    return $result;
  }
  QromaStrip_WS2812FX_IoSettings._() : super();
  factory QromaStrip_WS2812FX_IoSettings.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QromaStrip_WS2812FX_IoSettings.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QromaStrip_WS2812FX_IoSettings', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'pin', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'ledCount', $pb.PbFieldType.OU3, protoName: 'ledCount')
    ..e<QromaStrip_WS2812FX_NeoPixelRgbOrder>(3, _omitFieldNames ? '' : 'neoPixelRgbOrder', $pb.PbFieldType.OE, protoName: 'neoPixelRgbOrder', defaultOrMaker: QromaStrip_WS2812FX_NeoPixelRgbOrder.QSNPO_NOT_SET, valueOf: QromaStrip_WS2812FX_NeoPixelRgbOrder.valueOf, enumValues: QromaStrip_WS2812FX_NeoPixelRgbOrder.values)
    ..e<QromaStrip_WS2812FX_NeoPixelTxRate>(4, _omitFieldNames ? '' : 'neoPixelTxRate', $pb.PbFieldType.OE, protoName: 'neoPixelTxRate', defaultOrMaker: QromaStrip_WS2812FX_NeoPixelTxRate.QSNPTR_NOT_SET, valueOf: QromaStrip_WS2812FX_NeoPixelTxRate.valueOf, enumValues: QromaStrip_WS2812FX_NeoPixelTxRate.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QromaStrip_WS2812FX_IoSettings clone() => QromaStrip_WS2812FX_IoSettings()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QromaStrip_WS2812FX_IoSettings copyWith(void Function(QromaStrip_WS2812FX_IoSettings) updates) => super.copyWith((message) => updates(message as QromaStrip_WS2812FX_IoSettings)) as QromaStrip_WS2812FX_IoSettings;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QromaStrip_WS2812FX_IoSettings create() => QromaStrip_WS2812FX_IoSettings._();
  QromaStrip_WS2812FX_IoSettings createEmptyInstance() => create();
  static $pb.PbList<QromaStrip_WS2812FX_IoSettings> createRepeated() => $pb.PbList<QromaStrip_WS2812FX_IoSettings>();
  @$core.pragma('dart2js:noInline')
  static QromaStrip_WS2812FX_IoSettings getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QromaStrip_WS2812FX_IoSettings>(create);
  static QromaStrip_WS2812FX_IoSettings? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get pin => $_getIZ(0);
  @$pb.TagNumber(1)
  set pin($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPin() => $_has(0);
  @$pb.TagNumber(1)
  void clearPin() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get ledCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set ledCount($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLedCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearLedCount() => clearField(2);

  @$pb.TagNumber(3)
  QromaStrip_WS2812FX_NeoPixelRgbOrder get neoPixelRgbOrder => $_getN(2);
  @$pb.TagNumber(3)
  set neoPixelRgbOrder(QromaStrip_WS2812FX_NeoPixelRgbOrder v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasNeoPixelRgbOrder() => $_has(2);
  @$pb.TagNumber(3)
  void clearNeoPixelRgbOrder() => clearField(3);

  @$pb.TagNumber(4)
  QromaStrip_WS2812FX_NeoPixelTxRate get neoPixelTxRate => $_getN(3);
  @$pb.TagNumber(4)
  set neoPixelTxRate(QromaStrip_WS2812FX_NeoPixelTxRate v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasNeoPixelTxRate() => $_has(3);
  @$pb.TagNumber(4)
  void clearNeoPixelTxRate() => clearField(4);
}

class QromaStripConfig extends $pb.GeneratedMessage {
  factory QromaStripConfig({
    $core.String? name,
    $core.int? brightness,
    QromaStrip_WS2812FX_IoSettings? ioSettings,
    QromaStrip_WS2812FX_Animation? animation,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (brightness != null) {
      $result.brightness = brightness;
    }
    if (ioSettings != null) {
      $result.ioSettings = ioSettings;
    }
    if (animation != null) {
      $result.animation = animation;
    }
    return $result;
  }
  QromaStripConfig._() : super();
  factory QromaStripConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QromaStripConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QromaStripConfig', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'brightness', $pb.PbFieldType.OU3)
    ..aOM<QromaStrip_WS2812FX_IoSettings>(3, _omitFieldNames ? '' : 'ioSettings', protoName: 'ioSettings', subBuilder: QromaStrip_WS2812FX_IoSettings.create)
    ..aOM<QromaStrip_WS2812FX_Animation>(4, _omitFieldNames ? '' : 'animation', subBuilder: QromaStrip_WS2812FX_Animation.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QromaStripConfig clone() => QromaStripConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QromaStripConfig copyWith(void Function(QromaStripConfig) updates) => super.copyWith((message) => updates(message as QromaStripConfig)) as QromaStripConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QromaStripConfig create() => QromaStripConfig._();
  QromaStripConfig createEmptyInstance() => create();
  static $pb.PbList<QromaStripConfig> createRepeated() => $pb.PbList<QromaStripConfig>();
  @$core.pragma('dart2js:noInline')
  static QromaStripConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QromaStripConfig>(create);
  static QromaStripConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get brightness => $_getIZ(1);
  @$pb.TagNumber(2)
  set brightness($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBrightness() => $_has(1);
  @$pb.TagNumber(2)
  void clearBrightness() => clearField(2);

  @$pb.TagNumber(3)
  QromaStrip_WS2812FX_IoSettings get ioSettings => $_getN(2);
  @$pb.TagNumber(3)
  set ioSettings(QromaStrip_WS2812FX_IoSettings v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasIoSettings() => $_has(2);
  @$pb.TagNumber(3)
  void clearIoSettings() => clearField(3);
  @$pb.TagNumber(3)
  QromaStrip_WS2812FX_IoSettings ensureIoSettings() => $_ensure(2);

  @$pb.TagNumber(4)
  QromaStrip_WS2812FX_Animation get animation => $_getN(3);
  @$pb.TagNumber(4)
  set animation(QromaStrip_WS2812FX_Animation v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasAnimation() => $_has(3);
  @$pb.TagNumber(4)
  void clearAnimation() => clearField(4);
  @$pb.TagNumber(4)
  QromaStrip_WS2812FX_Animation ensureAnimation() => $_ensure(3);
}

class QromaLightsDeviceConfig extends $pb.GeneratedMessage {
  factory QromaLightsDeviceConfig({
    $core.String? deviceName,
    QromaStripConfig? qromaStrip1Config,
    QromaStripConfig? qromaStrip2Config,
  }) {
    final $result = create();
    if (deviceName != null) {
      $result.deviceName = deviceName;
    }
    if (qromaStrip1Config != null) {
      $result.qromaStrip1Config = qromaStrip1Config;
    }
    if (qromaStrip2Config != null) {
      $result.qromaStrip2Config = qromaStrip2Config;
    }
    return $result;
  }
  QromaLightsDeviceConfig._() : super();
  factory QromaLightsDeviceConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QromaLightsDeviceConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QromaLightsDeviceConfig', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'deviceName', protoName: 'deviceName')
    ..aOM<QromaStripConfig>(2, _omitFieldNames ? '' : 'qromaStrip1Config', protoName: 'qromaStrip1Config', subBuilder: QromaStripConfig.create)
    ..aOM<QromaStripConfig>(3, _omitFieldNames ? '' : 'qromaStrip2Config', protoName: 'qromaStrip2Config', subBuilder: QromaStripConfig.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QromaLightsDeviceConfig clone() => QromaLightsDeviceConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QromaLightsDeviceConfig copyWith(void Function(QromaLightsDeviceConfig) updates) => super.copyWith((message) => updates(message as QromaLightsDeviceConfig)) as QromaLightsDeviceConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QromaLightsDeviceConfig create() => QromaLightsDeviceConfig._();
  QromaLightsDeviceConfig createEmptyInstance() => create();
  static $pb.PbList<QromaLightsDeviceConfig> createRepeated() => $pb.PbList<QromaLightsDeviceConfig>();
  @$core.pragma('dart2js:noInline')
  static QromaLightsDeviceConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QromaLightsDeviceConfig>(create);
  static QromaLightsDeviceConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceName => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceName() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceName() => clearField(1);

  @$pb.TagNumber(2)
  QromaStripConfig get qromaStrip1Config => $_getN(1);
  @$pb.TagNumber(2)
  set qromaStrip1Config(QromaStripConfig v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasQromaStrip1Config() => $_has(1);
  @$pb.TagNumber(2)
  void clearQromaStrip1Config() => clearField(2);
  @$pb.TagNumber(2)
  QromaStripConfig ensureQromaStrip1Config() => $_ensure(1);

  @$pb.TagNumber(3)
  QromaStripConfig get qromaStrip2Config => $_getN(2);
  @$pb.TagNumber(3)
  set qromaStrip2Config(QromaStripConfig v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasQromaStrip2Config() => $_has(2);
  @$pb.TagNumber(3)
  void clearQromaStrip2Config() => clearField(3);
  @$pb.TagNumber(3)
  QromaStripConfig ensureQromaStrip2Config() => $_ensure(2);
}

class ShareableAnimation extends $pb.GeneratedMessage {
  factory ShareableAnimation({
    $core.String? name,
    QromaStrip_WS2812FX_Animation? animation,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (animation != null) {
      $result.animation = animation;
    }
    return $result;
  }
  ShareableAnimation._() : super();
  factory ShareableAnimation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShareableAnimation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ShareableAnimation', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<QromaStrip_WS2812FX_Animation>(2, _omitFieldNames ? '' : 'animation', subBuilder: QromaStrip_WS2812FX_Animation.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ShareableAnimation clone() => ShareableAnimation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ShareableAnimation copyWith(void Function(ShareableAnimation) updates) => super.copyWith((message) => updates(message as ShareableAnimation)) as ShareableAnimation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShareableAnimation create() => ShareableAnimation._();
  ShareableAnimation createEmptyInstance() => create();
  static $pb.PbList<ShareableAnimation> createRepeated() => $pb.PbList<ShareableAnimation>();
  @$core.pragma('dart2js:noInline')
  static ShareableAnimation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShareableAnimation>(create);
  static ShareableAnimation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  QromaStrip_WS2812FX_Animation get animation => $_getN(1);
  @$pb.TagNumber(2)
  set animation(QromaStrip_WS2812FX_Animation v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAnimation() => $_has(1);
  @$pb.TagNumber(2)
  void clearAnimation() => clearField(2);
  @$pb.TagNumber(2)
  QromaStrip_WS2812FX_Animation ensureAnimation() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
