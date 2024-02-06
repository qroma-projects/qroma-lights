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

import 'qroma-lights-commands.pbenum.dart';
import 'qroma-lights-types.pb.dart' as $0;
import 'qroma-lights-types.pbenum.dart' as $0;

export 'qroma-lights-commands.pbenum.dart';

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
  setQromaStripName, 
  setQromaStripAnimation, 
  setQromaStripIoSettings, 
  notSet
}

class QromaStripCommand extends $pb.GeneratedMessage {
  factory QromaStripCommand({
    $0.QromaStrip_WS2812FX_StripIndex? stripIndex,
    $core.int? setQromaStripBrightness,
    $core.String? setQromaStripName,
    $0.QromaStrip_WS2812FX_Animation? setQromaStripAnimation,
    $0.QromaStrip_WS2812FX_IoSettings? setQromaStripIoSettings,
  }) {
    final $result = create();
    if (stripIndex != null) {
      $result.stripIndex = stripIndex;
    }
    if (setQromaStripBrightness != null) {
      $result.setQromaStripBrightness = setQromaStripBrightness;
    }
    if (setQromaStripName != null) {
      $result.setQromaStripName = setQromaStripName;
    }
    if (setQromaStripAnimation != null) {
      $result.setQromaStripAnimation = setQromaStripAnimation;
    }
    if (setQromaStripIoSettings != null) {
      $result.setQromaStripIoSettings = setQromaStripIoSettings;
    }
    return $result;
  }
  QromaStripCommand._() : super();
  factory QromaStripCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QromaStripCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, QromaStripCommand_Command> _QromaStripCommand_CommandByTag = {
    10 : QromaStripCommand_Command.setQromaStripBrightness,
    11 : QromaStripCommand_Command.setQromaStripName,
    12 : QromaStripCommand_Command.setQromaStripAnimation,
    13 : QromaStripCommand_Command.setQromaStripIoSettings,
    0 : QromaStripCommand_Command.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QromaStripCommand', createEmptyInstance: create)
    ..oo(0, [10, 11, 12, 13])
    ..e<$0.QromaStrip_WS2812FX_StripIndex>(1, _omitFieldNames ? '' : 'stripIndex', $pb.PbFieldType.OE, protoName: 'stripIndex', defaultOrMaker: $0.QromaStrip_WS2812FX_StripIndex.QSSI_NOT_SET, valueOf: $0.QromaStrip_WS2812FX_StripIndex.valueOf, enumValues: $0.QromaStrip_WS2812FX_StripIndex.values)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'setQromaStripBrightness', $pb.PbFieldType.OU3, protoName: 'setQromaStripBrightness')
    ..aOS(11, _omitFieldNames ? '' : 'setQromaStripName', protoName: 'setQromaStripName')
    ..aOM<$0.QromaStrip_WS2812FX_Animation>(12, _omitFieldNames ? '' : 'setQromaStripAnimation', protoName: 'setQromaStripAnimation', subBuilder: $0.QromaStrip_WS2812FX_Animation.create)
    ..aOM<$0.QromaStrip_WS2812FX_IoSettings>(13, _omitFieldNames ? '' : 'setQromaStripIoSettings', protoName: 'setQromaStripIoSettings', subBuilder: $0.QromaStrip_WS2812FX_IoSettings.create)
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
  $0.QromaStrip_WS2812FX_StripIndex get stripIndex => $_getN(0);
  @$pb.TagNumber(1)
  set stripIndex($0.QromaStrip_WS2812FX_StripIndex v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStripIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearStripIndex() => clearField(1);

  @$pb.TagNumber(10)
  $core.int get setQromaStripBrightness => $_getIZ(1);
  @$pb.TagNumber(10)
  set setQromaStripBrightness($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(10)
  $core.bool hasSetQromaStripBrightness() => $_has(1);
  @$pb.TagNumber(10)
  void clearSetQromaStripBrightness() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get setQromaStripName => $_getSZ(2);
  @$pb.TagNumber(11)
  set setQromaStripName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(11)
  $core.bool hasSetQromaStripName() => $_has(2);
  @$pb.TagNumber(11)
  void clearSetQromaStripName() => clearField(11);

  @$pb.TagNumber(12)
  $0.QromaStrip_WS2812FX_Animation get setQromaStripAnimation => $_getN(3);
  @$pb.TagNumber(12)
  set setQromaStripAnimation($0.QromaStrip_WS2812FX_Animation v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasSetQromaStripAnimation() => $_has(3);
  @$pb.TagNumber(12)
  void clearSetQromaStripAnimation() => clearField(12);
  @$pb.TagNumber(12)
  $0.QromaStrip_WS2812FX_Animation ensureSetQromaStripAnimation() => $_ensure(3);

  @$pb.TagNumber(13)
  $0.QromaStrip_WS2812FX_IoSettings get setQromaStripIoSettings => $_getN(4);
  @$pb.TagNumber(13)
  set setQromaStripIoSettings($0.QromaStrip_WS2812FX_IoSettings v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasSetQromaStripIoSettings() => $_has(4);
  @$pb.TagNumber(13)
  void clearSetQromaStripIoSettings() => clearField(13);
  @$pb.TagNumber(13)
  $0.QromaStrip_WS2812FX_IoSettings ensureSetQromaStripIoSettings() => $_ensure(4);
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

enum QromaLightsDeviceCommand_Command {
  noArgCommand, 
  setQromaDeviceName, 
  qromaStripCommand, 
  notSet
}

class QromaLightsDeviceCommand extends $pb.GeneratedMessage {
  factory QromaLightsDeviceCommand({
    NoArgCommands_QromaLightsDeviceCommand? noArgCommand,
    SetQromaDeviceName? setQromaDeviceName,
    QromaStripCommand? qromaStripCommand,
  }) {
    final $result = create();
    if (noArgCommand != null) {
      $result.noArgCommand = noArgCommand;
    }
    if (setQromaDeviceName != null) {
      $result.setQromaDeviceName = setQromaDeviceName;
    }
    if (qromaStripCommand != null) {
      $result.qromaStripCommand = qromaStripCommand;
    }
    return $result;
  }
  QromaLightsDeviceCommand._() : super();
  factory QromaLightsDeviceCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QromaLightsDeviceCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, QromaLightsDeviceCommand_Command> _QromaLightsDeviceCommand_CommandByTag = {
    1 : QromaLightsDeviceCommand_Command.noArgCommand,
    2 : QromaLightsDeviceCommand_Command.setQromaDeviceName,
    3 : QromaLightsDeviceCommand_Command.qromaStripCommand,
    0 : QromaLightsDeviceCommand_Command.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QromaLightsDeviceCommand', createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..e<NoArgCommands_QromaLightsDeviceCommand>(1, _omitFieldNames ? '' : 'noArgCommand', $pb.PbFieldType.OE, protoName: 'noArgCommand', defaultOrMaker: NoArgCommands_QromaLightsDeviceCommand.NacQlc_NotSet, valueOf: NoArgCommands_QromaLightsDeviceCommand.valueOf, enumValues: NoArgCommands_QromaLightsDeviceCommand.values)
    ..aOM<SetQromaDeviceName>(2, _omitFieldNames ? '' : 'setQromaDeviceName', protoName: 'setQromaDeviceName', subBuilder: SetQromaDeviceName.create)
    ..aOM<QromaStripCommand>(3, _omitFieldNames ? '' : 'qromaStripCommand', protoName: 'qromaStripCommand', subBuilder: QromaStripCommand.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QromaLightsDeviceCommand clone() => QromaLightsDeviceCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QromaLightsDeviceCommand copyWith(void Function(QromaLightsDeviceCommand) updates) => super.copyWith((message) => updates(message as QromaLightsDeviceCommand)) as QromaLightsDeviceCommand;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QromaLightsDeviceCommand create() => QromaLightsDeviceCommand._();
  QromaLightsDeviceCommand createEmptyInstance() => create();
  static $pb.PbList<QromaLightsDeviceCommand> createRepeated() => $pb.PbList<QromaLightsDeviceCommand>();
  @$core.pragma('dart2js:noInline')
  static QromaLightsDeviceCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QromaLightsDeviceCommand>(create);
  static QromaLightsDeviceCommand? _defaultInstance;

  QromaLightsDeviceCommand_Command whichCommand() => _QromaLightsDeviceCommand_CommandByTag[$_whichOneof(0)]!;
  void clearCommand() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  NoArgCommands_QromaLightsDeviceCommand get noArgCommand => $_getN(0);
  @$pb.TagNumber(1)
  set noArgCommand(NoArgCommands_QromaLightsDeviceCommand v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNoArgCommand() => $_has(0);
  @$pb.TagNumber(1)
  void clearNoArgCommand() => clearField(1);

  @$pb.TagNumber(2)
  SetQromaDeviceName get setQromaDeviceName => $_getN(1);
  @$pb.TagNumber(2)
  set setQromaDeviceName(SetQromaDeviceName v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSetQromaDeviceName() => $_has(1);
  @$pb.TagNumber(2)
  void clearSetQromaDeviceName() => clearField(2);
  @$pb.TagNumber(2)
  SetQromaDeviceName ensureSetQromaDeviceName() => $_ensure(1);

  @$pb.TagNumber(3)
  QromaStripCommand get qromaStripCommand => $_getN(2);
  @$pb.TagNumber(3)
  set qromaStripCommand(QromaStripCommand v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasQromaStripCommand() => $_has(2);
  @$pb.TagNumber(3)
  void clearQromaStripCommand() => clearField(3);
  @$pb.TagNumber(3)
  QromaStripCommand ensureQromaStripCommand() => $_ensure(2);
}

class QromaLightsDeviceError extends $pb.GeneratedMessage {
  factory QromaLightsDeviceError({
    $core.String? message,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  QromaLightsDeviceError._() : super();
  factory QromaLightsDeviceError.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QromaLightsDeviceError.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QromaLightsDeviceError', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QromaLightsDeviceError clone() => QromaLightsDeviceError()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QromaLightsDeviceError copyWith(void Function(QromaLightsDeviceError) updates) => super.copyWith((message) => updates(message as QromaLightsDeviceError)) as QromaLightsDeviceError;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QromaLightsDeviceError create() => QromaLightsDeviceError._();
  QromaLightsDeviceError createEmptyInstance() => create();
  static $pb.PbList<QromaLightsDeviceError> createRepeated() => $pb.PbList<QromaLightsDeviceError>();
  @$core.pragma('dart2js:noInline')
  static QromaLightsDeviceError getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QromaLightsDeviceError>(create);
  static QromaLightsDeviceError? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class QromaLightsDeviceConfigUpdated extends $pb.GeneratedMessage {
  factory QromaLightsDeviceConfigUpdated({
    $core.int? updateTime,
    $0.QromaLightsDeviceConfig? updateConfig,
    $core.String? updateDescription,
  }) {
    final $result = create();
    if (updateTime != null) {
      $result.updateTime = updateTime;
    }
    if (updateConfig != null) {
      $result.updateConfig = updateConfig;
    }
    if (updateDescription != null) {
      $result.updateDescription = updateDescription;
    }
    return $result;
  }
  QromaLightsDeviceConfigUpdated._() : super();
  factory QromaLightsDeviceConfigUpdated.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QromaLightsDeviceConfigUpdated.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QromaLightsDeviceConfigUpdated', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'updateTime', $pb.PbFieldType.OU3, protoName: 'updateTime')
    ..aOM<$0.QromaLightsDeviceConfig>(2, _omitFieldNames ? '' : 'updateConfig', protoName: 'updateConfig', subBuilder: $0.QromaLightsDeviceConfig.create)
    ..aOS(3, _omitFieldNames ? '' : 'updateDescription', protoName: 'updateDescription')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QromaLightsDeviceConfigUpdated clone() => QromaLightsDeviceConfigUpdated()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QromaLightsDeviceConfigUpdated copyWith(void Function(QromaLightsDeviceConfigUpdated) updates) => super.copyWith((message) => updates(message as QromaLightsDeviceConfigUpdated)) as QromaLightsDeviceConfigUpdated;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QromaLightsDeviceConfigUpdated create() => QromaLightsDeviceConfigUpdated._();
  QromaLightsDeviceConfigUpdated createEmptyInstance() => create();
  static $pb.PbList<QromaLightsDeviceConfigUpdated> createRepeated() => $pb.PbList<QromaLightsDeviceConfigUpdated>();
  @$core.pragma('dart2js:noInline')
  static QromaLightsDeviceConfigUpdated getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QromaLightsDeviceConfigUpdated>(create);
  static QromaLightsDeviceConfigUpdated? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get updateTime => $_getIZ(0);
  @$pb.TagNumber(1)
  set updateTime($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUpdateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearUpdateTime() => clearField(1);

  @$pb.TagNumber(2)
  $0.QromaLightsDeviceConfig get updateConfig => $_getN(1);
  @$pb.TagNumber(2)
  set updateConfig($0.QromaLightsDeviceConfig v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUpdateConfig() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdateConfig() => clearField(2);
  @$pb.TagNumber(2)
  $0.QromaLightsDeviceConfig ensureUpdateConfig() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get updateDescription => $_getSZ(2);
  @$pb.TagNumber(3)
  set updateDescription($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdateDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdateDescription() => clearField(3);
}

enum QromaLightsResponse_Response {
  qromaLightsConfigResponse, 
  error, 
  configUpdatedResponse, 
  notSet
}

class QromaLightsResponse extends $pb.GeneratedMessage {
  factory QromaLightsResponse({
    $0.QromaLightsDeviceConfig? qromaLightsConfigResponse,
    QromaLightsDeviceError? error,
    QromaLightsDeviceConfigUpdated? configUpdatedResponse,
  }) {
    final $result = create();
    if (qromaLightsConfigResponse != null) {
      $result.qromaLightsConfigResponse = qromaLightsConfigResponse;
    }
    if (error != null) {
      $result.error = error;
    }
    if (configUpdatedResponse != null) {
      $result.configUpdatedResponse = configUpdatedResponse;
    }
    return $result;
  }
  QromaLightsResponse._() : super();
  factory QromaLightsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QromaLightsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, QromaLightsResponse_Response> _QromaLightsResponse_ResponseByTag = {
    1 : QromaLightsResponse_Response.qromaLightsConfigResponse,
    2 : QromaLightsResponse_Response.error,
    3 : QromaLightsResponse_Response.configUpdatedResponse,
    0 : QromaLightsResponse_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QromaLightsResponse', createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<$0.QromaLightsDeviceConfig>(1, _omitFieldNames ? '' : 'qromaLightsConfigResponse', protoName: 'qromaLightsConfigResponse', subBuilder: $0.QromaLightsDeviceConfig.create)
    ..aOM<QromaLightsDeviceError>(2, _omitFieldNames ? '' : 'error', subBuilder: QromaLightsDeviceError.create)
    ..aOM<QromaLightsDeviceConfigUpdated>(3, _omitFieldNames ? '' : 'configUpdatedResponse', protoName: 'configUpdatedResponse', subBuilder: QromaLightsDeviceConfigUpdated.create)
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
  $0.QromaLightsDeviceConfig get qromaLightsConfigResponse => $_getN(0);
  @$pb.TagNumber(1)
  set qromaLightsConfigResponse($0.QromaLightsDeviceConfig v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasQromaLightsConfigResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearQromaLightsConfigResponse() => clearField(1);
  @$pb.TagNumber(1)
  $0.QromaLightsDeviceConfig ensureQromaLightsConfigResponse() => $_ensure(0);

  @$pb.TagNumber(2)
  QromaLightsDeviceError get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(QromaLightsDeviceError v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  QromaLightsDeviceError ensureError() => $_ensure(1);

  @$pb.TagNumber(3)
  QromaLightsDeviceConfigUpdated get configUpdatedResponse => $_getN(2);
  @$pb.TagNumber(3)
  set configUpdatedResponse(QromaLightsDeviceConfigUpdated v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasConfigUpdatedResponse() => $_has(2);
  @$pb.TagNumber(3)
  void clearConfigUpdatedResponse() => clearField(3);
  @$pb.TagNumber(3)
  QromaLightsDeviceConfigUpdated ensureConfigUpdatedResponse() => $_ensure(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
