// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ModelResponse {

 String? get output; List<ConversationLog>? get conversationLogs; String? get model; int? get inputTokenCount; int? get outputTokenCount; int? get totalTokenCount;
/// Create a copy of ModelResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModelResponseCopyWith<ModelResponse> get copyWith => _$ModelResponseCopyWithImpl<ModelResponse>(this as ModelResponse, _$identity);

  /// Serializes this ModelResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModelResponse&&(identical(other.output, output) || other.output == output)&&const DeepCollectionEquality().equals(other.conversationLogs, conversationLogs)&&(identical(other.model, model) || other.model == model)&&(identical(other.inputTokenCount, inputTokenCount) || other.inputTokenCount == inputTokenCount)&&(identical(other.outputTokenCount, outputTokenCount) || other.outputTokenCount == outputTokenCount)&&(identical(other.totalTokenCount, totalTokenCount) || other.totalTokenCount == totalTokenCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,output,const DeepCollectionEquality().hash(conversationLogs),model,inputTokenCount,outputTokenCount,totalTokenCount);

@override
String toString() {
  return 'ModelResponse(output: $output, conversationLogs: $conversationLogs, model: $model, inputTokenCount: $inputTokenCount, outputTokenCount: $outputTokenCount, totalTokenCount: $totalTokenCount)';
}


}

