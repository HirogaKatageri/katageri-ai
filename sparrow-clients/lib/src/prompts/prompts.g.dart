// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prompts_base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenAiTextPrompt _$OpenAiTextPromptFromJson(Map<String, dynamic> json) =>
    OpenAiTextPrompt(
      model: json['model'] as String,
      input: json['input'] as String,
      instructions: json['instructions'] as String?,
    );

Map<String, dynamic> _$OpenAiTextPromptToJson(OpenAiTextPrompt instance) =>
    <String, dynamic>{
      'model': instance.model,
      'instructions': instance.instructions,
      'input': instance.input,
    };
