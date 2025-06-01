import 'package:freezed_annotation/freezed_annotation.dart';

import '../memory/memory.dart';
import 'gemini_response.dart';

part 'model_response.freezed.dart';
part 'model_response.g.dart';

@freezed
abstract class ModelResponse with _$ModelResponse {
  const factory ModelResponse({
    String? output,
    List<ConversationLog>? conversationLogs,
    String? model,
    int? inputTokenCount,
    int? outputTokenCount,
    int? totalTokenCount,
  }) = _ModelResponse;

  factory ModelResponse.fromJson(Map<String, dynamic> json) =>
      _$ModelResponseFromJson(json);

  factory ModelResponse.fromGeminiResponse(GeminiResponse response) {
    return ModelResponse(
      output: response.text,
      model: response.modelVersion,
      conversationLogs: response.candidates
          ?.map(
            (candidate) => ConversationLog(
              role: candidate.content?.role,
              message: candidate.content?.parts
                  ?.firstWhere(
                    (partData) => partData.text != null,
                    orElse: () => ContentPartData(text: ''),
                  )
                  .text,
              model: response.modelVersion,
            ),
          )
          .toList(growable: false),
      inputTokenCount: response.usageMetadata?.promptTokenCount,
      outputTokenCount: response.usageMetadata?.candidatesTokenCount,
      totalTokenCount: response.usageMetadata?.totalTokenCount,
    );
  }
}
