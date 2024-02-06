//
//  Generated code. Do not modify.
//  source: qroma-lights-commands.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use noArgCommands_QromaLightsDeviceCommandDescriptor instead')
const NoArgCommands_QromaLightsDeviceCommand$json = {
  '1': 'NoArgCommands_QromaLightsDeviceCommand',
  '2': [
    {'1': 'NacQlc_NotSet', '2': 0},
    {'1': 'NacQlc_UseCurrentSetupOnStartup', '2': 1},
    {'1': 'NacQlc_RestartQromaDevice', '2': 2},
    {'1': 'NacQlc_FactoryResetQromaDevice', '2': 3},
    {'1': 'NacQlc_RequestQromaLightsConfig', '2': 4},
  ],
};

/// Descriptor for `NoArgCommands_QromaLightsDeviceCommand`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List noArgCommands_QromaLightsDeviceCommandDescriptor = $convert.base64Decode(
    'CiZOb0FyZ0NvbW1hbmRzX1Fyb21hTGlnaHRzRGV2aWNlQ29tbWFuZBIRCg1OYWNRbGNfTm90U2'
    'V0EAASIwofTmFjUWxjX1VzZUN1cnJlbnRTZXR1cE9uU3RhcnR1cBABEh0KGU5hY1FsY19SZXN0'
    'YXJ0UXJvbWFEZXZpY2UQAhIiCh5OYWNRbGNfRmFjdG9yeVJlc2V0UXJvbWFEZXZpY2UQAxIjCh'
    '9OYWNRbGNfUmVxdWVzdFFyb21hTGlnaHRzQ29uZmlnEAQ=');

@$core.Deprecated('Use saveQromaStrip_CurrentStateDescriptor instead')
const SaveQromaStrip_CurrentState$json = {
  '1': 'SaveQromaStrip_CurrentState',
  '2': [
    {'1': 'stripIndex', '3': 1, '4': 1, '5': 14, '6': '.QromaStrip_WS2812FX_StripIndex', '10': 'stripIndex'},
  ],
};

/// Descriptor for `SaveQromaStrip_CurrentState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveQromaStrip_CurrentStateDescriptor = $convert.base64Decode(
    'ChtTYXZlUXJvbWFTdHJpcF9DdXJyZW50U3RhdGUSPwoKc3RyaXBJbmRleBgBIAEoDjIfLlFyb2'
    '1hU3RyaXBfV1MyODEyRlhfU3RyaXBJbmRleFIKc3RyaXBJbmRleA==');

@$core.Deprecated('Use qromaStripCommandDescriptor instead')
const QromaStripCommand$json = {
  '1': 'QromaStripCommand',
  '2': [
    {'1': 'stripIndex', '3': 1, '4': 1, '5': 14, '6': '.QromaStrip_WS2812FX_StripIndex', '10': 'stripIndex'},
    {'1': 'setQromaStripBrightness', '3': 10, '4': 1, '5': 13, '9': 0, '10': 'setQromaStripBrightness'},
    {'1': 'setQromaStripName', '3': 11, '4': 1, '5': 9, '9': 0, '10': 'setQromaStripName'},
    {'1': 'setQromaStripAnimation', '3': 12, '4': 1, '5': 11, '6': '.QromaStrip_WS2812FX_Animation', '9': 0, '10': 'setQromaStripAnimation'},
    {'1': 'setQromaStripIoSettings', '3': 13, '4': 1, '5': 11, '6': '.QromaStrip_WS2812FX_IoSettings', '9': 0, '10': 'setQromaStripIoSettings'},
  ],
  '8': [
    {'1': 'command'},
  ],
};

/// Descriptor for `QromaStripCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List qromaStripCommandDescriptor = $convert.base64Decode(
    'ChFRcm9tYVN0cmlwQ29tbWFuZBI/CgpzdHJpcEluZGV4GAEgASgOMh8uUXJvbWFTdHJpcF9XUz'
    'I4MTJGWF9TdHJpcEluZGV4UgpzdHJpcEluZGV4EjoKF3NldFFyb21hU3RyaXBCcmlnaHRuZXNz'
    'GAogASgNSABSF3NldFFyb21hU3RyaXBCcmlnaHRuZXNzEi4KEXNldFFyb21hU3RyaXBOYW1lGA'
    'sgASgJSABSEXNldFFyb21hU3RyaXBOYW1lElgKFnNldFFyb21hU3RyaXBBbmltYXRpb24YDCAB'
    'KAsyHi5Rcm9tYVN0cmlwX1dTMjgxMkZYX0FuaW1hdGlvbkgAUhZzZXRRcm9tYVN0cmlwQW5pbW'
    'F0aW9uElsKF3NldFFyb21hU3RyaXBJb1NldHRpbmdzGA0gASgLMh8uUXJvbWFTdHJpcF9XUzI4'
    'MTJGWF9Jb1NldHRpbmdzSABSF3NldFFyb21hU3RyaXBJb1NldHRpbmdzQgkKB2NvbW1hbmQ=');

