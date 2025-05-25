part of 'base_client.dart';

class GeminiClient extends BaseAiClient {
  static const String host = 'generativelanguage.googleapis.com';
  static const String parent = '/v1beta/models';

  static const String defaultGeminiModel = 'gemini-2.0-flash';

  GeminiClient({required this.apiKey, SparrowHttpClient? client}) {
    super.client =
        client ??
        SparrowHttpClient(
          host: host,
          parent: parent,
          headers: {HttpHeaders.contentTypeHeader: 'application/json'},
        );
  }

  final String apiKey;

  @override
  Future<GeminiResponse> textPrompt({
    required String input,
    String model = defaultGeminiModel,
    String? instructions,
  }) async {
    final response = await GeminiPrompt(
      model: model,
      input: input,
      apiKey: apiKey,
      instructions: instructions,
      stream: true,
    ).invoke(client);

    final body = response.body.startsWith('data: ')
        ? response.body.substring(6).trim()
        : response.body;

    return GeminiResponse.fromJson(jsonDecode(body));
  }
}
