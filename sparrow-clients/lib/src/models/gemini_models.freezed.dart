// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gemini_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GeminiResponse {

 List<Candidate>? get candidates; UsageMetadata? get usageMetadata; String? get modelVersion; String? get responseId;
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
 List<Candidate>? candidates, UsageMetadata? usageMetadata, String? modelVersion, String? responseId
});


$UsageMetadataCopyWith<$Res>? get usageMetadata;

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
as List<Candidate>?,usageMetadata: freezed == usageMetadata ? _self.usageMetadata : usageMetadata // ignore: cast_nullable_to_non_nullable
as UsageMetadata?,modelVersion: freezed == modelVersion ? _self.modelVersion : modelVersion // ignore: cast_nullable_to_non_nullable
as String?,responseId: freezed == responseId ? _self.responseId : responseId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of GeminiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UsageMetadataCopyWith<$Res>? get usageMetadata {
    if (_self.usageMetadata == null) {
    return null;
  }

  return $UsageMetadataCopyWith<$Res>(_self.usageMetadata!, (value) {
    return _then(_self.copyWith(usageMetadata: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _GeminiResponse implements GeminiResponse {
  const _GeminiResponse({final  List<Candidate>? candidates, this.usageMetadata, this.modelVersion, this.responseId}): _candidates = candidates;
  factory _GeminiResponse.fromJson(Map<String, dynamic> json) => _$GeminiResponseFromJson(json);

 final  List<Candidate>? _candidates;
@override List<Candidate>? get candidates {
  final value = _candidates;
  if (value == null) return null;
  if (_candidates is EqualUnmodifiableListView) return _candidates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  UsageMetadata? usageMetadata;
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
 List<Candidate>? candidates, UsageMetadata? usageMetadata, String? modelVersion, String? responseId
});


@override $UsageMetadataCopyWith<$Res>? get usageMetadata;

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
as List<Candidate>?,usageMetadata: freezed == usageMetadata ? _self.usageMetadata : usageMetadata // ignore: cast_nullable_to_non_nullable
as UsageMetadata?,modelVersion: freezed == modelVersion ? _self.modelVersion : modelVersion // ignore: cast_nullable_to_non_nullable
as String?,responseId: freezed == responseId ? _self.responseId : responseId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of GeminiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UsageMetadataCopyWith<$Res>? get usageMetadata {
    if (_self.usageMetadata == null) {
    return null;
  }

  return $UsageMetadataCopyWith<$Res>(_self.usageMetadata!, (value) {
    return _then(_self.copyWith(usageMetadata: value));
  });
}
}


/// @nodoc
mixin _$Candidate {

 Content? get content; String? get finishReason; double? get avgLogprobs;
/// Create a copy of Candidate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CandidateCopyWith<Candidate> get copyWith => _$CandidateCopyWithImpl<Candidate>(this as Candidate, _$identity);

  /// Serializes this Candidate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Candidate&&(identical(other.content, content) || other.content == content)&&(identical(other.finishReason, finishReason) || other.finishReason == finishReason)&&(identical(other.avgLogprobs, avgLogprobs) || other.avgLogprobs == avgLogprobs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,finishReason,avgLogprobs);

@override
String toString() {
  return 'Candidate(content: $content, finishReason: $finishReason, avgLogprobs: $avgLogprobs)';
}


}

/// @nodoc
abstract mixin class $CandidateCopyWith<$Res>  {
  factory $CandidateCopyWith(Candidate value, $Res Function(Candidate) _then) = _$CandidateCopyWithImpl;
@useResult
$Res call({
 Content? content, String? finishReason, double? avgLogprobs
});


$ContentCopyWith<$Res>? get content;

}
/// @nodoc
class _$CandidateCopyWithImpl<$Res>
    implements $CandidateCopyWith<$Res> {
  _$CandidateCopyWithImpl(this._self, this._then);

  final Candidate _self;
  final $Res Function(Candidate) _then;

/// Create a copy of Candidate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = freezed,Object? finishReason = freezed,Object? avgLogprobs = freezed,}) {
  return _then(_self.copyWith(
content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as Content?,finishReason: freezed == finishReason ? _self.finishReason : finishReason // ignore: cast_nullable_to_non_nullable
as String?,avgLogprobs: freezed == avgLogprobs ? _self.avgLogprobs : avgLogprobs // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}
/// Create a copy of Candidate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContentCopyWith<$Res>? get content {
    if (_self.content == null) {
    return null;
  }

  return $ContentCopyWith<$Res>(_self.content!, (value) {
    return _then(_self.copyWith(content: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Candidate implements Candidate {
  const _Candidate({this.content, this.finishReason, this.avgLogprobs});
  factory _Candidate.fromJson(Map<String, dynamic> json) => _$CandidateFromJson(json);

@override final  Content? content;
@override final  String? finishReason;
@override final  double? avgLogprobs;

/// Create a copy of Candidate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CandidateCopyWith<_Candidate> get copyWith => __$CandidateCopyWithImpl<_Candidate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CandidateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Candidate&&(identical(other.content, content) || other.content == content)&&(identical(other.finishReason, finishReason) || other.finishReason == finishReason)&&(identical(other.avgLogprobs, avgLogprobs) || other.avgLogprobs == avgLogprobs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,finishReason,avgLogprobs);

@override
String toString() {
  return 'Candidate(content: $content, finishReason: $finishReason, avgLogprobs: $avgLogprobs)';
}


}

/// @nodoc
abstract mixin class _$CandidateCopyWith<$Res> implements $CandidateCopyWith<$Res> {
  factory _$CandidateCopyWith(_Candidate value, $Res Function(_Candidate) _then) = __$CandidateCopyWithImpl;
@override @useResult
$Res call({
 Content? content, String? finishReason, double? avgLogprobs
});


@override $ContentCopyWith<$Res>? get content;

}
/// @nodoc
class __$CandidateCopyWithImpl<$Res>
    implements _$CandidateCopyWith<$Res> {
  __$CandidateCopyWithImpl(this._self, this._then);

  final _Candidate _self;
  final $Res Function(_Candidate) _then;

/// Create a copy of Candidate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = freezed,Object? finishReason = freezed,Object? avgLogprobs = freezed,}) {
  return _then(_Candidate(
content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as Content?,finishReason: freezed == finishReason ? _self.finishReason : finishReason // ignore: cast_nullable_to_non_nullable
as String?,avgLogprobs: freezed == avgLogprobs ? _self.avgLogprobs : avgLogprobs // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

/// Create a copy of Candidate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContentCopyWith<$Res>? get content {
    if (_self.content == null) {
    return null;
  }

  return $ContentCopyWith<$Res>(_self.content!, (value) {
    return _then(_self.copyWith(content: value));
  });
}
}


/// @nodoc
mixin _$Content {

 List<Part>? get parts; String? get role;
/// Create a copy of Content
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContentCopyWith<Content> get copyWith => _$ContentCopyWithImpl<Content>(this as Content, _$identity);

  /// Serializes this Content to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Content&&const DeepCollectionEquality().equals(other.parts, parts)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(parts),role);

@override
String toString() {
  return 'Content(parts: $parts, role: $role)';
}


}

/// @nodoc
abstract mixin class $ContentCopyWith<$Res>  {
  factory $ContentCopyWith(Content value, $Res Function(Content) _then) = _$ContentCopyWithImpl;
@useResult
$Res call({
 List<Part>? parts, String? role
});




}
/// @nodoc
class _$ContentCopyWithImpl<$Res>
    implements $ContentCopyWith<$Res> {
  _$ContentCopyWithImpl(this._self, this._then);

  final Content _self;
  final $Res Function(Content) _then;

/// Create a copy of Content
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parts = freezed,Object? role = freezed,}) {
  return _then(_self.copyWith(
parts: freezed == parts ? _self.parts : parts // ignore: cast_nullable_to_non_nullable
as List<Part>?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Content implements Content {
  const _Content({final  List<Part>? parts, this.role}): _parts = parts;
  factory _Content.fromJson(Map<String, dynamic> json) => _$ContentFromJson(json);

 final  List<Part>? _parts;
@override List<Part>? get parts {
  final value = _parts;
  if (value == null) return null;
  if (_parts is EqualUnmodifiableListView) return _parts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? role;

/// Create a copy of Content
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContentCopyWith<_Content> get copyWith => __$ContentCopyWithImpl<_Content>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Content&&const DeepCollectionEquality().equals(other._parts, _parts)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_parts),role);

@override
String toString() {
  return 'Content(parts: $parts, role: $role)';
}


}

/// @nodoc
abstract mixin class _$ContentCopyWith<$Res> implements $ContentCopyWith<$Res> {
  factory _$ContentCopyWith(_Content value, $Res Function(_Content) _then) = __$ContentCopyWithImpl;
@override @useResult
$Res call({
 List<Part>? parts, String? role
});




}
/// @nodoc
class __$ContentCopyWithImpl<$Res>
    implements _$ContentCopyWith<$Res> {
  __$ContentCopyWithImpl(this._self, this._then);

  final _Content _self;
  final $Res Function(_Content) _then;

/// Create a copy of Content
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parts = freezed,Object? role = freezed,}) {
  return _then(_Content(
parts: freezed == parts ? _self._parts : parts // ignore: cast_nullable_to_non_nullable
as List<Part>?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Part {

 String? get text;
/// Create a copy of Part
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PartCopyWith<Part> get copyWith => _$PartCopyWithImpl<Part>(this as Part, _$identity);

  /// Serializes this Part to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Part&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString() {
  return 'Part(text: $text)';
}


}

/// @nodoc
abstract mixin class $PartCopyWith<$Res>  {
  factory $PartCopyWith(Part value, $Res Function(Part) _then) = _$PartCopyWithImpl;
@useResult
$Res call({
 String? text
});




}
/// @nodoc
class _$PartCopyWithImpl<$Res>
    implements $PartCopyWith<$Res> {
  _$PartCopyWithImpl(this._self, this._then);

  final Part _self;
  final $Res Function(Part) _then;

/// Create a copy of Part
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

class _Part implements Part {
  const _Part({this.text});
  factory _Part.fromJson(Map<String, dynamic> json) => _$PartFromJson(json);

@override final  String? text;

/// Create a copy of Part
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PartCopyWith<_Part> get copyWith => __$PartCopyWithImpl<_Part>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PartToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Part&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString() {
  return 'Part(text: $text)';
}


}

/// @nodoc
abstract mixin class _$PartCopyWith<$Res> implements $PartCopyWith<$Res> {
  factory _$PartCopyWith(_Part value, $Res Function(_Part) _then) = __$PartCopyWithImpl;
@override @useResult
$Res call({
 String? text
});




}
/// @nodoc
class __$PartCopyWithImpl<$Res>
    implements _$PartCopyWith<$Res> {
  __$PartCopyWithImpl(this._self, this._then);

  final _Part _self;
  final $Res Function(_Part) _then;

/// Create a copy of Part
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = freezed,}) {
  return _then(_Part(
text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$UsageMetadata {

 int? get promptTokenCount; int? get candidatesTokenCount; int? get totalTokenCount; List<TokensDetails>? get promptTokensDetails; List<TokensDetails>? get candidatesTokensDetails;
/// Create a copy of UsageMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsageMetadataCopyWith<UsageMetadata> get copyWith => _$UsageMetadataCopyWithImpl<UsageMetadata>(this as UsageMetadata, _$identity);

  /// Serializes this UsageMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsageMetadata&&(identical(other.promptTokenCount, promptTokenCount) || other.promptTokenCount == promptTokenCount)&&(identical(other.candidatesTokenCount, candidatesTokenCount) || other.candidatesTokenCount == candidatesTokenCount)&&(identical(other.totalTokenCount, totalTokenCount) || other.totalTokenCount == totalTokenCount)&&const DeepCollectionEquality().equals(other.promptTokensDetails, promptTokensDetails)&&const DeepCollectionEquality().equals(other.candidatesTokensDetails, candidatesTokensDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,promptTokenCount,candidatesTokenCount,totalTokenCount,const DeepCollectionEquality().hash(promptTokensDetails),const DeepCollectionEquality().hash(candidatesTokensDetails));

@override
String toString() {
  return 'UsageMetadata(promptTokenCount: $promptTokenCount, candidatesTokenCount: $candidatesTokenCount, totalTokenCount: $totalTokenCount, promptTokensDetails: $promptTokensDetails, candidatesTokensDetails: $candidatesTokensDetails)';
}


}

/// @nodoc
abstract mixin class $UsageMetadataCopyWith<$Res>  {
  factory $UsageMetadataCopyWith(UsageMetadata value, $Res Function(UsageMetadata) _then) = _$UsageMetadataCopyWithImpl;
@useResult
$Res call({
 int? promptTokenCount, int? candidatesTokenCount, int? totalTokenCount, List<TokensDetails>? promptTokensDetails, List<TokensDetails>? candidatesTokensDetails
});




}
/// @nodoc
class _$UsageMetadataCopyWithImpl<$Res>
    implements $UsageMetadataCopyWith<$Res> {
  _$UsageMetadataCopyWithImpl(this._self, this._then);

  final UsageMetadata _self;
  final $Res Function(UsageMetadata) _then;

/// Create a copy of UsageMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? promptTokenCount = freezed,Object? candidatesTokenCount = freezed,Object? totalTokenCount = freezed,Object? promptTokensDetails = freezed,Object? candidatesTokensDetails = freezed,}) {
  return _then(_self.copyWith(
promptTokenCount: freezed == promptTokenCount ? _self.promptTokenCount : promptTokenCount // ignore: cast_nullable_to_non_nullable
as int?,candidatesTokenCount: freezed == candidatesTokenCount ? _self.candidatesTokenCount : candidatesTokenCount // ignore: cast_nullable_to_non_nullable
as int?,totalTokenCount: freezed == totalTokenCount ? _self.totalTokenCount : totalTokenCount // ignore: cast_nullable_to_non_nullable
as int?,promptTokensDetails: freezed == promptTokensDetails ? _self.promptTokensDetails : promptTokensDetails // ignore: cast_nullable_to_non_nullable
as List<TokensDetails>?,candidatesTokensDetails: freezed == candidatesTokensDetails ? _self.candidatesTokensDetails : candidatesTokensDetails // ignore: cast_nullable_to_non_nullable
as List<TokensDetails>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UsageMetadata implements UsageMetadata {
  const _UsageMetadata({this.promptTokenCount, this.candidatesTokenCount, this.totalTokenCount, final  List<TokensDetails>? promptTokensDetails, final  List<TokensDetails>? candidatesTokensDetails}): _promptTokensDetails = promptTokensDetails,_candidatesTokensDetails = candidatesTokensDetails;
  factory _UsageMetadata.fromJson(Map<String, dynamic> json) => _$UsageMetadataFromJson(json);

@override final  int? promptTokenCount;
@override final  int? candidatesTokenCount;
@override final  int? totalTokenCount;
 final  List<TokensDetails>? _promptTokensDetails;
@override List<TokensDetails>? get promptTokensDetails {
  final value = _promptTokensDetails;
  if (value == null) return null;
  if (_promptTokensDetails is EqualUnmodifiableListView) return _promptTokensDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<TokensDetails>? _candidatesTokensDetails;
@override List<TokensDetails>? get candidatesTokensDetails {
  final value = _candidatesTokensDetails;
  if (value == null) return null;
  if (_candidatesTokensDetails is EqualUnmodifiableListView) return _candidatesTokensDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of UsageMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsageMetadataCopyWith<_UsageMetadata> get copyWith => __$UsageMetadataCopyWithImpl<_UsageMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UsageMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsageMetadata&&(identical(other.promptTokenCount, promptTokenCount) || other.promptTokenCount == promptTokenCount)&&(identical(other.candidatesTokenCount, candidatesTokenCount) || other.candidatesTokenCount == candidatesTokenCount)&&(identical(other.totalTokenCount, totalTokenCount) || other.totalTokenCount == totalTokenCount)&&const DeepCollectionEquality().equals(other._promptTokensDetails, _promptTokensDetails)&&const DeepCollectionEquality().equals(other._candidatesTokensDetails, _candidatesTokensDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,promptTokenCount,candidatesTokenCount,totalTokenCount,const DeepCollectionEquality().hash(_promptTokensDetails),const DeepCollectionEquality().hash(_candidatesTokensDetails));

@override
String toString() {
  return 'UsageMetadata(promptTokenCount: $promptTokenCount, candidatesTokenCount: $candidatesTokenCount, totalTokenCount: $totalTokenCount, promptTokensDetails: $promptTokensDetails, candidatesTokensDetails: $candidatesTokensDetails)';
}


}

/// @nodoc
abstract mixin class _$UsageMetadataCopyWith<$Res> implements $UsageMetadataCopyWith<$Res> {
  factory _$UsageMetadataCopyWith(_UsageMetadata value, $Res Function(_UsageMetadata) _then) = __$UsageMetadataCopyWithImpl;
@override @useResult
$Res call({
 int? promptTokenCount, int? candidatesTokenCount, int? totalTokenCount, List<TokensDetails>? promptTokensDetails, List<TokensDetails>? candidatesTokensDetails
});




}
/// @nodoc
class __$UsageMetadataCopyWithImpl<$Res>
    implements _$UsageMetadataCopyWith<$Res> {
  __$UsageMetadataCopyWithImpl(this._self, this._then);

  final _UsageMetadata _self;
  final $Res Function(_UsageMetadata) _then;

/// Create a copy of UsageMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? promptTokenCount = freezed,Object? candidatesTokenCount = freezed,Object? totalTokenCount = freezed,Object? promptTokensDetails = freezed,Object? candidatesTokensDetails = freezed,}) {
  return _then(_UsageMetadata(
promptTokenCount: freezed == promptTokenCount ? _self.promptTokenCount : promptTokenCount // ignore: cast_nullable_to_non_nullable
as int?,candidatesTokenCount: freezed == candidatesTokenCount ? _self.candidatesTokenCount : candidatesTokenCount // ignore: cast_nullable_to_non_nullable
as int?,totalTokenCount: freezed == totalTokenCount ? _self.totalTokenCount : totalTokenCount // ignore: cast_nullable_to_non_nullable
as int?,promptTokensDetails: freezed == promptTokensDetails ? _self._promptTokensDetails : promptTokensDetails // ignore: cast_nullable_to_non_nullable
as List<TokensDetails>?,candidatesTokensDetails: freezed == candidatesTokensDetails ? _self._candidatesTokensDetails : candidatesTokensDetails // ignore: cast_nullable_to_non_nullable
as List<TokensDetails>?,
  ));
}


}


/// @nodoc
mixin _$TokensDetails {

 String? get modality; int? get tokenCount;
/// Create a copy of TokensDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TokensDetailsCopyWith<TokensDetails> get copyWith => _$TokensDetailsCopyWithImpl<TokensDetails>(this as TokensDetails, _$identity);

  /// Serializes this TokensDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TokensDetails&&(identical(other.modality, modality) || other.modality == modality)&&(identical(other.tokenCount, tokenCount) || other.tokenCount == tokenCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,modality,tokenCount);

@override
String toString() {
  return 'TokensDetails(modality: $modality, tokenCount: $tokenCount)';
}


}

/// @nodoc
abstract mixin class $TokensDetailsCopyWith<$Res>  {
  factory $TokensDetailsCopyWith(TokensDetails value, $Res Function(TokensDetails) _then) = _$TokensDetailsCopyWithImpl;
@useResult
$Res call({
 String? modality, int? tokenCount
});




}
/// @nodoc
class _$TokensDetailsCopyWithImpl<$Res>
    implements $TokensDetailsCopyWith<$Res> {
  _$TokensDetailsCopyWithImpl(this._self, this._then);

  final TokensDetails _self;
  final $Res Function(TokensDetails) _then;

/// Create a copy of TokensDetails
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

class _TokensDetails implements TokensDetails {
  const _TokensDetails({this.modality, this.tokenCount});
  factory _TokensDetails.fromJson(Map<String, dynamic> json) => _$TokensDetailsFromJson(json);

@override final  String? modality;
@override final  int? tokenCount;

/// Create a copy of TokensDetails
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
  return 'TokensDetails(modality: $modality, tokenCount: $tokenCount)';
}


}

/// @nodoc
abstract mixin class _$TokensDetailsCopyWith<$Res> implements $TokensDetailsCopyWith<$Res> {
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

/// Create a copy of TokensDetails
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
