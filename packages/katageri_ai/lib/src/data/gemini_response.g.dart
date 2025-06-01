// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gemini_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GeminiResponse _$GeminiResponseFromJson(Map<String, dynamic> json) =>
    _GeminiResponse(
      candidates: (json['candidates'] as List<dynamic>?)
          ?.map((e) => CandidateData.fromJson(e as Map<String, dynamic>))
          .toList(),
      usageMetadata: json['usageMetadata'] == null
          ? null
          : UsageMetaData.fromJson(
              json['usageMetadata'] as Map<String, dynamic>,
            ),
      modelVersion: json['modelVersion'] as String?,
      responseId: json['responseId'] as String?,
    );

Map<String, dynamic> _$GeminiResponseToJson(_GeminiResponse instance) =>
    <String, dynamic>{
      'candidates': instance.candidates,
      'usageMetadata': instance.usageMetadata,
      'modelVersion': instance.modelVersion,
      'responseId': instance.responseId,
    };

_CandidateData _$CandidateDataFromJson(Map<String, dynamic> json) =>
    _CandidateData(
      content: json['content'] == null
          ? null
          : ContentData.fromJson(json['content'] as Map<String, dynamic>),
      finishReason: json['finishReason'] as String?,
      avgLogprobs: (json['avgLogprobs'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CandidateDataToJson(_CandidateData instance) =>
    <String, dynamic>{
      'content': instance.content,
      'finishReason': instance.finishReason,
      'avgLogprobs': instance.avgLogprobs,
    };

_ContentData _$ContentDataFromJson(Map<String, dynamic> json) => _ContentData(
  parts: (json['parts'] as List<dynamic>?)
      ?.map((e) => ContentPartData.fromJson(e as Map<String, dynamic>))
      .toList(),
  role: json['role'] as String?,
);

Map<String, dynamic> _$ContentDataToJson(_ContentData instance) =>
    <String, dynamic>{'parts': instance.parts, 'role': instance.role};

_ContentPartData _$ContentPartDataFromJson(Map<String, dynamic> json) =>
    _ContentPartData(text: json['text'] as String?);

Map<String, dynamic> _$ContentPartDataToJson(_ContentPartData instance) =>
    <String, dynamic>{'text': instance.text};

_UsageMetaData _$UsageMetaDataFromJson(
  Map<String, dynamic> json,
) => _UsageMetaData(
  promptTokenCount: (json['promptTokenCount'] as num?)?.toInt(),
  candidatesTokenCount: (json['candidatesTokenCount'] as num?)?.toInt(),
  totalTokenCount: (json['totalTokenCount'] as num?)?.toInt(),
  promptTokensDetails: (json['promptTokensDetails'] as List<dynamic>?)
      ?.map((e) => TokensDetailsData.fromJson(e as Map<String, dynamic>))
      .toList(),
  candidatesTokensDetails: (json['candidatesTokensDetails'] as List<dynamic>?)
      ?.map((e) => TokensDetailsData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$UsageMetaDataToJson(_UsageMetaData instance) =>
    <String, dynamic>{
      'promptTokenCount': instance.promptTokenCount,
      'candidatesTokenCount': instance.candidatesTokenCount,
      'totalTokenCount': instance.totalTokenCount,
      'promptTokensDetails': instance.promptTokensDetails,
      'candidatesTokensDetails': instance.candidatesTokensDetails,
    };

_TokensDetails _$TokensDetailsFromJson(Map<String, dynamic> json) =>
    _TokensDetails(
      modality: json['modality'] as String?,
      tokenCount: (json['tokenCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TokensDetailsToJson(_TokensDetails instance) =>
    <String, dynamic>{
      'modality': instance.modality,
      'tokenCount': instance.tokenCount,
    };
