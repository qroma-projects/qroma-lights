//
//  Generated code. Do not modify.
//  source: my-project-messages.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use mathOperationDescriptor instead')
const MathOperation$json = {
  '1': 'MathOperation',
  '2': [
    {'1': 'MathOp_NotSet', '2': 0},
    {'1': 'MathOp_Add', '2': 1},
    {'1': 'MathOp_Subtract', '2': 2},
    {'1': 'MathOp_Add_And_Subtract', '2': 3},
  ],
};

/// Descriptor for `MathOperation`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List mathOperationDescriptor = $convert.base64Decode(
    'Cg1NYXRoT3BlcmF0aW9uEhEKDU1hdGhPcF9Ob3RTZXQQABIOCgpNYXRoT3BfQWRkEAESEwoPTW'
    'F0aE9wX1N1YnRyYWN0EAISGwoXTWF0aE9wX0FkZF9BbmRfU3VidHJhY3QQAw==');

@$core.Deprecated('Use updateTypeDescriptor instead')
const UpdateType$json = {
  '1': 'UpdateType',
  '2': [
    {'1': 'UpdateType_NotSet', '2': 0},
    {'1': 'UpdateType_None', '2': 1},
    {'1': 'UpdateType_Interval', '2': 2},
    {'1': 'UpdateType_ProgressIndicator', '2': 3},
  ],
};

/// Descriptor for `UpdateType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List updateTypeDescriptor = $convert.base64Decode(
    'CgpVcGRhdGVUeXBlEhUKEVVwZGF0ZVR5cGVfTm90U2V0EAASEwoPVXBkYXRlVHlwZV9Ob25lEA'
    'ESFwoTVXBkYXRlVHlwZV9JbnRlcnZhbBACEiAKHFVwZGF0ZVR5cGVfUHJvZ3Jlc3NJbmRpY2F0'
    'b3IQAw==');

@$core.Deprecated('Use noArgCommandsDescriptor instead')
const NoArgCommands$json = {
  '1': 'NoArgCommands',
  '2': [
    {'1': 'Nac_NotSet', '2': 0},
    {'1': 'Nac_GetBoardDetailsRequest', '2': 1},
    {'1': 'Nac_LoadBoardConfiguration', '2': 2},
    {'1': 'Nac_RestartDevice', '2': 3},
  ],
};

/// Descriptor for `NoArgCommands`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List noArgCommandsDescriptor = $convert.base64Decode(
    'Cg1Ob0FyZ0NvbW1hbmRzEg4KCk5hY19Ob3RTZXQQABIeChpOYWNfR2V0Qm9hcmREZXRhaWxzUm'
    'VxdWVzdBABEh4KGk5hY19Mb2FkQm9hcmRDb25maWd1cmF0aW9uEAISFQoRTmFjX1Jlc3RhcnRE'
    'ZXZpY2UQAw==');

@$core.Deprecated('Use helloQromaRequestDescriptor instead')
const HelloQromaRequest$json = {
  '1': 'HelloQromaRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `HelloQromaRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List helloQromaRequestDescriptor = $convert.base64Decode(
    'ChFIZWxsb1Fyb21hUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1l');

@$core.Deprecated('Use helloQromaResponseDescriptor instead')
const HelloQromaResponse$json = {
  '1': 'HelloQromaResponse',
  '2': [
    {'1': 'response', '3': 1, '4': 1, '5': 9, '10': 'response'},
    {'1': 'callCount', '3': 2, '4': 1, '5': 13, '10': 'callCount'},
    {'1': 'nameLength', '3': 3, '4': 1, '5': 13, '10': 'nameLength'},
  ],
};

/// Descriptor for `HelloQromaResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List helloQromaResponseDescriptor = $convert.base64Decode(
    'ChJIZWxsb1Fyb21hUmVzcG9uc2USGgoIcmVzcG9uc2UYASABKAlSCHJlc3BvbnNlEhwKCWNhbG'
    'xDb3VudBgCIAEoDVIJY2FsbENvdW50Eh4KCm5hbWVMZW5ndGgYAyABKA1SCm5hbWVMZW5ndGg=');

