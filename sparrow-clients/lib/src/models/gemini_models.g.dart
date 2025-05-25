// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gemini_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GeminiResponse _$GeminiResponseFromJson(Map<String, dynamic> json) =>
    _GeminiResponse(
      candidates: (json['candidates'] as List<dynamic>?)
          ?.map((e) => Candidate.fromJson(e as Map<String, dynamic>))
          .toList(),
      usageMetadata: json['usageMetadata'] == null
          ? null
          : UsageMetadata.fromJson(
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

_Candidate _$CandidateFromJson(Map<String, dynamic> json) => _Candidate(
  content: json['content'] == null
      ? null
      : Content.fromJson(json['content'] as Map<String, dynamic>),
  finishReason: json['finishReason'] as String?,
  avgLogprobs: (json['avgLogprobs'] as num?)?.toDouble(),
);

Map<String, dynamic> _$CandidateToJson(_Candidate instance) =>
    <String, dynamic>{
      'content': instance.content,
      'finishReason': instance.finishReason,
      'avgLogprobs': instance.avgLogprobs,
    };

_Content _$ContentFromJson(Map<String, dynamic> json) => _Content(
  parts: (json['parts'] as List<dynamic>?)
      ?.map((e) => Part.fromJson(e as Map<String, dynamic>))
      .toList(),
  role: json['role'] as String?,
);

Map<String, dynamic> _$ContentToJson(_Content instance) => <String, dynamic>{
  'parts': instance.parts,
  'role': instance.role,
};

_Part _$PartFromJson(Map<String, dynamic> json) =>
    _Part(text: json['text'] as String?);

Map<String, dynamic> _$PartToJson(_Part instance) => <String, dynamic>{
  'text': instance.text,
};

_UsageMetadata _$UsageMetadataFromJson(Map<String, dynamic> json) =>
    _UsageMetadata(
      promptTokenCount: (json['promptTokenCount'] as num?)?.toInt(),
      candidatesTokenCount: (json['candidatesTokenCount'] as num?)?.toInt(),
      totalTokenCount: (json['totalTokenCount'] as num?)?.toInt(),
      promptTokensDetails: (json['promptTokensDetails'] as List<dynamic>?)
          ?.map((e) => TokensDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      candidatesTokensDetails:
          (json['candidatesTokensDetails'] as List<dynamic>?)
              ?.map((e) => TokensDetails.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$UsageMetadataToJson(_UsageMetadata instance) =>
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
