import 'package:freezed_annotation/freezed_annotation.dart';

part 'gemini_models.g.dart';
part 'gemini_models.freezed.dart';

@freezed
abstract class GeminiResponse with _$GeminiResponse {
  const factory GeminiResponse({
     List<Candidate>? candidates,
     UsageMetadata? usageMetadata,
     String? modelVersion,
     String? responseId,
  }) = _GeminiResponse;

  factory GeminiResponse.fromJson(Map<String, dynamic> json) =>
      _$GeminiResponseFromJson(json);
}

@freezed
abstract class Candidate with _$Candidate {
  const factory Candidate({
    Content? content,
    String? finishReason,
    double? avgLogprobs,
  }) = _Candidate;

  factory Candidate.fromJson(Map<String, dynamic> json) =>
      _$CandidateFromJson(json);
}

@freezed
abstract class Content with _$Content {
  const factory Content({
    List<Part>? parts,
    String? role,
  }) = _Content;

  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);
}

@freezed
abstract class Part with _$Part {
  const factory Part({
    String? text,
  }) = _Part;

  factory Part.fromJson(Map<String, dynamic> json) =>
      _$PartFromJson(json);
}

@freezed
abstract class UsageMetadata with _$UsageMetadata {
  const factory UsageMetadata({
    int? promptTokenCount,
    int? candidatesTokenCount,
    int? totalTokenCount,
    List<TokensDetails>? promptTokensDetails,
    List<TokensDetails>? candidatesTokensDetails,
  }) = _UsageMetadata;

  factory UsageMetadata.fromJson(Map<String, dynamic> json) =>
      _$UsageMetadataFromJson(json);
}

@freezed
abstract class TokensDetails with _$TokensDetails {
  const factory TokensDetails({
    String? modality,
    int? tokenCount,
  }) = _TokensDetails;

  factory TokensDetails.fromJson(Map<String, dynamic> json) =>
      _$TokensDetailsFromJson(json);
}