@$core.Deprecated('Use mathRequestDescriptor instead')
const MathRequest$json = {
  '1': 'MathRequest',
  '2': [
    {'1': 'a', '3': 1, '4': 1, '5': 13, '10': 'a'},
    {'1': 'b', '3': 2, '4': 1, '5': 13, '10': 'b'},
    {'1': 'op', '3': 3, '4': 1, '5': 14, '6': '.MathOperation', '10': 'op'},
  ],
};

/// Descriptor for `MathRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mathRequestDescriptor = $convert.base64Decode(
    'CgtNYXRoUmVxdWVzdBIMCgFhGAEgASgNUgFhEgwKAWIYAiABKA1SAWISHgoCb3AYAyABKA4yDi'
    '5NYXRoT3BlcmF0aW9uUgJvcA==');

@$core.Deprecated('Use mathResult_AddDescriptor instead')
const MathResult_Add$json = {
  '1': 'MathResult_Add',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 13, '10': 'result'},
  ],
};

/// Descriptor for `MathResult_Add`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mathResult_AddDescriptor = $convert.base64Decode(
    'Cg5NYXRoUmVzdWx0X0FkZBIWCgZyZXN1bHQYASABKA1SBnJlc3VsdA==');

@$core.Deprecated('Use mathResult_SubtractDescriptor instead')
const MathResult_Subtract$json = {
  '1': 'MathResult_Subtract',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 13, '10': 'result'},
  ],
};

/// Descriptor for `MathResult_Subtract`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mathResult_SubtractDescriptor = $convert.base64Decode(
    'ChNNYXRoUmVzdWx0X1N1YnRyYWN0EhYKBnJlc3VsdBgBIAEoDVIGcmVzdWx0');

@$core.Deprecated('Use mathResult_AddAndSubtractDescriptor instead')
const MathResult_AddAndSubtract$json = {
  '1': 'MathResult_AddAndSubtract',
  '2': [
    {'1': 'addResult', '3': 1, '4': 1, '5': 13, '10': 'addResult'},
    {'1': 'subtractResult', '3': 2, '4': 1, '5': 13, '10': 'subtractResult'},
  ],
};

/// Descriptor for `MathResult_AddAndSubtract`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mathResult_AddAndSubtractDescriptor = $convert.base64Decode(
    'ChlNYXRoUmVzdWx0X0FkZEFuZFN1YnRyYWN0EhwKCWFkZFJlc3VsdBgBIAEoDVIJYWRkUmVzdW'
    'x0EiYKDnN1YnRyYWN0UmVzdWx0GAIgASgNUg5zdWJ0cmFjdFJlc3VsdA==');

@$core.Deprecated('Use mathResponseDescriptor instead')
const MathResponse$json = {
  '1': 'MathResponse',
  '2': [
    {'1': 'addResult', '3': 1, '4': 1, '5': 11, '6': '.MathResult_Add', '9': 0, '10': 'addResult'},
    {'1': 'subtractResult', '3': 2, '4': 1, '5': 11, '6': '.MathResult_Subtract', '9': 0, '10': 'subtractResult'},
    {'1': 'addAndSubtractResult', '3': 3, '4': 1, '5': 11, '6': '.MathResult_AddAndSubtract', '9': 0, '10': 'addAndSubtractResult'},
  ],
  '8': [
    {'1': 'response'},
  ],
};

/// Descriptor for `MathResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mathResponseDescriptor = $convert.base64Decode(
    'CgxNYXRoUmVzcG9uc2USLwoJYWRkUmVzdWx0GAEgASgLMg8uTWF0aFJlc3VsdF9BZGRIAFIJYW'
    'RkUmVzdWx0Ej4KDnN1YnRyYWN0UmVzdWx0GAIgASgLMhQuTWF0aFJlc3VsdF9TdWJ0cmFjdEgA'
    'Ug5zdWJ0cmFjdFJlc3VsdBJQChRhZGRBbmRTdWJ0cmFjdFJlc3VsdBgDIAEoCzIaLk1hdGhSZX'
    'N1bHRfQWRkQW5kU3VidHJhY3RIAFIUYWRkQW5kU3VidHJhY3RSZXN1bHRCCgoIcmVzcG9uc2U=');