/// @nodoc
abstract mixin class $ModelResponseCopyWith<$Res>  {
  factory $ModelResponseCopyWith(ModelResponse value, $Res Function(ModelResponse) _then) = _$ModelResponseCopyWithImpl;
@useResult
$Res call({
 String? output, List<ConversationLog>? conversationLogs, String? model, int? inputTokenCount, int? outputTokenCount, int? totalTokenCount
});




}
/// @nodoc
class _$ModelResponseCopyWithImpl<$Res>
    implements $ModelResponseCopyWith<$Res> {
  _$ModelResponseCopyWithImpl(this._self, this._then);

  final ModelResponse _self;
  final $Res Function(ModelResponse) _then;

/// Create a copy of ModelResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? output = freezed,Object? conversationLogs = freezed,Object? model = freezed,Object? inputTokenCount = freezed,Object? outputTokenCount = freezed,Object? totalTokenCount = freezed,}) {
  return _then(_self.copyWith(
output: freezed == output ? _self.output : output // ignore: cast_nullable_to_non_nullable
as String?,conversationLogs: freezed == conversationLogs ? _self.conversationLogs : conversationLogs // ignore: cast_nullable_to_non_nullable
as List<ConversationLog>?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,inputTokenCount: freezed == inputTokenCount ? _self.inputTokenCount : inputTokenCount // ignore: cast_nullable_to_non_nullable
as int?,outputTokenCount: freezed == outputTokenCount ? _self.outputTokenCount : outputTokenCount // ignore: cast_nullable_to_non_nullable
as int?,totalTokenCount: freezed == totalTokenCount ? _self.totalTokenCount : totalTokenCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ModelResponse].
extension ModelResponsePatterns on ModelResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ModelResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ModelResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ModelResponse value)  $default,){
final _that = this;
switch (_that) {
case _ModelResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ModelResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ModelResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? output,  List<ConversationLog>? conversationLogs,  String? model,  int? inputTokenCount,  int? outputTokenCount,  int? totalTokenCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ModelResponse() when $default != null:
return $default(_that.output,_that.conversationLogs,_that.model,_that.inputTokenCount,_that.outputTokenCount,_that.totalTokenCount);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? output,  List<ConversationLog>? conversationLogs,  String? model,  int? inputTokenCount,  int? outputTokenCount,  int? totalTokenCount)  $default,) {final _that = this;
switch (_that) {
case _ModelResponse():
return $default(_that.output,_that.conversationLogs,_that.model,_that.inputTokenCount,_that.outputTokenCount,_that.totalTokenCount);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? output,  List<ConversationLog>? conversationLogs,  String? model,  int? inputTokenCount,  int? outputTokenCount,  int? totalTokenCount)?  $default,) {final _that = this;
switch (_that) {
case _ModelResponse() when $default != null:
return $default(_that.output,_that.conversationLogs,_that.model,_that.inputTokenCount,_that.outputTokenCount,_that.totalTokenCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ModelResponse implements ModelResponse {
  const _ModelResponse({this.output, final  List<ConversationLog>? conversationLogs, this.model, this.inputTokenCount, this.outputTokenCount, this.totalTokenCount}): _conversationLogs = conversationLogs;
  factory _ModelResponse.fromJson(Map<String, dynamic> json) => _$ModelResponseFromJson(json);

@override final  String? output;
 final  List<ConversationLog>? _conversationLogs;
@override List<ConversationLog>? get conversationLogs {
  final value = _conversationLogs;
  if (value == null) return null;
  if (_conversationLogs is EqualUnmodifiableListView) return _conversationLogs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? model;
@override final  int? inputTokenCount;
@override final  int? outputTokenCount;
@override final  int? totalTokenCount;

/// Create a copy of ModelResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModelResponseCopyWith<_ModelResponse> get copyWith => __$ModelResponseCopyWithImpl<_ModelResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModelResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModelResponse&&(identical(other.output, output) || other.output == output)&&const DeepCollectionEquality().equals(other._conversationLogs, _conversationLogs)&&(identical(other.model, model) || other.model == model)&&(identical(other.inputTokenCount, inputTokenCount) || other.inputTokenCount == inputTokenCount)&&(identical(other.outputTokenCount, outputTokenCount) || other.outputTokenCount == outputTokenCount)&&(identical(other.totalTokenCount, totalTokenCount) || other.totalTokenCount == totalTokenCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,output,const DeepCollectionEquality().hash(_conversationLogs),model,inputTokenCount,outputTokenCount,totalTokenCount);

@override
String toString() {
  return 'ModelResponse(output: $output, conversationLogs: $conversationLogs, model: $model, inputTokenCount: $inputTokenCount, outputTokenCount: $outputTokenCount, totalTokenCount: $totalTokenCount)';
}


}

/// @nodoc
abstract mixin class _$ModelResponseCopyWith<$Res> implements $ModelResponseCopyWith<$Res> {
  factory _$ModelResponseCopyWith(_ModelResponse value, $Res Function(_ModelResponse) _then) = __$ModelResponseCopyWithImpl;
@override @useResult
$Res call({
 String? output, List<ConversationLog>? conversationLogs, String? model, int? inputTokenCount, int? outputTokenCount, int? totalTokenCount
});




}
/// @nodoc
class __$ModelResponseCopyWithImpl<$Res>
    implements _$ModelResponseCopyWith<$Res> {
  __$ModelResponseCopyWithImpl(this._self, this._then);

  final _ModelResponse _self;
  final $Res Function(_ModelResponse) _then;

/// Create a copy of ModelResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? output = freezed,Object? conversationLogs = freezed,Object? model = freezed,Object? inputTokenCount = freezed,Object? outputTokenCount = freezed,Object? totalTokenCount = freezed,}) {
  return _then(_ModelResponse(
output: freezed == output ? _self.output : output // ignore: cast_nullable_to_non_nullable
as String?,conversationLogs: freezed == conversationLogs ? _self._conversationLogs : conversationLogs // ignore: cast_nullable_to_non_nullable
as List<ConversationLog>?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,inputTokenCount: freezed == inputTokenCount ? _self.inputTokenCount : inputTokenCount // ignore: cast_nullable_to_non_nullable
as int?,outputTokenCount: freezed == outputTokenCount ? _self.outputTokenCount : outputTokenCount // ignore: cast_nullable_to_non_nullable
as int?,totalTokenCount: freezed == totalTokenCount ? _self.totalTokenCount : totalTokenCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
