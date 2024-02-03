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

/// not sure how I feel about this, but let's try it out, at least
class NoArgCommands_QromaLightsDeviceCommand extends $pb.ProtobufEnum {
  static const NoArgCommands_QromaLightsDeviceCommand NacQlc_NotSet = NoArgCommands_QromaLightsDeviceCommand._(0, _omitEnumNames ? '' : 'NacQlc_NotSet');
  static const NoArgCommands_QromaLightsDeviceCommand NacQlc_UseCurrentSetupOnStartup = NoArgCommands_QromaLightsDeviceCommand._(1, _omitEnumNames ? '' : 'NacQlc_UseCurrentSetupOnStartup');
  static const NoArgCommands_QromaLightsDeviceCommand NacQlc_RestartQromaDevice = NoArgCommands_QromaLightsDeviceCommand._(2, _omitEnumNames ? '' : 'NacQlc_RestartQromaDevice');
  static const NoArgCommands_QromaLightsDeviceCommand NacQlc_FactoryResetQromaDevice = NoArgCommands_QromaLightsDeviceCommand._(3, _omitEnumNames ? '' : 'NacQlc_FactoryResetQromaDevice');
  static const NoArgCommands_QromaLightsDeviceCommand NacQlc_RequestQromaLightsConfig = NoArgCommands_QromaLightsDeviceCommand._(4, _omitEnumNames ? '' : 'NacQlc_RequestQromaLightsConfig');

  static const $core.List<NoArgCommands_QromaLightsDeviceCommand> values = <NoArgCommands_QromaLightsDeviceCommand> [
    NacQlc_NotSet,
    NacQlc_UseCurrentSetupOnStartup,
    NacQlc_RestartQromaDevice,
    NacQlc_FactoryResetQromaDevice,
    NacQlc_RequestQromaLightsConfig,
  ];

  static final $core.Map<$core.int, NoArgCommands_QromaLightsDeviceCommand> _byValue = $pb.ProtobufEnum.initByValue(values);
  static NoArgCommands_QromaLightsDeviceCommand? valueOf($core.int value) => _byValue[value];

  const NoArgCommands_QromaLightsDeviceCommand._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
