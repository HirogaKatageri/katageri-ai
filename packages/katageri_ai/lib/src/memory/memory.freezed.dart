// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memory.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConversationLog {

 String? get role; String? get message; String? get model;
/// Create a copy of ConversationLog
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConversationLogCopyWith<ConversationLog> get copyWith => _$ConversationLogCopyWithImpl<ConversationLog>(this as ConversationLog, _$identity);

  /// Serializes this ConversationLog to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConversationLog&&(identical(other.role, role) || other.role == role)&&(identical(other.message, message) || other.message == message)&&(identical(other.model, model) || other.model == model));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,message,model);

@override
String toString() {
  return 'ConversationLog(role: $role, message: $message, model: $model)';
}


}

/// @nodoc
abstract mixin class $ConversationLogCopyWith<$Res>  {
  factory $ConversationLogCopyWith(ConversationLog value, $Res Function(ConversationLog) _then) = _$ConversationLogCopyWithImpl;
@useResult
$Res call({
 String? role, String? message, String? model
});




}
/// @nodoc
class _$ConversationLogCopyWithImpl<$Res>
    implements $ConversationLogCopyWith<$Res> {
  _$ConversationLogCopyWithImpl(this._self, this._then);

  final ConversationLog _self;
  final $Res Function(ConversationLog) _then;

/// Create a copy of ConversationLog
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? role = freezed,Object? message = freezed,Object? model = freezed,}) {
  return _then(_self.copyWith(
role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ConversationLog implements ConversationLog {
  const _ConversationLog({this.role, this.message, this.model});
  factory _ConversationLog.fromJson(Map<String, dynamic> json) => _$ConversationLogFromJson(json);

@override final  String? role;
@override final  String? message;
@override final  String? model;

/// Create a copy of ConversationLog
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConversationLogCopyWith<_ConversationLog> get copyWith => __$ConversationLogCopyWithImpl<_ConversationLog>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConversationLogToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConversationLog&&(identical(other.role, role) || other.role == role)&&(identical(other.message, message) || other.message == message)&&(identical(other.model, model) || other.model == model));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,message,model);

@override
String toString() {
  return 'ConversationLog(role: $role, message: $message, model: $model)';
}


}

/// @nodoc
abstract mixin class _$ConversationLogCopyWith<$Res> implements $ConversationLogCopyWith<$Res> {
  factory _$ConversationLogCopyWith(_ConversationLog value, $Res Function(_ConversationLog) _then) = __$ConversationLogCopyWithImpl;
@override @useResult
$Res call({
 String? role, String? message, String? model
});




}
/// @nodoc
class __$ConversationLogCopyWithImpl<$Res>
    implements _$ConversationLogCopyWith<$Res> {
  __$ConversationLogCopyWithImpl(this._self, this._then);

  final _ConversationLog _self;
  final $Res Function(_ConversationLog) _then;

/// Create a copy of ConversationLog
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? role = freezed,Object? message = freezed,Object? model = freezed,}) {
  return _then(_ConversationLog(
role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
