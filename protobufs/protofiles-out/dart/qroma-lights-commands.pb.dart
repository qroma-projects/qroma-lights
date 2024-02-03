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
  setQromaStripAnimation, 
  setQromaStripIoSettings, 
  notSet
}

class QromaStripCommand extends $pb.GeneratedMessage {
  factory QromaStripCommand({
    $0.QromaStrip_WS2812FX_StripIndex? stripIndex,
    $core.int? setQromaStripBrightness,
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
    11 : QromaStripCommand_Command.setQromaStripAnimation,
    12 : QromaStripCommand_Command.setQromaStripIoSettings,
    0 : QromaStripCommand_Command.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QromaStripCommand', createEmptyInstance: create)
    ..oo(0, [10, 11, 12])
    ..e<$0.QromaStrip_WS2812FX_StripIndex>(1, _omitFieldNames ? '' : 'stripIndex', $pb.PbFieldType.OE, protoName: 'stripIndex', defaultOrMaker: $0.QromaStrip_WS2812FX_StripIndex.QSSI_NOT_SET, valueOf: $0.QromaStrip_WS2812FX_StripIndex.valueOf, enumValues: $0.QromaStrip_WS2812FX_StripIndex.values)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'setQromaStripBrightness', $pb.PbFieldType.OU3, protoName: 'setQromaStripBrightness')
    ..aOM<$0.QromaStrip_WS2812FX_Animation>(11, _omitFieldNames ? '' : 'setQromaStripAnimation', protoName: 'setQromaStripAnimation', subBuilder: $0.QromaStrip_WS2812FX_Animation.create)
    ..aOM<$0.QromaStrip_WS2812FX_IoSettings>(12, _omitFieldNames ? '' : 'setQromaStripIoSettings', protoName: 'setQromaStripIoSettings', subBuilder: $0.QromaStrip_WS2812FX_IoSettings.create)
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
  $0.QromaStrip_WS2812FX_Animation get setQromaStripAnimation => $_getN(2);
  @$pb.TagNumber(11)
  set setQromaStripAnimation($0.QromaStrip_WS2812FX_Animation v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasSetQromaStripAnimation() => $_has(2);
  @$pb.TagNumber(11)
  void clearSetQromaStripAnimation() => clearField(11);
  @$pb.TagNumber(11)
  $0.QromaStrip_WS2812FX_Animation ensureSetQromaStripAnimation() => $_ensure(2);

  @$pb.TagNumber(12)
  $0.QromaStrip_WS2812FX_IoSettings get setQromaStripIoSettings => $_getN(3);
  @$pb.TagNumber(12)
  set setQromaStripIoSettings($0.QromaStrip_WS2812FX_IoSettings v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasSetQromaStripIoSettings() => $_has(3);
  @$pb.TagNumber(12)
  void clearSetQromaStripIoSettings() => clearField(12);
  @$pb.TagNumber(12)
  $0.QromaStrip_WS2812FX_IoSettings ensureSetQromaStripIoSettings() => $_ensure(3);
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
    $core.int? startupDelayInMs,
  }) {
    final $result = create();
    if (startupDelayInMs != null) {
      $result.startupDelayInMs = startupDelayInMs;
    }
    return $result;
  }
  UseCurrentSetupOnStartup._() : super();
  factory UseCurrentSetupOnStartup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UseCurrentSetupOnStartup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UseCurrentSetupOnStartup', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'startupDelayInMs', $pb.PbFieldType.OU3, protoName: 'startupDelayInMs')
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
  $core.int get startupDelayInMs => $_getIZ(0);
  @$pb.TagNumber(1)
  set startupDelayInMs($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStartupDelayInMs() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartupDelayInMs() => clearField(1);
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

enum QromaLightsResponse_Response {
  qromaLightsConfigResponse, 
  error, 
  notSet
}

class QromaLightsResponse extends $pb.GeneratedMessage {
  factory QromaLightsResponse({
    $0.QromaLightsDeviceConfig? qromaLightsConfigResponse,
    QromaLightsDeviceError? error,
  }) {
    final $result = create();
    if (qromaLightsConfigResponse != null) {
      $result.qromaLightsConfigResponse = qromaLightsConfigResponse;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  QromaLightsResponse._() : super();
  factory QromaLightsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QromaLightsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, QromaLightsResponse_Response> _QromaLightsResponse_ResponseByTag = {
    1 : QromaLightsResponse_Response.qromaLightsConfigResponse,
    2 : QromaLightsResponse_Response.error,
    0 : QromaLightsResponse_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QromaLightsResponse', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<$0.QromaLightsDeviceConfig>(1, _omitFieldNames ? '' : 'qromaLightsConfigResponse', protoName: 'qromaLightsConfigResponse', subBuilder: $0.QromaLightsDeviceConfig.create)
    ..aOM<QromaLightsDeviceError>(2, _omitFieldNames ? '' : 'error', subBuilder: QromaLightsDeviceError.create)
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
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