@$core.Deprecated('Use fwUpdateConfigurationDescriptor instead')
const FwUpdateConfiguration$json = {
  '1': 'FwUpdateConfiguration',
  '2': [
    {'1': 'updateType', '3': 1, '4': 1, '5': 14, '6': '.UpdateType', '10': 'updateType'},
    {'1': 'updateIntervalInMs', '3': 2, '4': 1, '5': 13, '10': 'updateIntervalInMs'},
  ],
};

/// Descriptor for `FwUpdateConfiguration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fwUpdateConfigurationDescriptor = $convert.base64Decode(
    'ChVGd1VwZGF0ZUNvbmZpZ3VyYXRpb24SKwoKdXBkYXRlVHlwZRgBIAEoDjILLlVwZGF0ZVR5cG'
    'VSCnVwZGF0ZVR5cGUSLgoSdXBkYXRlSW50ZXJ2YWxJbk1zGAIgASgNUhJ1cGRhdGVJbnRlcnZh'
    'bEluTXM=');

@$core.Deprecated('Use setUpdateConfigurationDescriptor instead')
const SetUpdateConfiguration$json = {
  '1': 'SetUpdateConfiguration',
  '2': [
    {'1': 'updateConfiguration', '3': 1, '4': 1, '5': 11, '6': '.FwUpdateConfiguration', '10': 'updateConfiguration'},
    {'1': 'saveConfiguration', '3': 2, '4': 1, '5': 8, '10': 'saveConfiguration'},
  ],
};

/// Descriptor for `SetUpdateConfiguration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setUpdateConfigurationDescriptor = $convert.base64Decode(
    'ChZTZXRVcGRhdGVDb25maWd1cmF0aW9uEkgKE3VwZGF0ZUNvbmZpZ3VyYXRpb24YASABKAsyFi'
    '5Gd1VwZGF0ZUNvbmZpZ3VyYXRpb25SE3VwZGF0ZUNvbmZpZ3VyYXRpb24SLAoRc2F2ZUNvbmZp'
    'Z3VyYXRpb24YAiABKAhSEXNhdmVDb25maWd1cmF0aW9u');

@$core.Deprecated('Use setUpdateConfigurationResponseDescriptor instead')
const SetUpdateConfigurationResponse$json = {
  '1': 'SetUpdateConfigurationResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'updateConfiguration', '3': 2, '4': 1, '5': 11, '6': '.FwUpdateConfiguration', '10': 'updateConfiguration'},
  ],
};

/// Descriptor for `SetUpdateConfigurationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setUpdateConfigurationResponseDescriptor = $convert.base64Decode(
    'Ch5TZXRVcGRhdGVDb25maWd1cmF0aW9uUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2'
    'VzcxJIChN1cGRhdGVDb25maWd1cmF0aW9uGAIgASgLMhYuRndVcGRhdGVDb25maWd1cmF0aW9u'
    'UhN1cGRhdGVDb25maWd1cmF0aW9u');

@$core.Deprecated('Use uptimeUpdateResponseDescriptor instead')
const UptimeUpdateResponse$json = {
  '1': 'UptimeUpdateResponse',
  '2': [
    {'1': 'uptime', '3': 1, '4': 1, '5': 13, '10': 'uptime'},
  ],
};

/// Descriptor for `UptimeUpdateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uptimeUpdateResponseDescriptor = $convert.base64Decode(
    'ChRVcHRpbWVVcGRhdGVSZXNwb25zZRIWCgZ1cHRpbWUYASABKA1SBnVwdGltZQ==');

@$core.Deprecated('Use progressIndicatorUpdateResponseDescriptor instead')
const ProgressIndicatorUpdateResponse$json = {
  '1': 'ProgressIndicatorUpdateResponse',
  '2': [
    {'1': 'progressIndicator', '3': 1, '4': 1, '5': 9, '10': 'progressIndicator'},
  ],
};