@$core.Deprecated('Use setQromaDeviceNameDescriptor instead')
const SetQromaDeviceName$json = {
  '1': 'SetQromaDeviceName',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `SetQromaDeviceName`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setQromaDeviceNameDescriptor = $convert.base64Decode(
    'ChJTZXRRcm9tYURldmljZU5hbWUSEgoEbmFtZRgBIAEoCVIEbmFtZQ==');

@$core.Deprecated('Use qromaLightsDeviceCommandDescriptor instead')
const QromaLightsDeviceCommand$json = {
  '1': 'QromaLightsDeviceCommand',
  '2': [
    {'1': 'noArgCommand', '3': 1, '4': 1, '5': 14, '6': '.NoArgCommands_QromaLightsDeviceCommand', '9': 0, '10': 'noArgCommand'},
    {'1': 'setQromaDeviceName', '3': 2, '4': 1, '5': 11, '6': '.SetQromaDeviceName', '9': 0, '10': 'setQromaDeviceName'},
    {'1': 'qromaStripCommand', '3': 3, '4': 1, '5': 11, '6': '.QromaStripCommand', '9': 0, '10': 'qromaStripCommand'},
  ],
  '8': [
    {'1': 'command'},
  ],
};

/// Descriptor for `QromaLightsDeviceCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List qromaLightsDeviceCommandDescriptor = $convert.base64Decode(
    'ChhRcm9tYUxpZ2h0c0RldmljZUNvbW1hbmQSTQoMbm9BcmdDb21tYW5kGAEgASgOMicuTm9Bcm'
    'dDb21tYW5kc19Rcm9tYUxpZ2h0c0RldmljZUNvbW1hbmRIAFIMbm9BcmdDb21tYW5kEkUKEnNl'
    'dFFyb21hRGV2aWNlTmFtZRgCIAEoCzITLlNldFFyb21hRGV2aWNlTmFtZUgAUhJzZXRRcm9tYU'
    'RldmljZU5hbWUSQgoRcXJvbWFTdHJpcENvbW1hbmQYAyABKAsyEi5Rcm9tYVN0cmlwQ29tbWFu'
    'ZEgAUhFxcm9tYVN0cmlwQ29tbWFuZEIJCgdjb21tYW5k');

@$core.Deprecated('Use qromaLightsDeviceErrorDescriptor instead')
const QromaLightsDeviceError$json = {
  '1': 'QromaLightsDeviceError',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `QromaLightsDeviceError`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List qromaLightsDeviceErrorDescriptor = $convert.base64Decode(
    'ChZRcm9tYUxpZ2h0c0RldmljZUVycm9yEhgKB21lc3NhZ2UYASABKAlSB21lc3NhZ2U=');

@$core.Deprecated('Use qromaLightsDeviceConfigUpdatedDescriptor instead')
const QromaLightsDeviceConfigUpdated$json = {
  '1': 'QromaLightsDeviceConfigUpdated',
  '2': [
    {'1': 'updateTime', '3': 1, '4': 1, '5': 13, '10': 'updateTime'},
    {'1': 'updateConfig', '3': 2, '4': 1, '5': 11, '6': '.QromaLightsDeviceConfig', '10': 'updateConfig'},
    {'1': 'updateDescription', '3': 3, '4': 1, '5': 9, '10': 'updateDescription'},
  ],
};

/// Descriptor for `QromaLightsDeviceConfigUpdated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List qromaLightsDeviceConfigUpdatedDescriptor = $convert.base64Decode(
    'Ch5Rcm9tYUxpZ2h0c0RldmljZUNvbmZpZ1VwZGF0ZWQSHgoKdXBkYXRlVGltZRgBIAEoDVIKdX'
    'BkYXRlVGltZRI8Cgx1cGRhdGVDb25maWcYAiABKAsyGC5Rcm9tYUxpZ2h0c0RldmljZUNvbmZp'
    'Z1IMdXBkYXRlQ29uZmlnEiwKEXVwZGF0ZURlc2NyaXB0aW9uGAMgASgJUhF1cGRhdGVEZXNjcm'
    'lwdGlvbg==');

@$core.Deprecated('Use qromaLightsResponseDescriptor instead')
const QromaLightsResponse$json = {
  '1': 'QromaLightsResponse',
  '2': [
    {'1': 'qromaLightsConfigResponse', '3': 1, '4': 1, '5': 11, '6': '.QromaLightsDeviceConfig', '9': 0, '10': 'qromaLightsConfigResponse'},
    {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.QromaLightsDeviceError', '9': 0, '10': 'error'},
    {'1': 'configUpdatedResponse', '3': 3, '4': 1, '5': 11, '6': '.QromaLightsDeviceConfigUpdated', '9': 0, '10': 'configUpdatedResponse'},
  ],
  '8': [
    {'1': 'response'},
  ],
};

/// Descriptor for `QromaLightsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List qromaLightsResponseDescriptor = $convert.base64Decode(
    'ChNRcm9tYUxpZ2h0c1Jlc3BvbnNlElgKGXFyb21hTGlnaHRzQ29uZmlnUmVzcG9uc2UYASABKA'
    'syGC5Rcm9tYUxpZ2h0c0RldmljZUNvbmZpZ0gAUhlxcm9tYUxpZ2h0c0NvbmZpZ1Jlc3BvbnNl'
    'Ei8KBWVycm9yGAIgASgLMhcuUXJvbWFMaWdodHNEZXZpY2VFcnJvckgAUgVlcnJvchJXChVjb2'
    '5maWdVcGRhdGVkUmVzcG9uc2UYAyABKAsyHy5Rcm9tYUxpZ2h0c0RldmljZUNvbmZpZ1VwZGF0'
    'ZWRIAFIVY29uZmlnVXBkYXRlZFJlc3BvbnNlQgoKCHJlc3BvbnNl');

