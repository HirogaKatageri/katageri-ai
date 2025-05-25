part of 'clients_base.dart';

class GeminiClient extends BaseAiClient {
  static const String geminiAiBaseUrl =
      'https://generativelanguage.googleapis.com/v1beta/models/';

  static const String defaultGeminiModel = 'gemini-2.0-flash';

  GeminiClient({required this.apiKey, Dio? dio})
    : super(
        dio:
            dio ??
            Dio(
              BaseOptions(
                baseUrl: geminiAiBaseUrl,
                headers: {Headers.contentTypeHeader: Headers.jsonContentType},
              ),
            ),
      );

  final String apiKey;

  @override
  Future<String?> textPrompt({
    required String input,
    String model = defaultGeminiModel,
    String? instructions,
  }) async {
    try {
      final result = await GeminiPrompt(
        model: model,
        input: input,
        apiKey: apiKey,
        instructions: instructions,
      ).invoke(dio);

      return jsonEncode(result.data);
    } on DioException catch (e) {
      logDioException(e);
    }

    return null;
  }
}
