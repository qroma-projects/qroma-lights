//
//  Generated code. Do not modify.
//  source: qroma-lights-commands.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'qroma-lights-types.pb.dart' as $0;
import 'qroma-lights-types.pbenum.dart' as $0;

class SetQromaStrip_WS2812FX_Segments extends $pb.GeneratedMessage {
  factory SetQromaStrip_WS2812FX_Segments({
    $0.QromaStrip_WS2812FX_StripIndex? stripIndex,
    $core.int? numSegments,
    $core.Iterable<$0.QromaStrip_WS2812FX_Segment>? segments,
  }) {
    final $result = create();
    if (stripIndex != null) {
      $result.stripIndex = stripIndex;
    }
    if (numSegments != null) {
      $result.numSegments = numSegments;
    }
    if (segments != null) {
      $result.segments.addAll(segments);
    }
    return $result;
  }
  SetQromaStrip_WS2812FX_Segments._() : super();
  factory SetQromaStrip_WS2812FX_Segments.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetQromaStrip_WS2812FX_Segments.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetQromaStrip_WS2812FX_Segments', createEmptyInstance: create)
    ..e<$0.QromaStrip_WS2812FX_StripIndex>(1, _omitFieldNames ? '' : 'stripIndex', $pb.PbFieldType.OE, protoName: 'stripIndex', defaultOrMaker: $0.QromaStrip_WS2812FX_StripIndex.QSSI_NOT_SET, valueOf: $0.QromaStrip_WS2812FX_StripIndex.valueOf, enumValues: $0.QromaStrip_WS2812FX_StripIndex.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'numSegments', $pb.PbFieldType.OU3, protoName: 'numSegments')
    ..pc<$0.QromaStrip_WS2812FX_Segment>(3, _omitFieldNames ? '' : 'segments', $pb.PbFieldType.PM, subBuilder: $0.QromaStrip_WS2812FX_Segment.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetQromaStrip_WS2812FX_Segments clone() => SetQromaStrip_WS2812FX_Segments()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetQromaStrip_WS2812FX_Segments copyWith(void Function(SetQromaStrip_WS2812FX_Segments) updates) => super.copyWith((message) => updates(message as SetQromaStrip_WS2812FX_Segments)) as SetQromaStrip_WS2812FX_Segments;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetQromaStrip_WS2812FX_Segments create() => SetQromaStrip_WS2812FX_Segments._();
  SetQromaStrip_WS2812FX_Segments createEmptyInstance() => create();
  static $pb.PbList<SetQromaStrip_WS2812FX_Segments> createRepeated() => $pb.PbList<SetQromaStrip_WS2812FX_Segments>();
  @$core.pragma('dart2js:noInline')
  static SetQromaStrip_WS2812FX_Segments getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetQromaStrip_WS2812FX_Segments>(create);
  static SetQromaStrip_WS2812FX_Segments? _defaultInstance;

  @$pb.TagNumber(1)
  $0.QromaStrip_WS2812FX_StripIndex get stripIndex => $_getN(0);
  @$pb.TagNumber(1)
  set stripIndex($0.QromaStrip_WS2812FX_StripIndex v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStripIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearStripIndex() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get numSegments => $_getIZ(1);
  @$pb.TagNumber(2)
  set numSegments($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNumSegments() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumSegments() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$0.QromaStrip_WS2812FX_Segment> get segments => $_getList(2);
}

class SetQromaStrip_WS2812FX_SegmentAnimation extends $pb.GeneratedMessage {
  factory SetQromaStrip_WS2812FX_SegmentAnimation({
    $0.QromaStrip_WS2812FX_Animation? animation,
    $0.QromaStrip_WS2812FX_StripIndex? stripIndex,
    $core.int? segmentIndex,
  }) {
    final $result = create();
    if (animation != null) {
      $result.animation = animation;
    }
    if (stripIndex != null) {
      $result.stripIndex = stripIndex;
    }
    if (segmentIndex != null) {
      $result.segmentIndex = segmentIndex;
    }
    return $result;
  }
  SetQromaStrip_WS2812FX_SegmentAnimation._() : super();
  factory SetQromaStrip_WS2812FX_SegmentAnimation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetQromaStrip_WS2812FX_SegmentAnimation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetQromaStrip_WS2812FX_SegmentAnimation', createEmptyInstance: create)
    ..aOM<$0.QromaStrip_WS2812FX_Animation>(1, _omitFieldNames ? '' : 'animation', subBuilder: $0.QromaStrip_WS2812FX_Animation.create)
    ..e<$0.QromaStrip_WS2812FX_StripIndex>(2, _omitFieldNames ? '' : 'stripIndex', $pb.PbFieldType.OE, protoName: 'stripIndex', defaultOrMaker: $0.QromaStrip_WS2812FX_StripIndex.QSSI_NOT_SET, valueOf: $0.QromaStrip_WS2812FX_StripIndex.valueOf, enumValues: $0.QromaStrip_WS2812FX_StripIndex.values)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'segmentIndex', $pb.PbFieldType.OU3, protoName: 'segmentIndex')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetQromaStrip_WS2812FX_SegmentAnimation clone() => SetQromaStrip_WS2812FX_SegmentAnimation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetQromaStrip_WS2812FX_SegmentAnimation copyWith(void Function(SetQromaStrip_WS2812FX_SegmentAnimation) updates) => super.copyWith((message) => updates(message as SetQromaStrip_WS2812FX_SegmentAnimation)) as SetQromaStrip_WS2812FX_SegmentAnimation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetQromaStrip_WS2812FX_SegmentAnimation create() => SetQromaStrip_WS2812FX_SegmentAnimation._();
  SetQromaStrip_WS2812FX_SegmentAnimation createEmptyInstance() => create();
  static $pb.PbList<SetQromaStrip_WS2812FX_SegmentAnimation> createRepeated() => $pb.PbList<SetQromaStrip_WS2812FX_SegmentAnimation>();
  @$core.pragma('dart2js:noInline')
  static SetQromaStrip_WS2812FX_SegmentAnimation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetQromaStrip_WS2812FX_SegmentAnimation>(create);
  static SetQromaStrip_WS2812FX_SegmentAnimation? _defaultInstance;

  @$pb.TagNumber(1)
  $0.QromaStrip_WS2812FX_Animation get animation => $_getN(0);
  @$pb.TagNumber(1)
  set animation($0.QromaStrip_WS2812FX_Animation v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAnimation() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnimation() => clearField(1);
  @$pb.TagNumber(1)
  $0.QromaStrip_WS2812FX_Animation ensureAnimation() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.QromaStrip_WS2812FX_StripIndex get stripIndex => $_getN(1);
  @$pb.TagNumber(2)
  set stripIndex($0.QromaStrip_WS2812FX_StripIndex v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStripIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearStripIndex() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get segmentIndex => $_getIZ(2);
  @$pb.TagNumber(3)
  set segmentIndex($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSegmentIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearSegmentIndex() => clearField(3);
}

class SetQromaStrip_WS2812FX_Brightness extends $pb.GeneratedMessage {
  factory SetQromaStrip_WS2812FX_Brightness({
    $0.QromaStrip_WS2812FX_StripIndex? stripIndex,
    $core.int? brightness,
  }) {
    final $result = create();
    if (stripIndex != null) {
      $result.stripIndex = stripIndex;
    }
    if (brightness != null) {
      $result.brightness = brightness;
    }
    return $result;
  }
  SetQromaStrip_WS2812FX_Brightness._() : super();
  factory SetQromaStrip_WS2812FX_Brightness.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetQromaStrip_WS2812FX_Brightness.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetQromaStrip_WS2812FX_Brightness', createEmptyInstance: create)
    ..e<$0.QromaStrip_WS2812FX_StripIndex>(1, _omitFieldNames ? '' : 'stripIndex', $pb.PbFieldType.OE, protoName: 'stripIndex', defaultOrMaker: $0.QromaStrip_WS2812FX_StripIndex.QSSI_NOT_SET, valueOf: $0.QromaStrip_WS2812FX_StripIndex.valueOf, enumValues: $0.QromaStrip_WS2812FX_StripIndex.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'brightness', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetQromaStrip_WS2812FX_Brightness clone() => SetQromaStrip_WS2812FX_Brightness()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetQromaStrip_WS2812FX_Brightness copyWith(void Function(SetQromaStrip_WS2812FX_Brightness) updates) => super.copyWith((message) => updates(message as SetQromaStrip_WS2812FX_Brightness)) as SetQromaStrip_WS2812FX_Brightness;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetQromaStrip_WS2812FX_Brightness create() => SetQromaStrip_WS2812FX_Brightness._();
  SetQromaStrip_WS2812FX_Brightness createEmptyInstance() => create();
  static $pb.PbList<SetQromaStrip_WS2812FX_Brightness> createRepeated() => $pb.PbList<SetQromaStrip_WS2812FX_Brightness>();
  @$core.pragma('dart2js:noInline')
  static SetQromaStrip_WS2812FX_Brightness getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetQromaStrip_WS2812FX_Brightness>(create);
  static SetQromaStrip_WS2812FX_Brightness? _defaultInstance;

  @$pb.TagNumber(1)
  $0.QromaStrip_WS2812FX_StripIndex get stripIndex => $_getN(0);
  @$pb.TagNumber(1)
  set stripIndex($0.QromaStrip_WS2812FX_StripIndex v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStripIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearStripIndex() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get brightness => $_getIZ(1);
  @$pb.TagNumber(2)
  set brightness($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBrightness() => $_has(1);
  @$pb.TagNumber(2)
  void clearBrightness() => clearField(2);
}

class SetQromaStrip_WS2812FX_IoSettings extends $pb.GeneratedMessage {
  factory SetQromaStrip_WS2812FX_IoSettings({
    $0.QromaStrip_WS2812FX_StripIndex? stripIndex,
    $0.QromaStrip_WS2812FX_IoSettings? settings,
  }) {
    final $result = create();
    if (stripIndex != null) {
      $result.stripIndex = stripIndex;
    }
    if (settings != null) {
      $result.settings = settings;
    }
    return $result;
  }
  SetQromaStrip_WS2812FX_IoSettings._() : super();
  factory SetQromaStrip_WS2812FX_IoSettings.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetQromaStrip_WS2812FX_IoSettings.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetQromaStrip_WS2812FX_IoSettings', createEmptyInstance: create)
    ..e<$0.QromaStrip_WS2812FX_StripIndex>(1, _omitFieldNames ? '' : 'stripIndex', $pb.PbFieldType.OE, protoName: 'stripIndex', defaultOrMaker: $0.QromaStrip_WS2812FX_StripIndex.QSSI_NOT_SET, valueOf: $0.QromaStrip_WS2812FX_StripIndex.valueOf, enumValues: $0.QromaStrip_WS2812FX_StripIndex.values)
    ..aOM<$0.QromaStrip_WS2812FX_IoSettings>(2, _omitFieldNames ? '' : 'settings', subBuilder: $0.QromaStrip_WS2812FX_IoSettings.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetQromaStrip_WS2812FX_IoSettings clone() => SetQromaStrip_WS2812FX_IoSettings()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetQromaStrip_WS2812FX_IoSettings copyWith(void Function(SetQromaStrip_WS2812FX_IoSettings) updates) => super.copyWith((message) => updates(message as SetQromaStrip_WS2812FX_IoSettings)) as SetQromaStrip_WS2812FX_IoSettings;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetQromaStrip_WS2812FX_IoSettings create() => SetQromaStrip_WS2812FX_IoSettings._();
  SetQromaStrip_WS2812FX_IoSettings createEmptyInstance() => create();
  static $pb.PbList<SetQromaStrip_WS2812FX_IoSettings> createRepeated() => $pb.PbList<SetQromaStrip_WS2812FX_IoSettings>();
  @$core.pragma('dart2js:noInline')
  static SetQromaStrip_WS2812FX_IoSettings getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetQromaStrip_WS2812FX_IoSettings>(create);
  static SetQromaStrip_WS2812FX_IoSettings? _defaultInstance;

  @$pb.TagNumber(1)
  $0.QromaStrip_WS2812FX_StripIndex get stripIndex => $_getN(0);
  @$pb.TagNumber(1)
  set stripIndex($0.QromaStrip_WS2812FX_StripIndex v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStripIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearStripIndex() => clearField(1);

  @$pb.TagNumber(2)
  $0.QromaStrip_WS2812FX_IoSettings get settings => $_getN(1);
  @$pb.TagNumber(2)
  set settings($0.QromaStrip_WS2812FX_IoSettings v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSettings() => $_has(1);
  @$pb.TagNumber(2)
  void clearSettings() => clearField(2);
  @$pb.TagNumber(2)
  $0.QromaStrip_WS2812FX_IoSettings ensureSettings() => $_ensure(1);
}

class SaveQromaStrip_CurrentState extends $pb.GeneratedMessage {
  factory SaveQromaStrip_CurrentState({
    $0.QromaStrip_WS2812FX_StripIndex? stripIndex,
  }) {
    final $result = create();
    if (stripIndex != null) {
      $result.stripIndex = stripIndex;
    }
    return $result;
  }
  SaveQromaStrip_CurrentState._() : super();
  factory SaveQromaStrip_CurrentState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SaveQromaStrip_CurrentState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SaveQromaStrip_CurrentState', createEmptyInstance: create)
    ..e<$0.QromaStrip_WS2812FX_StripIndex>(1, _omitFieldNames ? '' : 'stripIndex', $pb.PbFieldType.OE, protoName: 'stripIndex', defaultOrMaker: $0.QromaStrip_WS2812FX_StripIndex.QSSI_NOT_SET, valueOf: $0.QromaStrip_WS2812FX_StripIndex.valueOf, enumValues: $0.QromaStrip_WS2812FX_StripIndex.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SaveQromaStrip_CurrentState clone() => SaveQromaStrip_CurrentState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SaveQromaStrip_CurrentState copyWith(void Function(SaveQromaStrip_CurrentState) updates) => super.copyWith((message) => updates(message as SaveQromaStrip_CurrentState)) as SaveQromaStrip_CurrentState;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SaveQromaStrip_CurrentState create() => SaveQromaStrip_CurrentState._();
  SaveQromaStrip_CurrentState createEmptyInstance() => create();
  static $pb.PbList<SaveQromaStrip_CurrentState> createRepeated() => $pb.PbList<SaveQromaStrip_CurrentState>();
  @$core.pragma('dart2js:noInline')
  static SaveQromaStrip_CurrentState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SaveQromaStrip_CurrentState>(create);
  static SaveQromaStrip_CurrentState? _defaultInstance;

  @$pb.TagNumber(1)
  $0.QromaStrip_WS2812FX_StripIndex get stripIndex => $_getN(0);
  @$pb.TagNumber(1)
  set stripIndex($0.QromaStrip_WS2812FX_StripIndex v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStripIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearStripIndex() => clearField(1);
}

enum QromaStripCommand_Command {
  setQromaStripBrightness, 
  setQromaStripSegmentAnimation, 
  setQromaStripSegments, 
  setQromaStripIoSettings, 
  saveQromaStripCurrentState, 
  notSet
}

class QromaStripCommand extends $pb.GeneratedMessage {
  factory QromaStripCommand({
    SetQromaStrip_WS2812FX_Brightness? setQromaStripBrightness,
    SetQromaStrip_WS2812FX_SegmentAnimation? setQromaStripSegmentAnimation,
    SetQromaStrip_WS2812FX_Segments? setQromaStripSegments,
    SetQromaStrip_WS2812FX_IoSettings? setQromaStripIoSettings,
    SaveQromaStrip_CurrentState? saveQromaStripCurrentState,
  }) {
    final $result = create();
    if (setQromaStripBrightness != null) {
      $result.setQromaStripBrightness = setQromaStripBrightness;
    }
    if (setQromaStripSegmentAnimation != null) {
      $result.setQromaStripSegmentAnimation = setQromaStripSegmentAnimation;
    }
    if (setQromaStripSegments != null) {
      $result.setQromaStripSegments = setQromaStripSegments;
    }
    if (setQromaStripIoSettings != null) {
      $result.setQromaStripIoSettings = setQromaStripIoSettings;
    }
    if (saveQromaStripCurrentState != null) {
      $result.saveQromaStripCurrentState = saveQromaStripCurrentState;
    }
    return $result;
  }
  QromaStripCommand._() : super();
  factory QromaStripCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QromaStripCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, QromaStripCommand_Command> _QromaStripCommand_CommandByTag = {
    1 : QromaStripCommand_Command.setQromaStripBrightness,
    2 : QromaStripCommand_Command.setQromaStripSegmentAnimation,
    3 : QromaStripCommand_Command.setQromaStripSegments,
    4 : QromaStripCommand_Command.setQromaStripIoSettings,
    5 : QromaStripCommand_Command.saveQromaStripCurrentState,
    0 : QromaStripCommand_Command.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QromaStripCommand', createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5])
    ..aOM<SetQromaStrip_WS2812FX_Brightness>(1, _omitFieldNames ? '' : 'setQromaStripBrightness', protoName: 'setQromaStripBrightness', subBuilder: SetQromaStrip_WS2812FX_Brightness.create)
    ..aOM<SetQromaStrip_WS2812FX_SegmentAnimation>(2, _omitFieldNames ? '' : 'setQromaStripSegmentAnimation', protoName: 'setQromaStripSegmentAnimation', subBuilder: SetQromaStrip_WS2812FX_SegmentAnimation.create)
    ..aOM<SetQromaStrip_WS2812FX_Segments>(3, _omitFieldNames ? '' : 'setQromaStripSegments', protoName: 'setQromaStripSegments', subBuilder: SetQromaStrip_WS2812FX_Segments.create)
    ..aOM<SetQromaStrip_WS2812FX_IoSettings>(4, _omitFieldNames ? '' : 'setQromaStripIoSettings', protoName: 'setQromaStripIoSettings', subBuilder: SetQromaStrip_WS2812FX_IoSettings.create)
    ..aOM<SaveQromaStrip_CurrentState>(5, _omitFieldNames ? '' : 'saveQromaStripCurrentState', protoName: 'saveQromaStripCurrentState', subBuilder: SaveQromaStrip_CurrentState.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QromaStripCommand clone() => QromaStripCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QromaStripCommand copyWith(void Function(QromaStripCommand) updates) => super.copyWith((message) => updates(message as QromaStripCommand)) as QromaStripCommand;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QromaStripCommand create() => QromaStripCommand._();
  QromaStripCommand createEmptyInstance() => create();
  static $pb.PbList<QromaStripCommand> createRepeated() => $pb.PbList<QromaStripCommand>();
  @$core.pragma('dart2js:noInline')
  static QromaStripCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QromaStripCommand>(create);
  static QromaStripCommand? _defaultInstance;

  QromaStripCommand_Command whichCommand() => _QromaStripCommand_CommandByTag[$_whichOneof(0)]!;
  void clearCommand() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SetQromaStrip_WS2812FX_Brightness get setQromaStripBrightness => $_getN(0);
  @$pb.TagNumber(1)
  set setQromaStripBrightness(SetQromaStrip_WS2812FX_Brightness v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSetQromaStripBrightness() => $_has(0);
  @$pb.TagNumber(1)
  void clearSetQromaStripBrightness() => clearField(1);
  @$pb.TagNumber(1)
  SetQromaStrip_WS2812FX_Brightness ensureSetQromaStripBrightness() => $_ensure(0);

  @$pb.TagNumber(2)
  SetQromaStrip_WS2812FX_SegmentAnimation get setQromaStripSegmentAnimation => $_getN(1);
  @$pb.TagNumber(2)
  set setQromaStripSegmentAnimation(SetQromaStrip_WS2812FX_SegmentAnimation v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSetQromaStripSegmentAnimation() => $_has(1);
  @$pb.TagNumber(2)
  void clearSetQromaStripSegmentAnimation() => clearField(2);
  @$pb.TagNumber(2)
  SetQromaStrip_WS2812FX_SegmentAnimation ensureSetQromaStripSegmentAnimation() => $_ensure(1);

  @$pb.TagNumber(3)
  SetQromaStrip_WS2812FX_Segments get setQromaStripSegments => $_getN(2);
  @$pb.TagNumber(3)
  set setQromaStripSegments(SetQromaStrip_WS2812FX_Segments v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSetQromaStripSegments() => $_has(2);
  @$pb.TagNumber(3)
  void clearSetQromaStripSegments() => clearField(3);
  @$pb.TagNumber(3)
  SetQromaStrip_WS2812FX_Segments ensureSetQromaStripSegments() => $_ensure(2);

  @$pb.TagNumber(4)
  SetQromaStrip_WS2812FX_IoSettings get setQromaStripIoSettings => $_getN(3);
  @$pb.TagNumber(4)
  set setQromaStripIoSettings(SetQromaStrip_WS2812FX_IoSettings v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSetQromaStripIoSettings() => $_has(3);
  @$pb.TagNumber(4)
  void clearSetQromaStripIoSettings() => clearField(4);
  @$pb.TagNumber(4)
  SetQromaStrip_WS2812FX_IoSettings ensureSetQromaStripIoSettings() => $_ensure(3);

  @$pb.TagNumber(5)
  SaveQromaStrip_CurrentState get saveQromaStripCurrentState => $_getN(4);
  @$pb.TagNumber(5)
  set saveQromaStripCurrentState(SaveQromaStrip_CurrentState v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSaveQromaStripCurrentState() => $_has(4);
  @$pb.TagNumber(5)
  void clearSaveQromaStripCurrentState() => clearField(5);
  @$pb.TagNumber(5)
  SaveQromaStrip_CurrentState ensureSaveQromaStripCurrentState() => $_ensure(4);
}

class QromaStripResponse extends $pb.GeneratedMessage {
  factory QromaStripResponse() => create();
  QromaStripResponse._() : super();
  factory QromaStripResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QromaStripResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QromaStripResponse', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QromaStripResponse clone() => QromaStripResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QromaStripResponse copyWith(void Function(QromaStripResponse) updates) => super.copyWith((message) => updates(message as QromaStripResponse)) as QromaStripResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QromaStripResponse create() => QromaStripResponse._();
  QromaStripResponse createEmptyInstance() => create();
  static $pb.PbList<QromaStripResponse> createRepeated() => $pb.PbList<QromaStripResponse>();
  @$core.pragma('dart2js:noInline')
  static QromaStripResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QromaStripResponse>(create);
  static QromaStripResponse? _defaultInstance;
}

class QromaStrip_Status extends $pb.GeneratedMessage {
  factory QromaStrip_Status({
    $core.int? lastConfigChangeTimeInMs,
  }) {
    final $result = create();
    if (lastConfigChangeTimeInMs != null) {
      $result.lastConfigChangeTimeInMs = lastConfigChangeTimeInMs;
    }
    return $result;
  }
  QromaStrip_Status._() : super();
  factory QromaStrip_Status.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QromaStrip_Status.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QromaStrip_Status', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'lastConfigChangeTimeInMs', $pb.PbFieldType.OU3, protoName: 'lastConfigChangeTimeInMs')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QromaStrip_Status clone() => QromaStrip_Status()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QromaStrip_Status copyWith(void Function(QromaStrip_Status) updates) => super.copyWith((message) => updates(message as QromaStrip_Status)) as QromaStrip_Status;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QromaStrip_Status create() => QromaStrip_Status._();
  QromaStrip_Status createEmptyInstance() => create();
  static $pb.PbList<QromaStrip_Status> createRepeated() => $pb.PbList<QromaStrip_Status>();
  @$core.pragma('dart2js:noInline')
  static QromaStrip_Status getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QromaStrip_Status>(create);
  static QromaStrip_Status? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get lastConfigChangeTimeInMs => $_getIZ(0);
  @$pb.TagNumber(1)
  set lastConfigChangeTimeInMs($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLastConfigChangeTimeInMs() => $_has(0);
  @$pb.TagNumber(1)
  void clearLastConfigChangeTimeInMs() => clearField(1);
}

class QpmCommand_SetQromaStripName extends $pb.GeneratedMessage {
  factory QpmCommand_SetQromaStripName({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  QpmCommand_SetQromaStripName._() : super();
  factory QpmCommand_SetQromaStripName.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QpmCommand_SetQromaStripName.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QpmCommand_SetQromaStripName', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QpmCommand_SetQromaStripName clone() => QpmCommand_SetQromaStripName()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QpmCommand_SetQromaStripName copyWith(void Function(QpmCommand_SetQromaStripName) updates) => super.copyWith((message) => updates(message as QpmCommand_SetQromaStripName)) as QpmCommand_SetQromaStripName;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QpmCommand_SetQromaStripName create() => QpmCommand_SetQromaStripName._();
  QpmCommand_SetQromaStripName createEmptyInstance() => create();
  static $pb.PbList<QpmCommand_SetQromaStripName> createRepeated() => $pb.PbList<QpmCommand_SetQromaStripName>();
  @$core.pragma('dart2js:noInline')
  static QpmCommand_SetQromaStripName getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QpmCommand_SetQromaStripName>(create);
  static QpmCommand_SetQromaStripName? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class SetQromaDeviceName extends $pb.GeneratedMessage {
  factory SetQromaDeviceName({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  SetQromaDeviceName._() : super();
  factory SetQromaDeviceName.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetQromaDeviceName.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetQromaDeviceName', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetQromaDeviceName clone() => SetQromaDeviceName()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetQromaDeviceName copyWith(void Function(SetQromaDeviceName) updates) => super.copyWith((message) => updates(message as SetQromaDeviceName)) as SetQromaDeviceName;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetQromaDeviceName create() => SetQromaDeviceName._();
  SetQromaDeviceName createEmptyInstance() => create();
  static $pb.PbList<SetQromaDeviceName> createRepeated() => $pb.PbList<SetQromaDeviceName>();
  @$core.pragma('dart2js:noInline')
  static SetQromaDeviceName getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetQromaDeviceName>(create);
  static SetQromaDeviceName? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class UseCurrentSetupOnStartup extends $pb.GeneratedMessage {
  factory UseCurrentSetupOnStartup({
    $core.int? delayInMs,
  }) {
    final $result = create();
    if (delayInMs != null) {
      $result.delayInMs = delayInMs;
    }
    return $result;
  }
  UseCurrentSetupOnStartup._() : super();
  factory UseCurrentSetupOnStartup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UseCurrentSetupOnStartup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UseCurrentSetupOnStartup', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'delayInMs', $pb.PbFieldType.OU3, protoName: 'delayInMs')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UseCurrentSetupOnStartup clone() => UseCurrentSetupOnStartup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UseCurrentSetupOnStartup copyWith(void Function(UseCurrentSetupOnStartup) updates) => super.copyWith((message) => updates(message as UseCurrentSetupOnStartup)) as UseCurrentSetupOnStartup;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UseCurrentSetupOnStartup create() => UseCurrentSetupOnStartup._();
  UseCurrentSetupOnStartup createEmptyInstance() => create();
  static $pb.PbList<UseCurrentSetupOnStartup> createRepeated() => $pb.PbList<UseCurrentSetupOnStartup>();
  @$core.pragma('dart2js:noInline')
  static UseCurrentSetupOnStartup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UseCurrentSetupOnStartup>(create);
  static UseCurrentSetupOnStartup? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get delayInMs => $_getIZ(0);
  @$pb.TagNumber(1)
  set delayInMs($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDelayInMs() => $_has(0);
  @$pb.TagNumber(1)
  void clearDelayInMs() => clearField(1);
}

enum QromaLightsCommand_Command {
  setQromaDeviceName, 
  qromaStripCommand, 
  notSet
}

class QromaLightsCommand extends $pb.GeneratedMessage {
  factory QromaLightsCommand({
    SetQromaDeviceName? setQromaDeviceName,
    QromaStripCommand? qromaStripCommand,
  }) {
    final $result = create();
    if (setQromaDeviceName != null) {
      $result.setQromaDeviceName = setQromaDeviceName;
    }
    if (qromaStripCommand != null) {
      $result.qromaStripCommand = qromaStripCommand;
    }
    return $result;
  }
  QromaLightsCommand._() : super();
  factory QromaLightsCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QromaLightsCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, QromaLightsCommand_Command> _QromaLightsCommand_CommandByTag = {
    1 : QromaLightsCommand_Command.setQromaDeviceName,
    2 : QromaLightsCommand_Command.qromaStripCommand,
    0 : QromaLightsCommand_Command.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QromaLightsCommand', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SetQromaDeviceName>(1, _omitFieldNames ? '' : 'setQromaDeviceName', protoName: 'setQromaDeviceName', subBuilder: SetQromaDeviceName.create)
    ..aOM<QromaStripCommand>(2, _omitFieldNames ? '' : 'qromaStripCommand', protoName: 'qromaStripCommand', subBuilder: QromaStripCommand.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QromaLightsCommand clone() => QromaLightsCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QromaLightsCommand copyWith(void Function(QromaLightsCommand) updates) => super.copyWith((message) => updates(message as QromaLightsCommand)) as QromaLightsCommand;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QromaLightsCommand create() => QromaLightsCommand._();
  QromaLightsCommand createEmptyInstance() => create();
  static $pb.PbList<QromaLightsCommand> createRepeated() => $pb.PbList<QromaLightsCommand>();
  @$core.pragma('dart2js:noInline')
  static QromaLightsCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QromaLightsCommand>(create);
  static QromaLightsCommand? _defaultInstance;

  QromaLightsCommand_Command whichCommand() => _QromaLightsCommand_CommandByTag[$_whichOneof(0)]!;
  void clearCommand() => clearField($_whichOneof(0));

  /// NoArgCommands_QromaLightsCommand noArgCommand = 1;
  @$pb.TagNumber(1)
  SetQromaDeviceName get setQromaDeviceName => $_getN(0);
  @$pb.TagNumber(1)
  set setQromaDeviceName(SetQromaDeviceName v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSetQromaDeviceName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSetQromaDeviceName() => clearField(1);
  @$pb.TagNumber(1)
  SetQromaDeviceName ensureSetQromaDeviceName() => $_ensure(0);

  @$pb.TagNumber(2)
  QromaStripCommand get qromaStripCommand => $_getN(1);
  @$pb.TagNumber(2)
  set qromaStripCommand(QromaStripCommand v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasQromaStripCommand() => $_has(1);
  @$pb.TagNumber(2)
  void clearQromaStripCommand() => clearField(2);
  @$pb.TagNumber(2)
  QromaStripCommand ensureQromaStripCommand() => $_ensure(1);
}

enum QromaLightsResponse_Response {
  qromaLightsConfigResponse, 
  notSet
}

class QromaLightsResponse extends $pb.GeneratedMessage {
  factory QromaLightsResponse({
    $0.QromaLightsConfig? qromaLightsConfigResponse,
  }) {
    final $result = create();
    if (qromaLightsConfigResponse != null) {
      $result.qromaLightsConfigResponse = qromaLightsConfigResponse;
    }
    return $result;
  }
  QromaLightsResponse._() : super();
  factory QromaLightsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QromaLightsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, QromaLightsResponse_Response> _QromaLightsResponse_ResponseByTag = {
    1 : QromaLightsResponse_Response.qromaLightsConfigResponse,
    0 : QromaLightsResponse_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QromaLightsResponse', createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<$0.QromaLightsConfig>(1, _omitFieldNames ? '' : 'qromaLightsConfigResponse', protoName: 'qromaLightsConfigResponse', subBuilder: $0.QromaLightsConfig.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QromaLightsResponse clone() => QromaLightsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QromaLightsResponse copyWith(void Function(QromaLightsResponse) updates) => super.copyWith((message) => updates(message as QromaLightsResponse)) as QromaLightsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QromaLightsResponse create() => QromaLightsResponse._();
  QromaLightsResponse createEmptyInstance() => create();
  static $pb.PbList<QromaLightsResponse> createRepeated() => $pb.PbList<QromaLightsResponse>();
  @$core.pragma('dart2js:noInline')
  static QromaLightsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QromaLightsResponse>(create);
  static QromaLightsResponse? _defaultInstance;

  QromaLightsResponse_Response whichResponse() => _QromaLightsResponse_ResponseByTag[$_whichOneof(0)]!;
  void clearResponse() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $0.QromaLightsConfig get qromaLightsConfigResponse => $_getN(0);
  @$pb.TagNumber(1)
  set qromaLightsConfigResponse($0.QromaLightsConfig v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasQromaLightsConfigResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearQromaLightsConfigResponse() => clearField(1);
  @$pb.TagNumber(1)
  $0.QromaLightsConfig ensureQromaLightsConfigResponse() => $_ensure(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
