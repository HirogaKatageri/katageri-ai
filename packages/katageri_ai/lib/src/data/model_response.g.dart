// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ModelResponse _$ModelResponseFromJson(Map<String, dynamic> json) =>
    _ModelResponse(
      output: json['output'] as String?,
      conversationLogs: (json['conversationLogs'] as List<dynamic>?)
          ?.map((e) => ConversationLog.fromJson(e as Map<String, dynamic>))
          .toList(),
      model: json['model'] as String?,
      inputTokenCount: (json['inputTokenCount'] as num?)?.toInt(),
      outputTokenCount: (json['outputTokenCount'] as num?)?.toInt(),
      totalTokenCount: (json['totalTokenCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ModelResponseToJson(_ModelResponse instance) =>
    <String, dynamic>{
      'output': instance.output,
      'conversationLogs': instance.conversationLogs,
      'model': instance.model,
      'inputTokenCount': instance.inputTokenCount,
      'outputTokenCount': instance.outputTokenCount,
      'totalTokenCount': instance.totalTokenCount,
    };