/// Descriptor for `ProgressIndicatorUpdateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List progressIndicatorUpdateResponseDescriptor = $convert.base64Decode(
    'Ch9Qcm9ncmVzc0luZGljYXRvclVwZGF0ZVJlc3BvbnNlEiwKEXByb2dyZXNzSW5kaWNhdG9yGA'
    'EgASgJUhFwcm9ncmVzc0luZGljYXRvcg==');

@$core.Deprecated('Use updateResponseDescriptor instead')
const UpdateResponse$json = {
  '1': 'UpdateResponse',
  '2': [
    {'1': 'uptimeUpdateResponse', '3': 1, '4': 1, '5': 11, '6': '.UptimeUpdateResponse', '9': 0, '10': 'uptimeUpdateResponse'},
    {'1': 'progressIndicatorUpdateResponse', '3': 2, '4': 1, '5': 11, '6': '.ProgressIndicatorUpdateResponse', '9': 0, '10': 'progressIndicatorUpdateResponse'},
  ],
  '8': [
    {'1': 'update'},
  ],
};

/// Descriptor for `UpdateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateResponseDescriptor = $convert.base64Decode(
    'Cg5VcGRhdGVSZXNwb25zZRJLChR1cHRpbWVVcGRhdGVSZXNwb25zZRgBIAEoCzIVLlVwdGltZV'
    'VwZGF0ZVJlc3BvbnNlSABSFHVwdGltZVVwZGF0ZVJlc3BvbnNlEmwKH3Byb2dyZXNzSW5kaWNh'
    'dG9yVXBkYXRlUmVzcG9uc2UYAiABKAsyIC5Qcm9ncmVzc0luZGljYXRvclVwZGF0ZVJlc3Bvbn'
    'NlSABSH3Byb2dyZXNzSW5kaWNhdG9yVXBkYXRlUmVzcG9uc2VCCAoGdXBkYXRl');

@$core.Deprecated('Use pingRequestDescriptor instead')
const PingRequest$json = {
  '1': 'PingRequest',
  '2': [
    {'1': 'pingId', '3': 1, '4': 1, '5': 13, '10': 'pingId'},
  ],
};

/// Descriptor for `PingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingRequestDescriptor = $convert.base64Decode(
    'CgtQaW5nUmVxdWVzdBIWCgZwaW5nSWQYASABKA1SBnBpbmdJZA==');

@$core.Deprecated('Use pingResponseDescriptor instead')
const PingResponse$json = {
  '1': 'PingResponse',
  '2': [
    {'1': 'pingId', '3': 1, '4': 1, '5': 13, '10': 'pingId'},
    {'1': 'uptime', '3': 2, '4': 1, '5': 13, '10': 'uptime'},
  ],
};

/// Descriptor for `PingResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingResponseDescriptor = $convert.base64Decode(
    'CgxQaW5nUmVzcG9uc2USFgoGcGluZ0lkGAEgASgNUgZwaW5nSWQSFgoGdXB0aW1lGAIgASgNUg'
    'Z1cHRpbWU=');

@$core.Deprecated('Use myProjectDetailsDescriptor instead')
const MyProjectDetails$json = {
  '1': 'MyProjectDetails',
  '2': [
    {'1': 'projectName', '3': 1, '4': 1, '5': 9, '10': 'projectName'},
  ],
};

/// Descriptor for `MyProjectDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List myProjectDetailsDescriptor = $convert.base64Decode(
    'ChBNeVByb2plY3REZXRhaWxzEiAKC3Byb2plY3ROYW1lGAEgASgJUgtwcm9qZWN0TmFtZQ==');

@$core.Deprecated('Use firmwareDetailsDescriptor instead')
const FirmwareDetails$json = {
  '1': 'FirmwareDetails',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
    {'1': 'buildTime', '3': 2, '4': 1, '5': 9, '10': 'buildTime'},
    {'1': 'boardName', '3': 3, '4': 1, '5': 9, '10': 'boardName'},
  ],
};

/// Descriptor for `FirmwareDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List firmwareDetailsDescriptor = $convert.base64Decode(
    'Cg9GaXJtd2FyZURldGFpbHMSGAoHdmVyc2lvbhgBIAEoCVIHdmVyc2lvbhIcCglidWlsZFRpbW'
    'UYAiABKAlSCWJ1aWxkVGltZRIcCglib2FyZE5hbWUYAyABKAlSCWJvYXJkTmFtZQ==');

