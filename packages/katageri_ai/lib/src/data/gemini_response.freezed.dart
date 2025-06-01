// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gemini_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GeminiResponse {

 List<CandidateData>? get candidates; UsageMetaData? get usageMetadata; String? get modelVersion; String? get responseId;
/// Create a copy of GeminiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeminiResponseCopyWith<GeminiResponse> get copyWith => _$GeminiResponseCopyWithImpl<GeminiResponse>(this as GeminiResponse, _$identity);

  /// Serializes this GeminiResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeminiResponse&&const DeepCollectionEquality().equals(other.candidates, candidates)&&(identical(other.usageMetadata, usageMetadata) || other.usageMetadata == usageMetadata)&&(identical(other.modelVersion, modelVersion) || other.modelVersion == modelVersion)&&(identical(other.responseId, responseId) || other.responseId == responseId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(candidates),usageMetadata,modelVersion,responseId);

@override
String toString() {
  return 'GeminiResponse(candidates: $candidates, usageMetadata: $usageMetadata, modelVersion: $modelVersion, responseId: $responseId)';
}


}

/// @nodoc
abstract mixin class $GeminiResponseCopyWith<$Res>  {
  factory $GeminiResponseCopyWith(GeminiResponse value, $Res Function(GeminiResponse) _then) = _$GeminiResponseCopyWithImpl;
@useResult
$Res call({
 List<CandidateData>? candidates, UsageMetaData? usageMetadata, String? modelVersion, String? responseId
});


$UsageMetaDataCopyWith<$Res>? get usageMetadata;

}
/// @nodoc
class _$GeminiResponseCopyWithImpl<$Res>
    implements $GeminiResponseCopyWith<$Res> {
  _$GeminiResponseCopyWithImpl(this._self, this._then);

  final GeminiResponse _self;
  final $Res Function(GeminiResponse) _then;

/// Create a copy of GeminiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? candidates = freezed,Object? usageMetadata = freezed,Object? modelVersion = freezed,Object? responseId = freezed,}) {
  return _then(_self.copyWith(
candidates: freezed == candidates ? _self.candidates : candidates // ignore: cast_nullable_to_non_nullable
as List<CandidateData>?,usageMetadata: freezed == usageMetadata ? _self.usageMetadata : usageMetadata // ignore: cast_nullable_to_non_nullable
as UsageMetaData?,modelVersion: freezed == modelVersion ? _self.modelVersion : modelVersion // ignore: cast_nullable_to_non_nullable
as String?,responseId: freezed == responseId ? _self.responseId : responseId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of GeminiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UsageMetaDataCopyWith<$Res>? get usageMetadata {
    if (_self.usageMetadata == null) {
    return null;
  }

  return $UsageMetaDataCopyWith<$Res>(_self.usageMetadata!, (value) {
    return _then(_self.copyWith(usageMetadata: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _GeminiResponse implements GeminiResponse {
  const _GeminiResponse({final  List<CandidateData>? candidates, this.usageMetadata, this.modelVersion, this.responseId}): _candidates = candidates;
  factory _GeminiResponse.fromJson(Map<String, dynamic> json) => _$GeminiResponseFromJson(json);

 final  List<CandidateData>? _candidates;
@override List<CandidateData>? get candidates {
  final value = _candidates;
  if (value == null) return null;
  if (_candidates is EqualUnmodifiableListView) return _candidates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  UsageMetaData? usageMetadata;
@override final  String? modelVersion;
@override final  String? responseId;

/// Create a copy of GeminiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeminiResponseCopyWith<_GeminiResponse> get copyWith => __$GeminiResponseCopyWithImpl<_GeminiResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeminiResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeminiResponse&&const DeepCollectionEquality().equals(other._candidates, _candidates)&&(identical(other.usageMetadata, usageMetadata) || other.usageMetadata == usageMetadata)&&(identical(other.modelVersion, modelVersion) || other.modelVersion == modelVersion)&&(identical(other.responseId, responseId) || other.responseId == responseId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_candidates),usageMetadata,modelVersion,responseId);

@override
String toString() {
  return 'GeminiResponse(candidates: $candidates, usageMetadata: $usageMetadata, modelVersion: $modelVersion, responseId: $responseId)';
}


}

/// @nodoc
abstract mixin class _$GeminiResponseCopyWith<$Res> implements $GeminiResponseCopyWith<$Res> {
  factory _$GeminiResponseCopyWith(_GeminiResponse value, $Res Function(_GeminiResponse) _then) = __$GeminiResponseCopyWithImpl;
@override @useResult
$Res call({
 List<CandidateData>? candidates, UsageMetaData? usageMetadata, String? modelVersion, String? responseId
});


@override $UsageMetaDataCopyWith<$Res>? get usageMetadata;

}
/// @nodoc
class __$GeminiResponseCopyWithImpl<$Res>
    implements _$GeminiResponseCopyWith<$Res> {
  __$GeminiResponseCopyWithImpl(this._self, this._then);

  final _GeminiResponse _self;
  final $Res Function(_GeminiResponse) _then;

/// Create a copy of GeminiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? candidates = freezed,Object? usageMetadata = freezed,Object? modelVersion = freezed,Object? responseId = freezed,}) {
  return _then(_GeminiResponse(
candidates: freezed == candidates ? _self._candidates : candidates // ignore: cast_nullable_to_non_nullable
as List<CandidateData>?,usageMetadata: freezed == usageMetadata ? _self.usageMetadata : usageMetadata // ignore: cast_nullable_to_non_nullable
as UsageMetaData?,modelVersion: freezed == modelVersion ? _self.modelVersion : modelVersion // ignore: cast_nullable_to_non_nullable
as String?,responseId: freezed == responseId ? _self.responseId : responseId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of GeminiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UsageMetaDataCopyWith<$Res>? get usageMetadata {
    if (_self.usageMetadata == null) {
    return null;
  }

  return $UsageMetaDataCopyWith<$Res>(_self.usageMetadata!, (value) {
    return _then(_self.copyWith(usageMetadata: value));
  });
}
}


/// @nodoc
mixin _$CandidateData {

 ContentData? get content; String? get finishReason; double? get avgLogprobs;
/// Create a copy of CandidateData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CandidateDataCopyWith<CandidateData> get copyWith => _$CandidateDataCopyWithImpl<CandidateData>(this as CandidateData, _$identity);

  /// Serializes this CandidateData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CandidateData&&(identical(other.content, content) || other.content == content)&&(identical(other.finishReason, finishReason) || other.finishReason == finishReason)&&(identical(other.avgLogprobs, avgLogprobs) || other.avgLogprobs == avgLogprobs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,finishReason,avgLogprobs);

@override
String toString() {
  return 'CandidateData(content: $content, finishReason: $finishReason, avgLogprobs: $avgLogprobs)';
}


}

/// @nodoc
abstract mixin class $CandidateDataCopyWith<$Res>  {
  factory $CandidateDataCopyWith(CandidateData value, $Res Function(CandidateData) _then) = _$CandidateDataCopyWithImpl;
@useResult
$Res call({
 ContentData? content, String? finishReason, double? avgLogprobs
});


$ContentDataCopyWith<$Res>? get content;

}
/// @nodoc
class _$CandidateDataCopyWithImpl<$Res>
    implements $CandidateDataCopyWith<$Res> {
  _$CandidateDataCopyWithImpl(this._self, this._then);

  final CandidateData _self;
  final $Res Function(CandidateData) _then;

/// Create a copy of CandidateData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = freezed,Object? finishReason = freezed,Object? avgLogprobs = freezed,}) {
  return _then(_self.copyWith(
content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as ContentData?,finishReason: freezed == finishReason ? _self.finishReason : finishReason // ignore: cast_nullable_to_non_nullable
as String?,avgLogprobs: freezed == avgLogprobs ? _self.avgLogprobs : avgLogprobs // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}
/// Create a copy of CandidateData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContentDataCopyWith<$Res>? get content {
    if (_self.content == null) {
    return null;
  }

  return $ContentDataCopyWith<$Res>(_self.content!, (value) {
    return _then(_self.copyWith(content: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _CandidateData implements CandidateData {
  const _CandidateData({this.content, this.finishReason, this.avgLogprobs});
  factory _CandidateData.fromJson(Map<String, dynamic> json) => _$CandidateDataFromJson(json);

@override final  ContentData? content;
@override final  String? finishReason;
@override final  double? avgLogprobs;

/// Create a copy of CandidateData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CandidateDataCopyWith<_CandidateData> get copyWith => __$CandidateDataCopyWithImpl<_CandidateData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CandidateDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CandidateData&&(identical(other.content, content) || other.content == content)&&(identical(other.finishReason, finishReason) || other.finishReason == finishReason)&&(identical(other.avgLogprobs, avgLogprobs) || other.avgLogprobs == avgLogprobs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,finishReason,avgLogprobs);

@override
String toString() {
  return 'CandidateData(content: $content, finishReason: $finishReason, avgLogprobs: $avgLogprobs)';
}


}

/// @nodoc
abstract mixin class _$CandidateDataCopyWith<$Res> implements $CandidateDataCopyWith<$Res> {
  factory _$CandidateDataCopyWith(_CandidateData value, $Res Function(_CandidateData) _then) = __$CandidateDataCopyWithImpl;
@override @useResult
$Res call({
 ContentData? content, String? finishReason, double? avgLogprobs
});


@override $ContentDataCopyWith<$Res>? get content;

}
/// @nodoc
class __$CandidateDataCopyWithImpl<$Res>
    implements _$CandidateDataCopyWith<$Res> {
  __$CandidateDataCopyWithImpl(this._self, this._then);

  final _CandidateData _self;
  final $Res Function(_CandidateData) _then;

/// Create a copy of CandidateData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = freezed,Object? finishReason = freezed,Object? avgLogprobs = freezed,}) {
  return _then(_CandidateData(
content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as ContentData?,finishReason: freezed == finishReason ? _self.finishReason : finishReason // ignore: cast_nullable_to_non_nullable
as String?,avgLogprobs: freezed == avgLogprobs ? _self.avgLogprobs : avgLogprobs // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

/// Create a copy of CandidateData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContentDataCopyWith<$Res>? get content {
    if (_self.content == null) {
    return null;
  }

  return $ContentDataCopyWith<$Res>(_self.content!, (value) {
    return _then(_self.copyWith(content: value));
  });
}
}


/// @nodoc
mixin _$ContentData {

 List<ContentPartData>? get parts; String? get role;
/// Create a copy of ContentData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContentDataCopyWith<ContentData> get copyWith => _$ContentDataCopyWithImpl<ContentData>(this as ContentData, _$identity);

  /// Serializes this ContentData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContentData&&const DeepCollectionEquality().equals(other.parts, parts)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(parts),role);

@override
String toString() {
  return 'ContentData(parts: $parts, role: $role)';
}


}

/// @nodoc
abstract mixin class $ContentDataCopyWith<$Res>  {
  factory $ContentDataCopyWith(ContentData value, $Res Function(ContentData) _then) = _$ContentDataCopyWithImpl;
@useResult
$Res call({
 List<ContentPartData>? parts, String? role
});




}
/// @nodoc
class _$ContentDataCopyWithImpl<$Res>
    implements $ContentDataCopyWith<$Res> {
  _$ContentDataCopyWithImpl(this._self, this._then);

  final ContentData _self;
  final $Res Function(ContentData) _then;

/// Create a copy of ContentData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parts = freezed,Object? role = freezed,}) {
  return _then(_self.copyWith(
parts: freezed == parts ? _self.parts : parts // ignore: cast_nullable_to_non_nullable
as List<ContentPartData>?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ContentData implements ContentData {
  const _ContentData({final  List<ContentPartData>? parts, this.role}): _parts = parts;
  factory _ContentData.fromJson(Map<String, dynamic> json) => _$ContentDataFromJson(json);

 final  List<ContentPartData>? _parts;
@override List<ContentPartData>? get parts {
  final value = _parts;
  if (value == null) return null;
  if (_parts is EqualUnmodifiableListView) return _parts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? role;

/// Create a copy of ContentData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContentDataCopyWith<_ContentData> get copyWith => __$ContentDataCopyWithImpl<_ContentData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContentDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContentData&&const DeepCollectionEquality().equals(other._parts, _parts)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_parts),role);

@override
String toString() {
  return 'ContentData(parts: $parts, role: $role)';
}


}

/// @nodoc
abstract mixin class _$ContentDataCopyWith<$Res> implements $ContentDataCopyWith<$Res> {
  factory _$ContentDataCopyWith(_ContentData value, $Res Function(_ContentData) _then) = __$ContentDataCopyWithImpl;
@override @useResult
$Res call({
 List<ContentPartData>? parts, String? role
});




}
/// @nodoc
class __$ContentDataCopyWithImpl<$Res>
    implements _$ContentDataCopyWith<$Res> {
  __$ContentDataCopyWithImpl(this._self, this._then);

  final _ContentData _self;
  final $Res Function(_ContentData) _then;

/// Create a copy of ContentData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parts = freezed,Object? role = freezed,}) {
  return _then(_ContentData(
parts: freezed == parts ? _self._parts : parts // ignore: cast_nullable_to_non_nullable
as List<ContentPartData>?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ContentPartData {

 String? get text;
/// Create a copy of ContentPartData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContentPartDataCopyWith<ContentPartData> get copyWith => _$ContentPartDataCopyWithImpl<ContentPartData>(this as ContentPartData, _$identity);

  /// Serializes this ContentPartData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContentPartData&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString() {
  return 'ContentPartData(text: $text)';
}


}

/// @nodoc
abstract mixin class $ContentPartDataCopyWith<$Res>  {
  factory $ContentPartDataCopyWith(ContentPartData value, $Res Function(ContentPartData) _then) = _$ContentPartDataCopyWithImpl;
@useResult
$Res call({
 String? text
});




}
/// @nodoc
class _$ContentPartDataCopyWithImpl<$Res>
    implements $ContentPartDataCopyWith<$Res> {
  _$ContentPartDataCopyWithImpl(this._self, this._then);

  final ContentPartData _self;
  final $Res Function(ContentPartData) _then;

/// Create a copy of ContentPartData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = freezed,}) {
  return _then(_self.copyWith(
text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ContentPartData implements ContentPartData {
  const _ContentPartData({this.text});
  factory _ContentPartData.fromJson(Map<String, dynamic> json) => _$ContentPartDataFromJson(json);

@override final  String? text;

/// Create a copy of ContentPartData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContentPartDataCopyWith<_ContentPartData> get copyWith => __$ContentPartDataCopyWithImpl<_ContentPartData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContentPartDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContentPartData&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString() {
  return 'ContentPartData(text: $text)';
}


}

/// @nodoc
abstract mixin class _$ContentPartDataCopyWith<$Res> implements $ContentPartDataCopyWith<$Res> {
  factory _$ContentPartDataCopyWith(_ContentPartData value, $Res Function(_ContentPartData) _then) = __$ContentPartDataCopyWithImpl;
@override @useResult
$Res call({
 String? text
});




}
/// @nodoc
class __$ContentPartDataCopyWithImpl<$Res>
    implements _$ContentPartDataCopyWith<$Res> {
  __$ContentPartDataCopyWithImpl(this._self, this._then);

  final _ContentPartData _self;
  final $Res Function(_ContentPartData) _then;

/// Create a copy of ContentPartData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = freezed,}) {
  return _then(_ContentPartData(
text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$UsageMetaData {

 int? get promptTokenCount; int? get candidatesTokenCount; int? get totalTokenCount; List<TokensDetailsData>? get promptTokensDetails; List<TokensDetailsData>? get candidatesTokensDetails;
/// Create a copy of UsageMetaData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsageMetaDataCopyWith<UsageMetaData> get copyWith => _$UsageMetaDataCopyWithImpl<UsageMetaData>(this as UsageMetaData, _$identity);

  /// Serializes this UsageMetaData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsageMetaData&&(identical(other.promptTokenCount, promptTokenCount) || other.promptTokenCount == promptTokenCount)&&(identical(other.candidatesTokenCount, candidatesTokenCount) || other.candidatesTokenCount == candidatesTokenCount)&&(identical(other.totalTokenCount, totalTokenCount) || other.totalTokenCount == totalTokenCount)&&const DeepCollectionEquality().equals(other.promptTokensDetails, promptTokensDetails)&&const DeepCollectionEquality().equals(other.candidatesTokensDetails, candidatesTokensDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,promptTokenCount,candidatesTokenCount,totalTokenCount,const DeepCollectionEquality().hash(promptTokensDetails),const DeepCollectionEquality().hash(candidatesTokensDetails));

@override
String toString() {
  return 'UsageMetaData(promptTokenCount: $promptTokenCount, candidatesTokenCount: $candidatesTokenCount, totalTokenCount: $totalTokenCount, promptTokensDetails: $promptTokensDetails, candidatesTokensDetails: $candidatesTokensDetails)';
}


}

/// @nodoc
abstract mixin class $UsageMetaDataCopyWith<$Res>  {
  factory $UsageMetaDataCopyWith(UsageMetaData value, $Res Function(UsageMetaData) _then) = _$UsageMetaDataCopyWithImpl;
@useResult
$Res call({
 int? promptTokenCount, int? candidatesTokenCount, int? totalTokenCount, List<TokensDetailsData>? promptTokensDetails, List<TokensDetailsData>? candidatesTokensDetails
});




}
/// @nodoc
class _$UsageMetaDataCopyWithImpl<$Res>
    implements $UsageMetaDataCopyWith<$Res> {
  _$UsageMetaDataCopyWithImpl(this._self, this._then);

  final UsageMetaData _self;
  final $Res Function(UsageMetaData) _then;

/// Create a copy of UsageMetaData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? promptTokenCount = freezed,Object? candidatesTokenCount = freezed,Object? totalTokenCount = freezed,Object? promptTokensDetails = freezed,Object? candidatesTokensDetails = freezed,}) {
  return _then(_self.copyWith(
promptTokenCount: freezed == promptTokenCount ? _self.promptTokenCount : promptTokenCount // ignore: cast_nullable_to_non_nullable
as int?,candidatesTokenCount: freezed == candidatesTokenCount ? _self.candidatesTokenCount : candidatesTokenCount // ignore: cast_nullable_to_non_nullable
as int?,totalTokenCount: freezed == totalTokenCount ? _self.totalTokenCount : totalTokenCount // ignore: cast_nullable_to_non_nullable
as int?,promptTokensDetails: freezed == promptTokensDetails ? _self.promptTokensDetails : promptTokensDetails // ignore: cast_nullable_to_non_nullable
as List<TokensDetailsData>?,candidatesTokensDetails: freezed == candidatesTokensDetails ? _self.candidatesTokensDetails : candidatesTokensDetails // ignore: cast_nullable_to_non_nullable
as List<TokensDetailsData>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UsageMetaData implements UsageMetaData {
  const _UsageMetaData({this.promptTokenCount, this.candidatesTokenCount, this.totalTokenCount, final  List<TokensDetailsData>? promptTokensDetails, final  List<TokensDetailsData>? candidatesTokensDetails}): _promptTokensDetails = promptTokensDetails,_candidatesTokensDetails = candidatesTokensDetails;
  factory _UsageMetaData.fromJson(Map<String, dynamic> json) => _$UsageMetaDataFromJson(json);

@override final  int? promptTokenCount;
@override final  int? candidatesTokenCount;
@override final  int? totalTokenCount;
 final  List<TokensDetailsData>? _promptTokensDetails;
@override List<TokensDetailsData>? get promptTokensDetails {
  final value = _promptTokensDetails;
  if (value == null) return null;
  if (_promptTokensDetails is EqualUnmodifiableListView) return _promptTokensDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<TokensDetailsData>? _candidatesTokensDetails;
@override List<TokensDetailsData>? get candidatesTokensDetails {
  final value = _candidatesTokensDetails;
  if (value == null) return null;
  if (_candidatesTokensDetails is EqualUnmodifiableListView) return _candidatesTokensDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of UsageMetaData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsageMetaDataCopyWith<_UsageMetaData> get copyWith => __$UsageMetaDataCopyWithImpl<_UsageMetaData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UsageMetaDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsageMetaData&&(identical(other.promptTokenCount, promptTokenCount) || other.promptTokenCount == promptTokenCount)&&(identical(other.candidatesTokenCount, candidatesTokenCount) || other.candidatesTokenCount == candidatesTokenCount)&&(identical(other.totalTokenCount, totalTokenCount) || other.totalTokenCount == totalTokenCount)&&const DeepCollectionEquality().equals(other._promptTokensDetails, _promptTokensDetails)&&const DeepCollectionEquality().equals(other._candidatesTokensDetails, _candidatesTokensDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,promptTokenCount,candidatesTokenCount,totalTokenCount,const DeepCollectionEquality().hash(_promptTokensDetails),const DeepCollectionEquality().hash(_candidatesTokensDetails));

@override
String toString() {
  return 'UsageMetaData(promptTokenCount: $promptTokenCount, candidatesTokenCount: $candidatesTokenCount, totalTokenCount: $totalTokenCount, promptTokensDetails: $promptTokensDetails, candidatesTokensDetails: $candidatesTokensDetails)';
}


}

/// @nodoc
abstract mixin class _$UsageMetaDataCopyWith<$Res> implements $UsageMetaDataCopyWith<$Res> {
  factory _$UsageMetaDataCopyWith(_UsageMetaData value, $Res Function(_UsageMetaData) _then) = __$UsageMetaDataCopyWithImpl;
@override @useResult
$Res call({
 int? promptTokenCount, int? candidatesTokenCount, int? totalTokenCount, List<TokensDetailsData>? promptTokensDetails, List<TokensDetailsData>? candidatesTokensDetails
});




}
/// @nodoc
class __$UsageMetaDataCopyWithImpl<$Res>
    implements _$UsageMetaDataCopyWith<$Res> {
  __$UsageMetaDataCopyWithImpl(this._self, this._then);

  final _UsageMetaData _self;
  final $Res Function(_UsageMetaData) _then;

/// Create a copy of UsageMetaData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? promptTokenCount = freezed,Object? candidatesTokenCount = freezed,Object? totalTokenCount = freezed,Object? promptTokensDetails = freezed,Object? candidatesTokensDetails = freezed,}) {
  return _then(_UsageMetaData(
promptTokenCount: freezed == promptTokenCount ? _self.promptTokenCount : promptTokenCount // ignore: cast_nullable_to_non_nullable
as int?,candidatesTokenCount: freezed == candidatesTokenCount ? _self.candidatesTokenCount : candidatesTokenCount // ignore: cast_nullable_to_non_nullable
as int?,totalTokenCount: freezed == totalTokenCount ? _self.totalTokenCount : totalTokenCount // ignore: cast_nullable_to_non_nullable
as int?,promptTokensDetails: freezed == promptTokensDetails ? _self._promptTokensDetails : promptTokensDetails // ignore: cast_nullable_to_non_nullable
as List<TokensDetailsData>?,candidatesTokensDetails: freezed == candidatesTokensDetails ? _self._candidatesTokensDetails : candidatesTokensDetails // ignore: cast_nullable_to_non_nullable
as List<TokensDetailsData>?,
  ));
}


}

TokensDetailsData _$TokensDetailsDataFromJson(
  Map<String, dynamic> json
) {
    return _TokensDetails.fromJson(
      json
    );
}

/// @nodoc
mixin _$TokensDetailsData {

 String? get modality; int? get tokenCount;
/// Create a copy of TokensDetailsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TokensDetailsDataCopyWith<TokensDetailsData> get copyWith => _$TokensDetailsDataCopyWithImpl<TokensDetailsData>(this as TokensDetailsData, _$identity);

  /// Serializes this TokensDetailsData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TokensDetailsData&&(identical(other.modality, modality) || other.modality == modality)&&(identical(other.tokenCount, tokenCount) || other.tokenCount == tokenCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,modality,tokenCount);

@override
String toString() {
  return 'TokensDetailsData(modality: $modality, tokenCount: $tokenCount)';
}


}

/// @nodoc
abstract mixin class $TokensDetailsDataCopyWith<$Res>  {
  factory $TokensDetailsDataCopyWith(TokensDetailsData value, $Res Function(TokensDetailsData) _then) = _$TokensDetailsDataCopyWithImpl;
@useResult
$Res call({
 String? modality, int? tokenCount
});




}
/// @nodoc
class _$TokensDetailsDataCopyWithImpl<$Res>
    implements $TokensDetailsDataCopyWith<$Res> {
  _$TokensDetailsDataCopyWithImpl(this._self, this._then);

  final TokensDetailsData _self;
  final $Res Function(TokensDetailsData) _then;

/// Create a copy of TokensDetailsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? modality = freezed,Object? tokenCount = freezed,}) {
  return _then(_self.copyWith(
modality: freezed == modality ? _self.modality : modality // ignore: cast_nullable_to_non_nullable
as String?,tokenCount: freezed == tokenCount ? _self.tokenCount : tokenCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TokensDetails implements TokensDetailsData {
  const _TokensDetails({this.modality, this.tokenCount});
  factory _TokensDetails.fromJson(Map<String, dynamic> json) => _$TokensDetailsFromJson(json);

@override final  String? modality;
@override final  int? tokenCount;

/// Create a copy of TokensDetailsData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TokensDetailsCopyWith<_TokensDetails> get copyWith => __$TokensDetailsCopyWithImpl<_TokensDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TokensDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TokensDetails&&(identical(other.modality, modality) || other.modality == modality)&&(identical(other.tokenCount, tokenCount) || other.tokenCount == tokenCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,modality,tokenCount);

@override
String toString() {
  return 'TokensDetailsData(modality: $modality, tokenCount: $tokenCount)';
}


}

/// @nodoc
abstract mixin class _$TokensDetailsCopyWith<$Res> implements $TokensDetailsDataCopyWith<$Res> {
  factory _$TokensDetailsCopyWith(_TokensDetails value, $Res Function(_TokensDetails) _then) = __$TokensDetailsCopyWithImpl;
@override @useResult
$Res call({
 String? modality, int? tokenCount
});




}
/// @nodoc
class __$TokensDetailsCopyWithImpl<$Res>
    implements _$TokensDetailsCopyWith<$Res> {
  __$TokensDetailsCopyWithImpl(this._self, this._then);

  final _TokensDetails _self;
  final $Res Function(_TokensDetails) _then;

/// Create a copy of TokensDetailsData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? modality = freezed,Object? tokenCount = freezed,}) {
  return _then(_TokensDetails(
modality: freezed == modality ? _self.modality : modality // ignore: cast_nullable_to_non_nullable
as String?,tokenCount: freezed == tokenCount ? _self.tokenCount : tokenCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
