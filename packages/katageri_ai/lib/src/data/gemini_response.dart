import 'package:freezed_annotation/freezed_annotation.dart';

part 'gemini_response.freezed.dart';
part 'gemini_response.g.dart';

@freezed
abstract class GeminiResponse with _$GeminiResponse {
  const factory GeminiResponse({
    List<CandidateData>? candidates,
    UsageMetaData? usageMetadata,
    String? modelVersion,
    String? responseId,
  }) = _GeminiResponse;

  factory GeminiResponse.fromJson(Map<String, dynamic> json) =>
      _$GeminiResponseFromJson(json);
}

extension GeminiResponseExt on GeminiResponse {
  String? get text => candidates
      ?.firstWhere(
        (element) => element.content?.role == 'model',
        orElse: () => CandidateData(),
      )
      .content
      ?.parts
      ?.firstWhere(
        (element) => element.text != null,
        orElse: () => ContentPartData(text: ''),
      )
      .text;
}

@freezed
abstract class CandidateData with _$CandidateData {
  const factory CandidateData({
    ContentData? content,
    String? finishReason,
    double? avgLogprobs,
  }) = _CandidateData;

  factory CandidateData.fromJson(Map<String, dynamic> json) =>
      _$CandidateDataFromJson(json);
}

@freezed
abstract class ContentData with _$ContentData {
  const factory ContentData({List<ContentPartData>? parts, String? role}) =
      _ContentData;

  factory ContentData.fromJson(Map<String, dynamic> json) =>
      _$ContentDataFromJson(json);
}

@freezed
abstract class ContentPartData with _$ContentPartData {
  const factory ContentPartData({String? text}) = _ContentPartData;

  factory ContentPartData.fromJson(Map<String, dynamic> json) =>
      _$ContentPartDataFromJson(json);
}

@freezed
abstract class UsageMetaData with _$UsageMetaData {
  const factory UsageMetaData({
    int? promptTokenCount,
    int? candidatesTokenCount,
    int? totalTokenCount,
    List<TokensDetailsData>? promptTokensDetails,
    List<TokensDetailsData>? candidatesTokensDetails,
  }) = _UsageMetaData;

  factory UsageMetaData.fromJson(Map<String, dynamic> json) =>
      _$UsageMetaDataFromJson(json);
}

@freezed
abstract class TokensDetailsData with _$TokensDetailsData {
  const factory TokensDetailsData({String? modality, int? tokenCount}) =
      _TokensDetails;

  factory TokensDetailsData.fromJson(Map<String, dynamic> json) =>
      _$TokensDetailsFromJson(json);
}