@$core.Deprecated('Use getBoardDetailsRequestDescriptor instead')
const GetBoardDetailsRequest$json = {
  '1': 'GetBoardDetailsRequest',
  '2': [
    {'1': 'ignoreThis', '3': 1, '4': 1, '5': 8, '10': 'ignoreThis'},
  ],
};

/// Descriptor for `GetBoardDetailsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBoardDetailsRequestDescriptor = $convert.base64Decode(
    'ChZHZXRCb2FyZERldGFpbHNSZXF1ZXN0Eh4KCmlnbm9yZVRoaXMYASABKAhSCmlnbm9yZVRoaX'
    'M=');

@$core.Deprecated('Use getBoardDetailsResponseDescriptor instead')
const GetBoardDetailsResponse$json = {
  '1': 'GetBoardDetailsResponse',
  '2': [
    {'1': 'projectDetails', '3': 1, '4': 1, '5': 11, '6': '.MyProjectDetails', '10': 'projectDetails'},
    {'1': 'firmwareDetails', '3': 2, '4': 1, '5': 11, '6': '.FirmwareDetails', '10': 'firmwareDetails'},
  ],
};

/// Descriptor for `GetBoardDetailsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBoardDetailsResponseDescriptor = $convert.base64Decode(
    'ChdHZXRCb2FyZERldGFpbHNSZXNwb25zZRI5Cg5wcm9qZWN0RGV0YWlscxgBIAEoCzIRLk15UH'
    'JvamVjdERldGFpbHNSDnByb2plY3REZXRhaWxzEjoKD2Zpcm13YXJlRGV0YWlscxgCIAEoCzIQ'
    'LkZpcm13YXJlRGV0YWlsc1IPZmlybXdhcmVEZXRhaWxz');

@$core.Deprecated('Use setBoardLightColorRequestDescriptor instead')
const SetBoardLightColorRequest$json = {
  '1': 'SetBoardLightColorRequest',
  '2': [
    {'1': 'red', '3': 1, '4': 1, '5': 13, '10': 'red'},
    {'1': 'green', '3': 2, '4': 1, '5': 13, '10': 'green'},
    {'1': 'blue', '3': 3, '4': 1, '5': 13, '10': 'blue'},
  ],
};

/// Descriptor for `SetBoardLightColorRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setBoardLightColorRequestDescriptor = $convert.base64Decode(
    'ChlTZXRCb2FyZExpZ2h0Q29sb3JSZXF1ZXN0EhAKA3JlZBgBIAEoDVIDcmVkEhQKBWdyZWVuGA'
    'IgASgNUgVncmVlbhISCgRibHVlGAMgASgNUgRibHVl');

@$core.Deprecated('Use setBoardLightColorResponseDescriptor instead')
const SetBoardLightColorResponse$json = {
  '1': 'SetBoardLightColorResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `SetBoardLightColorResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setBoardLightColorResponseDescriptor = $convert.base64Decode(
    'ChpTZXRCb2FyZExpZ2h0Q29sb3JSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEh'
    'gKB21lc3NhZ2UYAiABKAlSB21lc3NhZ2U=');

@$core.Deprecated('Use loadBoardConfigurationResponseDescriptor instead')
const LoadBoardConfigurationResponse$json = {
  '1': 'LoadBoardConfigurationResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'loadedConfiguration', '3': 2, '4': 1, '5': 11, '6': '.FwUpdateConfiguration', '10': 'loadedConfiguration'},
  ],
};

/// Descriptor for `LoadBoardConfigurationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loadBoardConfigurationResponseDescriptor = $convert.base64Decode(
    'Ch5Mb2FkQm9hcmRDb25maWd1cmF0aW9uUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2'
    'VzcxJIChNsb2FkZWRDb25maWd1cmF0aW9uGAIgASgLMhYuRndVcGRhdGVDb25maWd1cmF0aW9u'
    'UhNsb2FkZWRDb25maWd1cmF0aW9u');

