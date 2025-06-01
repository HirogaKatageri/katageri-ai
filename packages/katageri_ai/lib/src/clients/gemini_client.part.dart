part of 'base_client.dart';

class GeminiClient extends BaseAiClient {
  GeminiClient({required this.apiKey, required super.client});

  static const String defaultGeminiModel = 'gemini-2.0-flash';

  final String apiKey;

  @override
  Future<ModelResponse> sendPrompt({
    required String input,
    String? model,
    String? instructions,
    Memory? memory,
    bool stream = false,
  }) async {
    final response = await GeminiPrompt(
      model: model ?? defaultGeminiModel,
      input: input,
      apiKey: apiKey,
      instructions: instructions,
      stream: stream,
      memory: memory,
    ).send(client);

    final body = response.body.startsWith('data: ')
        ? response.body.substring(6).trim()
        : response.body;

    final geminiResponse = GeminiResponse.fromJson(jsonDecode(body));
    return ModelResponse.fromGeminiResponse(geminiResponse);
  }
}
