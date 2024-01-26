//
//  Generated code. Do not modify.
//  source: my-project-messages.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'my-project-messages.pbenum.dart';

export 'my-project-messages.pbenum.dart';

class HelloQromaRequest extends $pb.GeneratedMessage {
  factory HelloQromaRequest({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  HelloQromaRequest._() : super();
  factory HelloQromaRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HelloQromaRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HelloQromaRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HelloQromaRequest clone() => HelloQromaRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HelloQromaRequest copyWith(void Function(HelloQromaRequest) updates) => super.copyWith((message) => updates(message as HelloQromaRequest)) as HelloQromaRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HelloQromaRequest create() => HelloQromaRequest._();
  HelloQromaRequest createEmptyInstance() => create();
  static $pb.PbList<HelloQromaRequest> createRepeated() => $pb.PbList<HelloQromaRequest>();
  @$core.pragma('dart2js:noInline')
  static HelloQromaRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HelloQromaRequest>(create);
  static HelloQromaRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class HelloQromaResponse extends $pb.GeneratedMessage {
  factory HelloQromaResponse({
    $core.String? response,
    $core.int? callCount,
    $core.int? nameLength,
  }) {
    final $result = create();
    if (response != null) {
      $result.response = response;
    }
    if (callCount != null) {
      $result.callCount = callCount;
    }
    if (nameLength != null) {
      $result.nameLength = nameLength;
    }
    return $result;
  }
  HelloQromaResponse._() : super();
  factory HelloQromaResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HelloQromaResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HelloQromaResponse', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'response')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'callCount', $pb.PbFieldType.OU3, protoName: 'callCount')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'nameLength', $pb.PbFieldType.OU3, protoName: 'nameLength')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HelloQromaResponse clone() => HelloQromaResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HelloQromaResponse copyWith(void Function(HelloQromaResponse) updates) => super.copyWith((message) => updates(message as HelloQromaResponse)) as HelloQromaResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HelloQromaResponse create() => HelloQromaResponse._();
  HelloQromaResponse createEmptyInstance() => create();
  static $pb.PbList<HelloQromaResponse> createRepeated() => $pb.PbList<HelloQromaResponse>();
  @$core.pragma('dart2js:noInline')
  static HelloQromaResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HelloQromaResponse>(create);
  static HelloQromaResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get response => $_getSZ(0);
  @$pb.TagNumber(1)
  set response($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponse() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get callCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set callCount($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCallCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCallCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get nameLength => $_getIZ(2);
  @$pb.TagNumber(3)
  set nameLength($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNameLength() => $_has(2);
  @$pb.TagNumber(3)
  void clearNameLength() => clearField(3);
}

class MathRequest extends $pb.GeneratedMessage {
  factory MathRequest({
    $core.int? a,
    $core.int? b,
    MathOperation? op,
  }) {
    final $result = create();
    if (a != null) {
      $result.a = a;
    }
    if (b != null) {
      $result.b = b;
    }
    if (op != null) {
      $result.op = op;
    }
    return $result;
  }
  MathRequest._() : super();
  factory MathRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MathRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MathRequest', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'a', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'b', $pb.PbFieldType.OU3)
    ..e<MathOperation>(3, _omitFieldNames ? '' : 'op', $pb.PbFieldType.OE, defaultOrMaker: MathOperation.MathOp_NotSet, valueOf: MathOperation.valueOf, enumValues: MathOperation.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MathRequest clone() => MathRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MathRequest copyWith(void Function(MathRequest) updates) => super.copyWith((message) => updates(message as MathRequest)) as MathRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MathRequest create() => MathRequest._();
  MathRequest createEmptyInstance() => create();
  static $pb.PbList<MathRequest> createRepeated() => $pb.PbList<MathRequest>();
  @$core.pragma('dart2js:noInline')
  static MathRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MathRequest>(create);
  static MathRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get a => $_getIZ(0);
  @$pb.TagNumber(1)
  set a($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get b => $_getIZ(1);
  @$pb.TagNumber(2)
  set b($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasB() => $_has(1);
  @$pb.TagNumber(2)
  void clearB() => clearField(2);

  @$pb.TagNumber(3)
  MathOperation get op => $_getN(2);
  @$pb.TagNumber(3)
  set op(MathOperation v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasOp() => $_has(2);
  @$pb.TagNumber(3)
  void clearOp() => clearField(3);
}

class MathResult_Add extends $pb.GeneratedMessage {
  factory MathResult_Add({
    $core.int? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  MathResult_Add._() : super();
  factory MathResult_Add.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MathResult_Add.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MathResult_Add', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MathResult_Add clone() => MathResult_Add()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MathResult_Add copyWith(void Function(MathResult_Add) updates) => super.copyWith((message) => updates(message as MathResult_Add)) as MathResult_Add;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MathResult_Add create() => MathResult_Add._();
  MathResult_Add createEmptyInstance() => create();
  static $pb.PbList<MathResult_Add> createRepeated() => $pb.PbList<MathResult_Add>();
  @$core.pragma('dart2js:noInline')
  static MathResult_Add getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MathResult_Add>(create);
  static MathResult_Add? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get result => $_getIZ(0);
  @$pb.TagNumber(1)
  set result($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class MathResult_Subtract extends $pb.GeneratedMessage {
  factory MathResult_Subtract({
    $core.int? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  MathResult_Subtract._() : super();
  factory MathResult_Subtract.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MathResult_Subtract.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MathResult_Subtract', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MathResult_Subtract clone() => MathResult_Subtract()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MathResult_Subtract copyWith(void Function(MathResult_Subtract) updates) => super.copyWith((message) => updates(message as MathResult_Subtract)) as MathResult_Subtract;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MathResult_Subtract create() => MathResult_Subtract._();
  MathResult_Subtract createEmptyInstance() => create();
  static $pb.PbList<MathResult_Subtract> createRepeated() => $pb.PbList<MathResult_Subtract>();
  @$core.pragma('dart2js:noInline')
  static MathResult_Subtract getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MathResult_Subtract>(create);
  static MathResult_Subtract? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get result => $_getIZ(0);
  @$pb.TagNumber(1)
  set result($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class MathResult_AddAndSubtract extends $pb.GeneratedMessage {
  factory MathResult_AddAndSubtract({
    $core.int? addResult,
    $core.int? subtractResult,
  }) {
    final $result = create();
    if (addResult != null) {
      $result.addResult = addResult;
    }
    if (subtractResult != null) {
      $result.subtractResult = subtractResult;
    }
    return $result;
  }
  MathResult_AddAndSubtract._() : super();
  factory MathResult_AddAndSubtract.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MathResult_AddAndSubtract.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MathResult_AddAndSubtract', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'addResult', $pb.PbFieldType.OU3, protoName: 'addResult')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'subtractResult', $pb.PbFieldType.OU3, protoName: 'subtractResult')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MathResult_AddAndSubtract clone() => MathResult_AddAndSubtract()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MathResult_AddAndSubtract copyWith(void Function(MathResult_AddAndSubtract) updates) => super.copyWith((message) => updates(message as MathResult_AddAndSubtract)) as MathResult_AddAndSubtract;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MathResult_AddAndSubtract create() => MathResult_AddAndSubtract._();
  MathResult_AddAndSubtract createEmptyInstance() => create();
  static $pb.PbList<MathResult_AddAndSubtract> createRepeated() => $pb.PbList<MathResult_AddAndSubtract>();
  @$core.pragma('dart2js:noInline')
  static MathResult_AddAndSubtract getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MathResult_AddAndSubtract>(create);
  static MathResult_AddAndSubtract? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get addResult => $_getIZ(0);
  @$pb.TagNumber(1)
  set addResult($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddResult() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get subtractResult => $_getIZ(1);
  @$pb.TagNumber(2)
  set subtractResult($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubtractResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubtractResult() => clearField(2);
}

enum MathResponse_Response {
  addResult, 
  subtractResult, 
  addAndSubtractResult, 
  notSet
}

class MathResponse extends $pb.GeneratedMessage {
  factory MathResponse({
    MathResult_Add? addResult,
    MathResult_Subtract? subtractResult,
    MathResult_AddAndSubtract? addAndSubtractResult,
  }) {
    final $result = create();
    if (addResult != null) {
      $result.addResult = addResult;
    }
    if (subtractResult != null) {
      $result.subtractResult = subtractResult;
    }
    if (addAndSubtractResult != null) {
      $result.addAndSubtractResult = addAndSubtractResult;
    }
    return $result;
  }
  MathResponse._() : super();
  factory MathResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MathResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, MathResponse_Response> _MathResponse_ResponseByTag = {
    1 : MathResponse_Response.addResult,
    2 : MathResponse_Response.subtractResult,
    3 : MathResponse_Response.addAndSubtractResult,
    0 : MathResponse_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MathResponse', createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<MathResult_Add>(1, _omitFieldNames ? '' : 'addResult', protoName: 'addResult', subBuilder: MathResult_Add.create)
    ..aOM<MathResult_Subtract>(2, _omitFieldNames ? '' : 'subtractResult', protoName: 'subtractResult', subBuilder: MathResult_Subtract.create)
    ..aOM<MathResult_AddAndSubtract>(3, _omitFieldNames ? '' : 'addAndSubtractResult', protoName: 'addAndSubtractResult', subBuilder: MathResult_AddAndSubtract.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MathResponse clone() => MathResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MathResponse copyWith(void Function(MathResponse) updates) => super.copyWith((message) => updates(message as MathResponse)) as MathResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MathResponse create() => MathResponse._();
  MathResponse createEmptyInstance() => create();
  static $pb.PbList<MathResponse> createRepeated() => $pb.PbList<MathResponse>();
  @$core.pragma('dart2js:noInline')
  static MathResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MathResponse>(create);
  static MathResponse? _defaultInstance;

  MathResponse_Response whichResponse() => _MathResponse_ResponseByTag[$_whichOneof(0)]!;
  void clearResponse() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  MathResult_Add get addResult => $_getN(0);
  @$pb.TagNumber(1)
  set addResult(MathResult_Add v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddResult() => clearField(1);
  @$pb.TagNumber(1)
  MathResult_Add ensureAddResult() => $_ensure(0);

  @$pb.TagNumber(2)
  MathResult_Subtract get subtractResult => $_getN(1);
  @$pb.TagNumber(2)
  set subtractResult(MathResult_Subtract v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubtractResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubtractResult() => clearField(2);
  @$pb.TagNumber(2)
  MathResult_Subtract ensureSubtractResult() => $_ensure(1);

  @$pb.TagNumber(3)
  MathResult_AddAndSubtract get addAndSubtractResult => $_getN(2);
  @$pb.TagNumber(3)
  set addAndSubtractResult(MathResult_AddAndSubtract v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddAndSubtractResult() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddAndSubtractResult() => clearField(3);
  @$pb.TagNumber(3)
  MathResult_AddAndSubtract ensureAddAndSubtractResult() => $_ensure(2);
}

class FwUpdateConfiguration extends $pb.GeneratedMessage {
  factory FwUpdateConfiguration({
    UpdateType? updateType,
    $core.int? updateIntervalInMs,
  }) {
    final $result = create();
    if (updateType != null) {
      $result.updateType = updateType;
    }
    if (updateIntervalInMs != null) {
      $result.updateIntervalInMs = updateIntervalInMs;
    }
    return $result;
  }
  FwUpdateConfiguration._() : super();
  factory FwUpdateConfiguration.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FwUpdateConfiguration.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FwUpdateConfiguration', createEmptyInstance: create)
    ..e<UpdateType>(1, _omitFieldNames ? '' : 'updateType', $pb.PbFieldType.OE, protoName: 'updateType', defaultOrMaker: UpdateType.UpdateType_NotSet, valueOf: UpdateType.valueOf, enumValues: UpdateType.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'updateIntervalInMs', $pb.PbFieldType.OU3, protoName: 'updateIntervalInMs')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FwUpdateConfiguration clone() => FwUpdateConfiguration()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FwUpdateConfiguration copyWith(void Function(FwUpdateConfiguration) updates) => super.copyWith((message) => updates(message as FwUpdateConfiguration)) as FwUpdateConfiguration;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FwUpdateConfiguration create() => FwUpdateConfiguration._();
  FwUpdateConfiguration createEmptyInstance() => create();
  static $pb.PbList<FwUpdateConfiguration> createRepeated() => $pb.PbList<FwUpdateConfiguration>();
  @$core.pragma('dart2js:noInline')
  static FwUpdateConfiguration getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FwUpdateConfiguration>(create);
  static FwUpdateConfiguration? _defaultInstance;

  @$pb.TagNumber(1)
  UpdateType get updateType => $_getN(0);
  @$pb.TagNumber(1)
  set updateType(UpdateType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUpdateType() => $_has(0);
  @$pb.TagNumber(1)
  void clearUpdateType() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get updateIntervalInMs => $_getIZ(1);
  @$pb.TagNumber(2)
  set updateIntervalInMs($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUpdateIntervalInMs() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdateIntervalInMs() => clearField(2);
}

class SetUpdateConfiguration extends $pb.GeneratedMessage {
  factory SetUpdateConfiguration({
    FwUpdateConfiguration? updateConfiguration,
    $core.bool? saveConfiguration,
  }) {
    final $result = create();
    if (updateConfiguration != null) {
      $result.updateConfiguration = updateConfiguration;
    }
    if (saveConfiguration != null) {
      $result.saveConfiguration = saveConfiguration;
    }
    return $result;
  }
  SetUpdateConfiguration._() : super();
  factory SetUpdateConfiguration.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetUpdateConfiguration.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetUpdateConfiguration', createEmptyInstance: create)
    ..aOM<FwUpdateConfiguration>(1, _omitFieldNames ? '' : 'updateConfiguration', protoName: 'updateConfiguration', subBuilder: FwUpdateConfiguration.create)
    ..aOB(2, _omitFieldNames ? '' : 'saveConfiguration', protoName: 'saveConfiguration')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetUpdateConfiguration clone() => SetUpdateConfiguration()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetUpdateConfiguration copyWith(void Function(SetUpdateConfiguration) updates) => super.copyWith((message) => updates(message as SetUpdateConfiguration)) as SetUpdateConfiguration;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetUpdateConfiguration create() => SetUpdateConfiguration._();
  SetUpdateConfiguration createEmptyInstance() => create();
  static $pb.PbList<SetUpdateConfiguration> createRepeated() => $pb.PbList<SetUpdateConfiguration>();
  @$core.pragma('dart2js:noInline')
  static SetUpdateConfiguration getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetUpdateConfiguration>(create);
  static SetUpdateConfiguration? _defaultInstance;

  @$pb.TagNumber(1)
  FwUpdateConfiguration get updateConfiguration => $_getN(0);
  @$pb.TagNumber(1)
  set updateConfiguration(FwUpdateConfiguration v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUpdateConfiguration() => $_has(0);
  @$pb.TagNumber(1)
  void clearUpdateConfiguration() => clearField(1);
  @$pb.TagNumber(1)
  FwUpdateConfiguration ensureUpdateConfiguration() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get saveConfiguration => $_getBF(1);
  @$pb.TagNumber(2)
  set saveConfiguration($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSaveConfiguration() => $_has(1);
  @$pb.TagNumber(2)
  void clearSaveConfiguration() => clearField(2);
}

class SetUpdateConfigurationResponse extends $pb.GeneratedMessage {
  factory SetUpdateConfigurationResponse({
    $core.bool? success,
    FwUpdateConfiguration? updateConfiguration,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (updateConfiguration != null) {
      $result.updateConfiguration = updateConfiguration;
    }
    return $result;
  }
  SetUpdateConfigurationResponse._() : super();
  factory SetUpdateConfigurationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetUpdateConfigurationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetUpdateConfigurationResponse', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOM<FwUpdateConfiguration>(2, _omitFieldNames ? '' : 'updateConfiguration', protoName: 'updateConfiguration', subBuilder: FwUpdateConfiguration.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetUpdateConfigurationResponse clone() => SetUpdateConfigurationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetUpdateConfigurationResponse copyWith(void Function(SetUpdateConfigurationResponse) updates) => super.copyWith((message) => updates(message as SetUpdateConfigurationResponse)) as SetUpdateConfigurationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetUpdateConfigurationResponse create() => SetUpdateConfigurationResponse._();
  SetUpdateConfigurationResponse createEmptyInstance() => create();
  static $pb.PbList<SetUpdateConfigurationResponse> createRepeated() => $pb.PbList<SetUpdateConfigurationResponse>();
  @$core.pragma('dart2js:noInline')
  static SetUpdateConfigurationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetUpdateConfigurationResponse>(create);
  static SetUpdateConfigurationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  FwUpdateConfiguration get updateConfiguration => $_getN(1);
  @$pb.TagNumber(2)
  set updateConfiguration(FwUpdateConfiguration v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUpdateConfiguration() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdateConfiguration() => clearField(2);
  @$pb.TagNumber(2)
  FwUpdateConfiguration ensureUpdateConfiguration() => $_ensure(1);
}

class UptimeUpdateResponse extends $pb.GeneratedMessage {
  factory UptimeUpdateResponse({
    $core.int? uptime,
  }) {
    final $result = create();
    if (uptime != null) {
      $result.uptime = uptime;
    }
    return $result;
  }
  UptimeUpdateResponse._() : super();
  factory UptimeUpdateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UptimeUpdateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UptimeUpdateResponse', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'uptime', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UptimeUpdateResponse clone() => UptimeUpdateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UptimeUpdateResponse copyWith(void Function(UptimeUpdateResponse) updates) => super.copyWith((message) => updates(message as UptimeUpdateResponse)) as UptimeUpdateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UptimeUpdateResponse create() => UptimeUpdateResponse._();
  UptimeUpdateResponse createEmptyInstance() => create();
  static $pb.PbList<UptimeUpdateResponse> createRepeated() => $pb.PbList<UptimeUpdateResponse>();
  @$core.pragma('dart2js:noInline')
  static UptimeUpdateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UptimeUpdateResponse>(create);
  static UptimeUpdateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get uptime => $_getIZ(0);
  @$pb.TagNumber(1)
  set uptime($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUptime() => $_has(0);
  @$pb.TagNumber(1)
  void clearUptime() => clearField(1);
}

class ProgressIndicatorUpdateResponse extends $pb.GeneratedMessage {
  factory ProgressIndicatorUpdateResponse({
    $core.String? progressIndicator,
  }) {
    final $result = create();
    if (progressIndicator != null) {
      $result.progressIndicator = progressIndicator;
    }
    return $result;
  }
  ProgressIndicatorUpdateResponse._() : super();
  factory ProgressIndicatorUpdateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProgressIndicatorUpdateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProgressIndicatorUpdateResponse', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'progressIndicator', protoName: 'progressIndicator')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProgressIndicatorUpdateResponse clone() => ProgressIndicatorUpdateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProgressIndicatorUpdateResponse copyWith(void Function(ProgressIndicatorUpdateResponse) updates) => super.copyWith((message) => updates(message as ProgressIndicatorUpdateResponse)) as ProgressIndicatorUpdateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProgressIndicatorUpdateResponse create() => ProgressIndicatorUpdateResponse._();
  ProgressIndicatorUpdateResponse createEmptyInstance() => create();
  static $pb.PbList<ProgressIndicatorUpdateResponse> createRepeated() => $pb.PbList<ProgressIndicatorUpdateResponse>();
  @$core.pragma('dart2js:noInline')
  static ProgressIndicatorUpdateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProgressIndicatorUpdateResponse>(create);
  static ProgressIndicatorUpdateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get progressIndicator => $_getSZ(0);
  @$pb.TagNumber(1)
  set progressIndicator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProgressIndicator() => $_has(0);
  @$pb.TagNumber(1)
  void clearProgressIndicator() => clearField(1);
}

enum UpdateResponse_Update {
  uptimeUpdateResponse, 
  progressIndicatorUpdateResponse, 
  notSet
}

class UpdateResponse extends $pb.GeneratedMessage {
  factory UpdateResponse({
    UptimeUpdateResponse? uptimeUpdateResponse,
    ProgressIndicatorUpdateResponse? progressIndicatorUpdateResponse,
  }) {
    final $result = create();
    if (uptimeUpdateResponse != null) {
      $result.uptimeUpdateResponse = uptimeUpdateResponse;
    }
    if (progressIndicatorUpdateResponse != null) {
      $result.progressIndicatorUpdateResponse = progressIndicatorUpdateResponse;
    }
    return $result;
  }
  UpdateResponse._() : super();
  factory UpdateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, UpdateResponse_Update> _UpdateResponse_UpdateByTag = {
    1 : UpdateResponse_Update.uptimeUpdateResponse,
    2 : UpdateResponse_Update.progressIndicatorUpdateResponse,
    0 : UpdateResponse_Update.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateResponse', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<UptimeUpdateResponse>(1, _omitFieldNames ? '' : 'uptimeUpdateResponse', protoName: 'uptimeUpdateResponse', subBuilder: UptimeUpdateResponse.create)
    ..aOM<ProgressIndicatorUpdateResponse>(2, _omitFieldNames ? '' : 'progressIndicatorUpdateResponse', protoName: 'progressIndicatorUpdateResponse', subBuilder: ProgressIndicatorUpdateResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateResponse clone() => UpdateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateResponse copyWith(void Function(UpdateResponse) updates) => super.copyWith((message) => updates(message as UpdateResponse)) as UpdateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateResponse create() => UpdateResponse._();
  UpdateResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateResponse> createRepeated() => $pb.PbList<UpdateResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateResponse>(create);
  static UpdateResponse? _defaultInstance;

  UpdateResponse_Update whichUpdate() => _UpdateResponse_UpdateByTag[$_whichOneof(0)]!;
  void clearUpdate() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  UptimeUpdateResponse get uptimeUpdateResponse => $_getN(0);
  @$pb.TagNumber(1)
  set uptimeUpdateResponse(UptimeUpdateResponse v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUptimeUpdateResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearUptimeUpdateResponse() => clearField(1);
  @$pb.TagNumber(1)
  UptimeUpdateResponse ensureUptimeUpdateResponse() => $_ensure(0);

  @$pb.TagNumber(2)
  ProgressIndicatorUpdateResponse get progressIndicatorUpdateResponse => $_getN(1);
  @$pb.TagNumber(2)
  set progressIndicatorUpdateResponse(ProgressIndicatorUpdateResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasProgressIndicatorUpdateResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearProgressIndicatorUpdateResponse() => clearField(2);
  @$pb.TagNumber(2)
  ProgressIndicatorUpdateResponse ensureProgressIndicatorUpdateResponse() => $_ensure(1);
}

class PingRequest extends $pb.GeneratedMessage {
  factory PingRequest({
    $core.int? pingId,
  }) {
    final $result = create();
    if (pingId != null) {
      $result.pingId = pingId;
    }
    return $result;
  }
  PingRequest._() : super();
  factory PingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PingRequest', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'pingId', $pb.PbFieldType.OU3, protoName: 'pingId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PingRequest clone() => PingRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PingRequest copyWith(void Function(PingRequest) updates) => super.copyWith((message) => updates(message as PingRequest)) as PingRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PingRequest create() => PingRequest._();
  PingRequest createEmptyInstance() => create();
  static $pb.PbList<PingRequest> createRepeated() => $pb.PbList<PingRequest>();
  @$core.pragma('dart2js:noInline')
  static PingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PingRequest>(create);
  static PingRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get pingId => $_getIZ(0);
  @$pb.TagNumber(1)
  set pingId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPingId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPingId() => clearField(1);
}

class PingResponse extends $pb.GeneratedMessage {
  factory PingResponse({
    $core.int? pingId,
    $core.int? uptime,
  }) {
    final $result = create();
    if (pingId != null) {
      $result.pingId = pingId;
    }
    if (uptime != null) {
      $result.uptime = uptime;
    }
    return $result;
  }
  PingResponse._() : super();
  factory PingResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PingResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PingResponse', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'pingId', $pb.PbFieldType.OU3, protoName: 'pingId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'uptime', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PingResponse clone() => PingResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PingResponse copyWith(void Function(PingResponse) updates) => super.copyWith((message) => updates(message as PingResponse)) as PingResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PingResponse create() => PingResponse._();
  PingResponse createEmptyInstance() => create();
  static $pb.PbList<PingResponse> createRepeated() => $pb.PbList<PingResponse>();
  @$core.pragma('dart2js:noInline')
  static PingResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PingResponse>(create);
  static PingResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get pingId => $_getIZ(0);
  @$pb.TagNumber(1)
  set pingId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPingId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPingId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get uptime => $_getIZ(1);
  @$pb.TagNumber(2)
  set uptime($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUptime() => $_has(1);
  @$pb.TagNumber(2)
  void clearUptime() => clearField(2);
}

class MyProjectDetails extends $pb.GeneratedMessage {
  factory MyProjectDetails({
    $core.String? projectName,
  }) {
    final $result = create();
    if (projectName != null) {
      $result.projectName = projectName;
    }
    return $result;
  }
  MyProjectDetails._() : super();
  factory MyProjectDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MyProjectDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MyProjectDetails', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'projectName', protoName: 'projectName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MyProjectDetails clone() => MyProjectDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MyProjectDetails copyWith(void Function(MyProjectDetails) updates) => super.copyWith((message) => updates(message as MyProjectDetails)) as MyProjectDetails;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MyProjectDetails create() => MyProjectDetails._();
  MyProjectDetails createEmptyInstance() => create();
  static $pb.PbList<MyProjectDetails> createRepeated() => $pb.PbList<MyProjectDetails>();
  @$core.pragma('dart2js:noInline')
  static MyProjectDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MyProjectDetails>(create);
  static MyProjectDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get projectName => $_getSZ(0);
  @$pb.TagNumber(1)
  set projectName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectName() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectName() => clearField(1);
}

class FirmwareDetails extends $pb.GeneratedMessage {
  factory FirmwareDetails({
    $core.String? version,
    $core.String? buildTime,
    $core.String? boardName,
  }) {
    final $result = create();
    if (version != null) {
      $result.version = version;
    }
    if (buildTime != null) {
      $result.buildTime = buildTime;
    }
    if (boardName != null) {
      $result.boardName = boardName;
    }
    return $result;
  }
  FirmwareDetails._() : super();
  factory FirmwareDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FirmwareDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FirmwareDetails', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'version')
    ..aOS(2, _omitFieldNames ? '' : 'buildTime', protoName: 'buildTime')
    ..aOS(3, _omitFieldNames ? '' : 'boardName', protoName: 'boardName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FirmwareDetails clone() => FirmwareDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FirmwareDetails copyWith(void Function(FirmwareDetails) updates) => super.copyWith((message) => updates(message as FirmwareDetails)) as FirmwareDetails;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FirmwareDetails create() => FirmwareDetails._();
  FirmwareDetails createEmptyInstance() => create();
  static $pb.PbList<FirmwareDetails> createRepeated() => $pb.PbList<FirmwareDetails>();
  @$core.pragma('dart2js:noInline')
  static FirmwareDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FirmwareDetails>(create);
  static FirmwareDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get version => $_getSZ(0);
  @$pb.TagNumber(1)
  set version($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get buildTime => $_getSZ(1);
  @$pb.TagNumber(2)
  set buildTime($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBuildTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearBuildTime() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get boardName => $_getSZ(2);
  @$pb.TagNumber(3)
  set boardName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBoardName() => $_has(2);
  @$pb.TagNumber(3)
  void clearBoardName() => clearField(3);
}

class GetBoardDetailsRequest extends $pb.GeneratedMessage {
  factory GetBoardDetailsRequest({
    $core.bool? ignoreThis,
  }) {
    final $result = create();
    if (ignoreThis != null) {
      $result.ignoreThis = ignoreThis;
    }
    return $result;
  }
  GetBoardDetailsRequest._() : super();
  factory GetBoardDetailsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBoardDetailsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBoardDetailsRequest', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ignoreThis', protoName: 'ignoreThis')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBoardDetailsRequest clone() => GetBoardDetailsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBoardDetailsRequest copyWith(void Function(GetBoardDetailsRequest) updates) => super.copyWith((message) => updates(message as GetBoardDetailsRequest)) as GetBoardDetailsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBoardDetailsRequest create() => GetBoardDetailsRequest._();
  GetBoardDetailsRequest createEmptyInstance() => create();
  static $pb.PbList<GetBoardDetailsRequest> createRepeated() => $pb.PbList<GetBoardDetailsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetBoardDetailsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBoardDetailsRequest>(create);
  static GetBoardDetailsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ignoreThis => $_getBF(0);
  @$pb.TagNumber(1)
  set ignoreThis($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIgnoreThis() => $_has(0);
  @$pb.TagNumber(1)
  void clearIgnoreThis() => clearField(1);
}

class GetBoardDetailsResponse extends $pb.GeneratedMessage {
  factory GetBoardDetailsResponse({
    MyProjectDetails? projectDetails,
    FirmwareDetails? firmwareDetails,
  }) {
    final $result = create();
    if (projectDetails != null) {
      $result.projectDetails = projectDetails;
    }
    if (firmwareDetails != null) {
      $result.firmwareDetails = firmwareDetails;
    }
    return $result;
  }
  GetBoardDetailsResponse._() : super();
  factory GetBoardDetailsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBoardDetailsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBoardDetailsResponse', createEmptyInstance: create)
    ..aOM<MyProjectDetails>(1, _omitFieldNames ? '' : 'projectDetails', protoName: 'projectDetails', subBuilder: MyProjectDetails.create)
    ..aOM<FirmwareDetails>(2, _omitFieldNames ? '' : 'firmwareDetails', protoName: 'firmwareDetails', subBuilder: FirmwareDetails.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBoardDetailsResponse clone() => GetBoardDetailsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBoardDetailsResponse copyWith(void Function(GetBoardDetailsResponse) updates) => super.copyWith((message) => updates(message as GetBoardDetailsResponse)) as GetBoardDetailsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBoardDetailsResponse create() => GetBoardDetailsResponse._();
  GetBoardDetailsResponse createEmptyInstance() => create();
  static $pb.PbList<GetBoardDetailsResponse> createRepeated() => $pb.PbList<GetBoardDetailsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetBoardDetailsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBoardDetailsResponse>(create);
  static GetBoardDetailsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  MyProjectDetails get projectDetails => $_getN(0);
  @$pb.TagNumber(1)
  set projectDetails(MyProjectDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectDetails() => clearField(1);
  @$pb.TagNumber(1)
  MyProjectDetails ensureProjectDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  FirmwareDetails get firmwareDetails => $_getN(1);
  @$pb.TagNumber(2)
  set firmwareDetails(FirmwareDetails v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFirmwareDetails() => $_has(1);
  @$pb.TagNumber(2)
  void clearFirmwareDetails() => clearField(2);
  @$pb.TagNumber(2)
  FirmwareDetails ensureFirmwareDetails() => $_ensure(1);
}

class SetBoardLightColorRequest extends $pb.GeneratedMessage {
  factory SetBoardLightColorRequest({
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
  SetBoardLightColorRequest._() : super();
  factory SetBoardLightColorRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetBoardLightColorRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetBoardLightColorRequest', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'red', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'green', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'blue', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetBoardLightColorRequest clone() => SetBoardLightColorRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetBoardLightColorRequest copyWith(void Function(SetBoardLightColorRequest) updates) => super.copyWith((message) => updates(message as SetBoardLightColorRequest)) as SetBoardLightColorRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetBoardLightColorRequest create() => SetBoardLightColorRequest._();
  SetBoardLightColorRequest createEmptyInstance() => create();
  static $pb.PbList<SetBoardLightColorRequest> createRepeated() => $pb.PbList<SetBoardLightColorRequest>();
  @$core.pragma('dart2js:noInline')
  static SetBoardLightColorRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetBoardLightColorRequest>(create);
  static SetBoardLightColorRequest? _defaultInstance;

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

class SetBoardLightColorResponse extends $pb.GeneratedMessage {
  factory SetBoardLightColorResponse({
    $core.bool? success,
    $core.String? message,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  SetBoardLightColorResponse._() : super();
  factory SetBoardLightColorResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetBoardLightColorResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetBoardLightColorResponse', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetBoardLightColorResponse clone() => SetBoardLightColorResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetBoardLightColorResponse copyWith(void Function(SetBoardLightColorResponse) updates) => super.copyWith((message) => updates(message as SetBoardLightColorResponse)) as SetBoardLightColorResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetBoardLightColorResponse create() => SetBoardLightColorResponse._();
  SetBoardLightColorResponse createEmptyInstance() => create();
  static $pb.PbList<SetBoardLightColorResponse> createRepeated() => $pb.PbList<SetBoardLightColorResponse>();
  @$core.pragma('dart2js:noInline')
  static SetBoardLightColorResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetBoardLightColorResponse>(create);
  static SetBoardLightColorResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

class LoadBoardConfigurationResponse extends $pb.GeneratedMessage {
  factory LoadBoardConfigurationResponse({
    $core.bool? success,
    FwUpdateConfiguration? loadedConfiguration,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (loadedConfiguration != null) {
      $result.loadedConfiguration = loadedConfiguration;
    }
    return $result;
  }
  LoadBoardConfigurationResponse._() : super();
  factory LoadBoardConfigurationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoadBoardConfigurationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LoadBoardConfigurationResponse', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOM<FwUpdateConfiguration>(2, _omitFieldNames ? '' : 'loadedConfiguration', protoName: 'loadedConfiguration', subBuilder: FwUpdateConfiguration.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoadBoardConfigurationResponse clone() => LoadBoardConfigurationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoadBoardConfigurationResponse copyWith(void Function(LoadBoardConfigurationResponse) updates) => super.copyWith((message) => updates(message as LoadBoardConfigurationResponse)) as LoadBoardConfigurationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoadBoardConfigurationResponse create() => LoadBoardConfigurationResponse._();
  LoadBoardConfigurationResponse createEmptyInstance() => create();
  static $pb.PbList<LoadBoardConfigurationResponse> createRepeated() => $pb.PbList<LoadBoardConfigurationResponse>();
  @$core.pragma('dart2js:noInline')
  static LoadBoardConfigurationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoadBoardConfigurationResponse>(create);
  static LoadBoardConfigurationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  FwUpdateConfiguration get loadedConfiguration => $_getN(1);
  @$pb.TagNumber(2)
  set loadedConfiguration(FwUpdateConfiguration v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLoadedConfiguration() => $_has(1);
  @$pb.TagNumber(2)
  void clearLoadedConfiguration() => clearField(2);
  @$pb.TagNumber(2)
  FwUpdateConfiguration ensureLoadedConfiguration() => $_ensure(1);
}

class InvalidCommandResponse extends $pb.GeneratedMessage {
  factory InvalidCommandResponse({
    $core.String? message,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  InvalidCommandResponse._() : super();
  factory InvalidCommandResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InvalidCommandResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InvalidCommandResponse', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InvalidCommandResponse clone() => InvalidCommandResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InvalidCommandResponse copyWith(void Function(InvalidCommandResponse) updates) => super.copyWith((message) => updates(message as InvalidCommandResponse)) as InvalidCommandResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InvalidCommandResponse create() => InvalidCommandResponse._();
  InvalidCommandResponse createEmptyInstance() => create();
  static $pb.PbList<InvalidCommandResponse> createRepeated() => $pb.PbList<InvalidCommandResponse>();
  @$core.pragma('dart2js:noInline')
  static InvalidCommandResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InvalidCommandResponse>(create);
  static InvalidCommandResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

enum MyProjectCommand_Command {
  noArgCommand, 
  helloQromaRequest, 
  mathRequest, 
  setUpdateConfiguration, 
  pingRequest, 
  getBoardDetailsRequest, 
  setBoardLightColorRequest, 
  notSet
}

class MyProjectCommand extends $pb.GeneratedMessage {
  factory MyProjectCommand({
    NoArgCommands? noArgCommand,
    HelloQromaRequest? helloQromaRequest,
    MathRequest? mathRequest,
    SetUpdateConfiguration? setUpdateConfiguration,
    PingRequest? pingRequest,
    GetBoardDetailsRequest? getBoardDetailsRequest,
    SetBoardLightColorRequest? setBoardLightColorRequest,
  }) {
    final $result = create();
    if (noArgCommand != null) {
      $result.noArgCommand = noArgCommand;
    }
    if (helloQromaRequest != null) {
      $result.helloQromaRequest = helloQromaRequest;
    }
    if (mathRequest != null) {
      $result.mathRequest = mathRequest;
    }
    if (setUpdateConfiguration != null) {
      $result.setUpdateConfiguration = setUpdateConfiguration;
    }
    if (pingRequest != null) {
      $result.pingRequest = pingRequest;
    }
    if (getBoardDetailsRequest != null) {
      $result.getBoardDetailsRequest = getBoardDetailsRequest;
    }
    if (setBoardLightColorRequest != null) {
      $result.setBoardLightColorRequest = setBoardLightColorRequest;
    }
    return $result;
  }
  MyProjectCommand._() : super();
  factory MyProjectCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MyProjectCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, MyProjectCommand_Command> _MyProjectCommand_CommandByTag = {
    1 : MyProjectCommand_Command.noArgCommand,
    2 : MyProjectCommand_Command.helloQromaRequest,
    3 : MyProjectCommand_Command.mathRequest,
    4 : MyProjectCommand_Command.setUpdateConfiguration,
    5 : MyProjectCommand_Command.pingRequest,
    6 : MyProjectCommand_Command.getBoardDetailsRequest,
    7 : MyProjectCommand_Command.setBoardLightColorRequest,
    0 : MyProjectCommand_Command.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MyProjectCommand', createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7])
    ..e<NoArgCommands>(1, _omitFieldNames ? '' : 'noArgCommand', $pb.PbFieldType.OE, protoName: 'noArgCommand', defaultOrMaker: NoArgCommands.Nac_NotSet, valueOf: NoArgCommands.valueOf, enumValues: NoArgCommands.values)
    ..aOM<HelloQromaRequest>(2, _omitFieldNames ? '' : 'helloQromaRequest', protoName: 'helloQromaRequest', subBuilder: HelloQromaRequest.create)
    ..aOM<MathRequest>(3, _omitFieldNames ? '' : 'mathRequest', protoName: 'mathRequest', subBuilder: MathRequest.create)
    ..aOM<SetUpdateConfiguration>(4, _omitFieldNames ? '' : 'setUpdateConfiguration', protoName: 'setUpdateConfiguration', subBuilder: SetUpdateConfiguration.create)
    ..aOM<PingRequest>(5, _omitFieldNames ? '' : 'pingRequest', protoName: 'pingRequest', subBuilder: PingRequest.create)
    ..aOM<GetBoardDetailsRequest>(6, _omitFieldNames ? '' : 'getBoardDetailsRequest', protoName: 'getBoardDetailsRequest', subBuilder: GetBoardDetailsRequest.create)
    ..aOM<SetBoardLightColorRequest>(7, _omitFieldNames ? '' : 'setBoardLightColorRequest', protoName: 'setBoardLightColorRequest', subBuilder: SetBoardLightColorRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MyProjectCommand clone() => MyProjectCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MyProjectCommand copyWith(void Function(MyProjectCommand) updates) => super.copyWith((message) => updates(message as MyProjectCommand)) as MyProjectCommand;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MyProjectCommand create() => MyProjectCommand._();
  MyProjectCommand createEmptyInstance() => create();
  static $pb.PbList<MyProjectCommand> createRepeated() => $pb.PbList<MyProjectCommand>();
  @$core.pragma('dart2js:noInline')
  static MyProjectCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MyProjectCommand>(create);
  static MyProjectCommand? _defaultInstance;

  MyProjectCommand_Command whichCommand() => _MyProjectCommand_CommandByTag[$_whichOneof(0)]!;
  void clearCommand() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  NoArgCommands get noArgCommand => $_getN(0);
  @$pb.TagNumber(1)
  set noArgCommand(NoArgCommands v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNoArgCommand() => $_has(0);
  @$pb.TagNumber(1)
  void clearNoArgCommand() => clearField(1);

  @$pb.TagNumber(2)
  HelloQromaRequest get helloQromaRequest => $_getN(1);
  @$pb.TagNumber(2)
  set helloQromaRequest(HelloQromaRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasHelloQromaRequest() => $_has(1);
  @$pb.TagNumber(2)
  void clearHelloQromaRequest() => clearField(2);
  @$pb.TagNumber(2)
  HelloQromaRequest ensureHelloQromaRequest() => $_ensure(1);

  @$pb.TagNumber(3)
  MathRequest get mathRequest => $_getN(2);
  @$pb.TagNumber(3)
  set mathRequest(MathRequest v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMathRequest() => $_has(2);
  @$pb.TagNumber(3)
  void clearMathRequest() => clearField(3);
  @$pb.TagNumber(3)
  MathRequest ensureMathRequest() => $_ensure(2);

  @$pb.TagNumber(4)
  SetUpdateConfiguration get setUpdateConfiguration => $_getN(3);
  @$pb.TagNumber(4)
  set setUpdateConfiguration(SetUpdateConfiguration v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSetUpdateConfiguration() => $_has(3);
  @$pb.TagNumber(4)
  void clearSetUpdateConfiguration() => clearField(4);
  @$pb.TagNumber(4)
  SetUpdateConfiguration ensureSetUpdateConfiguration() => $_ensure(3);

  @$pb.TagNumber(5)
  PingRequest get pingRequest => $_getN(4);
  @$pb.TagNumber(5)
  set pingRequest(PingRequest v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasPingRequest() => $_has(4);
  @$pb.TagNumber(5)
  void clearPingRequest() => clearField(5);
  @$pb.TagNumber(5)
  PingRequest ensurePingRequest() => $_ensure(4);

  @$pb.TagNumber(6)
  GetBoardDetailsRequest get getBoardDetailsRequest => $_getN(5);
  @$pb.TagNumber(6)
  set getBoardDetailsRequest(GetBoardDetailsRequest v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasGetBoardDetailsRequest() => $_has(5);
  @$pb.TagNumber(6)
  void clearGetBoardDetailsRequest() => clearField(6);
  @$pb.TagNumber(6)
  GetBoardDetailsRequest ensureGetBoardDetailsRequest() => $_ensure(5);

  @$pb.TagNumber(7)
  SetBoardLightColorRequest get setBoardLightColorRequest => $_getN(6);
  @$pb.TagNumber(7)
  set setBoardLightColorRequest(SetBoardLightColorRequest v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasSetBoardLightColorRequest() => $_has(6);
  @$pb.TagNumber(7)
  void clearSetBoardLightColorRequest() => clearField(7);
  @$pb.TagNumber(7)
  SetBoardLightColorRequest ensureSetBoardLightColorRequest() => $_ensure(6);
}

enum MyProjectResponse_Response {
  invalidCommandResponse, 
  helloQromaResponse, 
  mathResponse, 
  setUpdateConfigurationResponse, 
  pingResponse, 
  updateResponse, 
  setBoardLightColorResponse, 
  getBoardDetailsResponse, 
  loadBoardConfigurationResponse, 
  notSet
}

class MyProjectResponse extends $pb.GeneratedMessage {
  factory MyProjectResponse({
    InvalidCommandResponse? invalidCommandResponse,
    HelloQromaResponse? helloQromaResponse,
    MathResponse? mathResponse,
    SetUpdateConfigurationResponse? setUpdateConfigurationResponse,
    PingResponse? pingResponse,
    UpdateResponse? updateResponse,
    SetBoardLightColorResponse? setBoardLightColorResponse,
    GetBoardDetailsResponse? getBoardDetailsResponse,
    LoadBoardConfigurationResponse? loadBoardConfigurationResponse,
  }) {
    final $result = create();
    if (invalidCommandResponse != null) {
      $result.invalidCommandResponse = invalidCommandResponse;
    }
    if (helloQromaResponse != null) {
      $result.helloQromaResponse = helloQromaResponse;
    }
    if (mathResponse != null) {
      $result.mathResponse = mathResponse;
    }
    if (setUpdateConfigurationResponse != null) {
      $result.setUpdateConfigurationResponse = setUpdateConfigurationResponse;
    }
    if (pingResponse != null) {
      $result.pingResponse = pingResponse;
    }
    if (updateResponse != null) {
      $result.updateResponse = updateResponse;
    }
    if (setBoardLightColorResponse != null) {
      $result.setBoardLightColorResponse = setBoardLightColorResponse;
    }
    if (getBoardDetailsResponse != null) {
      $result.getBoardDetailsResponse = getBoardDetailsResponse;
    }
    if (loadBoardConfigurationResponse != null) {
      $result.loadBoardConfigurationResponse = loadBoardConfigurationResponse;
    }
    return $result;
  }
  MyProjectResponse._() : super();
  factory MyProjectResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MyProjectResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, MyProjectResponse_Response> _MyProjectResponse_ResponseByTag = {
    1 : MyProjectResponse_Response.invalidCommandResponse,
    2 : MyProjectResponse_Response.helloQromaResponse,
    3 : MyProjectResponse_Response.mathResponse,
    4 : MyProjectResponse_Response.setUpdateConfigurationResponse,
    5 : MyProjectResponse_Response.pingResponse,
    6 : MyProjectResponse_Response.updateResponse,
    7 : MyProjectResponse_Response.setBoardLightColorResponse,
    8 : MyProjectResponse_Response.getBoardDetailsResponse,
    9 : MyProjectResponse_Response.loadBoardConfigurationResponse,
    0 : MyProjectResponse_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MyProjectResponse', createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9])
    ..aOM<InvalidCommandResponse>(1, _omitFieldNames ? '' : 'invalidCommandResponse', protoName: 'invalidCommandResponse', subBuilder: InvalidCommandResponse.create)
    ..aOM<HelloQromaResponse>(2, _omitFieldNames ? '' : 'helloQromaResponse', protoName: 'helloQromaResponse', subBuilder: HelloQromaResponse.create)
    ..aOM<MathResponse>(3, _omitFieldNames ? '' : 'mathResponse', protoName: 'mathResponse', subBuilder: MathResponse.create)
    ..aOM<SetUpdateConfigurationResponse>(4, _omitFieldNames ? '' : 'setUpdateConfigurationResponse', protoName: 'setUpdateConfigurationResponse', subBuilder: SetUpdateConfigurationResponse.create)
    ..aOM<PingResponse>(5, _omitFieldNames ? '' : 'pingResponse', protoName: 'pingResponse', subBuilder: PingResponse.create)
    ..aOM<UpdateResponse>(6, _omitFieldNames ? '' : 'updateResponse', protoName: 'updateResponse', subBuilder: UpdateResponse.create)
    ..aOM<SetBoardLightColorResponse>(7, _omitFieldNames ? '' : 'setBoardLightColorResponse', protoName: 'setBoardLightColorResponse', subBuilder: SetBoardLightColorResponse.create)
    ..aOM<GetBoardDetailsResponse>(8, _omitFieldNames ? '' : 'getBoardDetailsResponse', protoName: 'getBoardDetailsResponse', subBuilder: GetBoardDetailsResponse.create)
    ..aOM<LoadBoardConfigurationResponse>(9, _omitFieldNames ? '' : 'loadBoardConfigurationResponse', protoName: 'loadBoardConfigurationResponse', subBuilder: LoadBoardConfigurationResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MyProjectResponse clone() => MyProjectResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MyProjectResponse copyWith(void Function(MyProjectResponse) updates) => super.copyWith((message) => updates(message as MyProjectResponse)) as MyProjectResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MyProjectResponse create() => MyProjectResponse._();
  MyProjectResponse createEmptyInstance() => create();
  static $pb.PbList<MyProjectResponse> createRepeated() => $pb.PbList<MyProjectResponse>();
  @$core.pragma('dart2js:noInline')
  static MyProjectResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MyProjectResponse>(create);
  static MyProjectResponse? _defaultInstance;

  MyProjectResponse_Response whichResponse() => _MyProjectResponse_ResponseByTag[$_whichOneof(0)]!;
  void clearResponse() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  InvalidCommandResponse get invalidCommandResponse => $_getN(0);
  @$pb.TagNumber(1)
  set invalidCommandResponse(InvalidCommandResponse v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInvalidCommandResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearInvalidCommandResponse() => clearField(1);
  @$pb.TagNumber(1)
  InvalidCommandResponse ensureInvalidCommandResponse() => $_ensure(0);

  @$pb.TagNumber(2)
  HelloQromaResponse get helloQromaResponse => $_getN(1);
  @$pb.TagNumber(2)
  set helloQromaResponse(HelloQromaResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasHelloQromaResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearHelloQromaResponse() => clearField(2);
  @$pb.TagNumber(2)
  HelloQromaResponse ensureHelloQromaResponse() => $_ensure(1);

  @$pb.TagNumber(3)
  MathResponse get mathResponse => $_getN(2);
  @$pb.TagNumber(3)
  set mathResponse(MathResponse v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMathResponse() => $_has(2);
  @$pb.TagNumber(3)
  void clearMathResponse() => clearField(3);
  @$pb.TagNumber(3)
  MathResponse ensureMathResponse() => $_ensure(2);

  @$pb.TagNumber(4)
  SetUpdateConfigurationResponse get setUpdateConfigurationResponse => $_getN(3);
  @$pb.TagNumber(4)
  set setUpdateConfigurationResponse(SetUpdateConfigurationResponse v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSetUpdateConfigurationResponse() => $_has(3);
  @$pb.TagNumber(4)
  void clearSetUpdateConfigurationResponse() => clearField(4);
  @$pb.TagNumber(4)
  SetUpdateConfigurationResponse ensureSetUpdateConfigurationResponse() => $_ensure(3);

  @$pb.TagNumber(5)
  PingResponse get pingResponse => $_getN(4);
  @$pb.TagNumber(5)
  set pingResponse(PingResponse v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasPingResponse() => $_has(4);
  @$pb.TagNumber(5)
  void clearPingResponse() => clearField(5);
  @$pb.TagNumber(5)
  PingResponse ensurePingResponse() => $_ensure(4);

  @$pb.TagNumber(6)
  UpdateResponse get updateResponse => $_getN(5);
  @$pb.TagNumber(6)
  set updateResponse(UpdateResponse v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasUpdateResponse() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdateResponse() => clearField(6);
  @$pb.TagNumber(6)
  UpdateResponse ensureUpdateResponse() => $_ensure(5);

  @$pb.TagNumber(7)
  SetBoardLightColorResponse get setBoardLightColorResponse => $_getN(6);
  @$pb.TagNumber(7)
  set setBoardLightColorResponse(SetBoardLightColorResponse v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasSetBoardLightColorResponse() => $_has(6);
  @$pb.TagNumber(7)
  void clearSetBoardLightColorResponse() => clearField(7);
  @$pb.TagNumber(7)
  SetBoardLightColorResponse ensureSetBoardLightColorResponse() => $_ensure(6);

  @$pb.TagNumber(8)
  GetBoardDetailsResponse get getBoardDetailsResponse => $_getN(7);
  @$pb.TagNumber(8)
  set getBoardDetailsResponse(GetBoardDetailsResponse v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasGetBoardDetailsResponse() => $_has(7);
  @$pb.TagNumber(8)
  void clearGetBoardDetailsResponse() => clearField(8);
  @$pb.TagNumber(8)
  GetBoardDetailsResponse ensureGetBoardDetailsResponse() => $_ensure(7);

  @$pb.TagNumber(9)
  LoadBoardConfigurationResponse get loadBoardConfigurationResponse => $_getN(8);
  @$pb.TagNumber(9)
  set loadBoardConfigurationResponse(LoadBoardConfigurationResponse v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasLoadBoardConfigurationResponse() => $_has(8);
  @$pb.TagNumber(9)
  void clearLoadBoardConfigurationResponse() => clearField(9);
  @$pb.TagNumber(9)
  LoadBoardConfigurationResponse ensureLoadBoardConfigurationResponse() => $_ensure(8);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