@$core.Deprecated('Use invalidCommandResponseDescriptor instead')
const InvalidCommandResponse$json = {
  '1': 'InvalidCommandResponse',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `InvalidCommandResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invalidCommandResponseDescriptor = $convert.base64Decode(
    'ChZJbnZhbGlkQ29tbWFuZFJlc3BvbnNlEhgKB21lc3NhZ2UYASABKAlSB21lc3NhZ2U=');

@$core.Deprecated('Use myProjectCommandDescriptor instead')
const MyProjectCommand$json = {
  '1': 'MyProjectCommand',
  '2': [
    {'1': 'noArgCommand', '3': 1, '4': 1, '5': 14, '6': '.NoArgCommands', '9': 0, '10': 'noArgCommand'},
    {'1': 'helloQromaRequest', '3': 2, '4': 1, '5': 11, '6': '.HelloQromaRequest', '9': 0, '10': 'helloQromaRequest'},
    {'1': 'mathRequest', '3': 3, '4': 1, '5': 11, '6': '.MathRequest', '9': 0, '10': 'mathRequest'},
    {'1': 'setUpdateConfiguration', '3': 4, '4': 1, '5': 11, '6': '.SetUpdateConfiguration', '9': 0, '10': 'setUpdateConfiguration'},
    {'1': 'pingRequest', '3': 5, '4': 1, '5': 11, '6': '.PingRequest', '9': 0, '10': 'pingRequest'},
    {'1': 'getBoardDetailsRequest', '3': 6, '4': 1, '5': 11, '6': '.GetBoardDetailsRequest', '9': 0, '10': 'getBoardDetailsRequest'},
    {'1': 'setBoardLightColorRequest', '3': 7, '4': 1, '5': 11, '6': '.SetBoardLightColorRequest', '9': 0, '10': 'setBoardLightColorRequest'},
  ],
  '8': [
    {'1': 'command'},
  ],
};

/// Descriptor for `MyProjectCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List myProjectCommandDescriptor = $convert.base64Decode(
    'ChBNeVByb2plY3RDb21tYW5kEjQKDG5vQXJnQ29tbWFuZBgBIAEoDjIOLk5vQXJnQ29tbWFuZH'
    'NIAFIMbm9BcmdDb21tYW5kEkIKEWhlbGxvUXJvbWFSZXF1ZXN0GAIgASgLMhIuSGVsbG9Rcm9t'
    'YVJlcXVlc3RIAFIRaGVsbG9Rcm9tYVJlcXVlc3QSMAoLbWF0aFJlcXVlc3QYAyABKAsyDC5NYX'
    'RoUmVxdWVzdEgAUgttYXRoUmVxdWVzdBJRChZzZXRVcGRhdGVDb25maWd1cmF0aW9uGAQgASgL'
    'MhcuU2V0VXBkYXRlQ29uZmlndXJhdGlvbkgAUhZzZXRVcGRhdGVDb25maWd1cmF0aW9uEjAKC3'
    'BpbmdSZXF1ZXN0GAUgASgLMgwuUGluZ1JlcXVlc3RIAFILcGluZ1JlcXVlc3QSUQoWZ2V0Qm9h'
    'cmREZXRhaWxzUmVxdWVzdBgGIAEoCzIXLkdldEJvYXJkRGV0YWlsc1JlcXVlc3RIAFIWZ2V0Qm'
    '9hcmREZXRhaWxzUmVxdWVzdBJaChlzZXRCb2FyZExpZ2h0Q29sb3JSZXF1ZXN0GAcgASgLMhou'
    'U2V0Qm9hcmRMaWdodENvbG9yUmVxdWVzdEgAUhlzZXRCb2FyZExpZ2h0Q29sb3JSZXF1ZXN0Qg'
    'kKB2NvbW1hbmQ=');

@$core.Deprecated('Use myProjectResponseDescriptor instead')
const MyProjectResponse$json = {
  '1': 'MyProjectResponse',
  '2': [
    {'1': 'invalidCommandResponse', '3': 1, '4': 1, '5': 11, '6': '.InvalidCommandResponse', '9': 0, '10': 'invalidCommandResponse'},
    {'1': 'helloQromaResponse', '3': 2, '4': 1, '5': 11, '6': '.HelloQromaResponse', '9': 0, '10': 'helloQromaResponse'},
    {'1': 'mathResponse', '3': 3, '4': 1, '5': 11, '6': '.MathResponse', '9': 0, '10': 'mathResponse'},
    {'1': 'setUpdateConfigurationResponse', '3': 4, '4': 1, '5': 11, '6': '.SetUpdateConfigurationResponse', '9': 0, '10': 'setUpdateConfigurationResponse'},
    {'1': 'pingResponse', '3': 5, '4': 1, '5': 11, '6': '.PingResponse', '9': 0, '10': 'pingResponse'},
    {'1': 'updateResponse', '3': 6, '4': 1, '5': 11, '6': '.UpdateResponse', '9': 0, '10': 'updateResponse'},
    {'1': 'setBoardLightColorResponse', '3': 7, '4': 1, '5': 11, '6': '.SetBoardLightColorResponse', '9': 0, '10': 'setBoardLightColorResponse'},
    {'1': 'getBoardDetailsResponse', '3': 8, '4': 1, '5': 11, '6': '.GetBoardDetailsResponse', '9': 0, '10': 'getBoardDetailsResponse'},
    {'1': 'loadBoardConfigurationResponse', '3': 9, '4': 1, '5': 11, '6': '.LoadBoardConfigurationResponse', '9': 0, '10': 'loadBoardConfigurationResponse'},
  ],
  '8': [
    {'1': 'response'},
  ],
};

/// Descriptor for `MyProjectResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List myProjectResponseDescriptor = $convert.base64Decode(
    'ChFNeVByb2plY3RSZXNwb25zZRJRChZpbnZhbGlkQ29tbWFuZFJlc3BvbnNlGAEgASgLMhcuSW'
    '52YWxpZENvbW1hbmRSZXNwb25zZUgAUhZpbnZhbGlkQ29tbWFuZFJlc3BvbnNlEkUKEmhlbGxv'
    'UXJvbWFSZXNwb25zZRgCIAEoCzITLkhlbGxvUXJvbWFSZXNwb25zZUgAUhJoZWxsb1Fyb21hUm'
    'VzcG9uc2USMwoMbWF0aFJlc3BvbnNlGAMgASgLMg0uTWF0aFJlc3BvbnNlSABSDG1hdGhSZXNw'
    'b25zZRJpCh5zZXRVcGRhdGVDb25maWd1cmF0aW9uUmVzcG9uc2UYBCABKAsyHy5TZXRVcGRhdG'
    'VDb25maWd1cmF0aW9uUmVzcG9uc2VIAFIec2V0VXBkYXRlQ29uZmlndXJhdGlvblJlc3BvbnNl'
    'EjMKDHBpbmdSZXNwb25zZRgFIAEoCzINLlBpbmdSZXNwb25zZUgAUgxwaW5nUmVzcG9uc2USOQ'
    'oOdXBkYXRlUmVzcG9uc2UYBiABKAsyDy5VcGRhdGVSZXNwb25zZUgAUg51cGRhdGVSZXNwb25z'
    'ZRJdChpzZXRCb2FyZExpZ2h0Q29sb3JSZXNwb25zZRgHIAEoCzIbLlNldEJvYXJkTGlnaHRDb2'
    'xvclJlc3BvbnNlSABSGnNldEJvYXJkTGlnaHRDb2xvclJlc3BvbnNlElQKF2dldEJvYXJkRGV0'
    'YWlsc1Jlc3BvbnNlGAggASgLMhguR2V0Qm9hcmREZXRhaWxzUmVzcG9uc2VIAFIXZ2V0Qm9hcm'
    'REZXRhaWxzUmVzcG9uc2USaQoebG9hZEJvYXJkQ29uZmlndXJhdGlvblJlc3BvbnNlGAkgASgL'
    'Mh8uTG9hZEJvYXJkQ29uZmlndXJhdGlvblJlc3BvbnNlSABSHmxvYWRCb2FyZENvbmZpZ3VyYX'
    'Rpb25SZXNwb25zZUIKCghyZXNwb25zZQ==');

