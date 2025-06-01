// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConversationLog _$ConversationLogFromJson(Map<String, dynamic> json) =>
    _ConversationLog(
      role: json['role'] as String?,
      message: json['message'] as String?,
      model: json['model'] as String?,
    );

Map<String, dynamic> _$ConversationLogToJson(_ConversationLog instance) =>
    <String, dynamic>{
      'role': instance.role,
      'message': instance.message,
      'model': instance.model,
    };
