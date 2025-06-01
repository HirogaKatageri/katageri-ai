part of 'base_client.dart';

class GeminiClient extends BaseAiClient {
  static const String host = 'generativelanguage.googleapis.com';
  static const String parent = '/v1beta/models';

  static const String defaultGeminiModel = 'gemini-2.0-flash';
  static const String imageGenerationModel = 'gemini-2.0-flash-preview-image-generation';

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

  /// Generates an image based on the given text prompt using Gemini's image generation model.
  /// Returns a base64-encoded string of the generated image.
  Future<String> textToImage({
    required String prompt,
    String model = imageGenerationModel,
    String? instructions,
  }) async {
    final response = await GeminiPrompt(
      model: model,
      input: prompt,
      apiKey: apiKey,
      instructions: instructions,
      stream: false,
      generateImage: true,
    ).invoke(client);

    final responseData = jsonDecode(response.body);
    
    // Extract base64 image data from the response
    String? base64Data;
    final candidates = responseData['candidates'] as List<dynamic>?;
    if (candidates != null) {
      for (final candidate in candidates) {
        final content = candidate['content'] as Map<String, dynamic>?;
        if (content != null) {
          final parts = content['parts'] as List<dynamic>?;
          if (parts != null) {
            for (final part in parts) {
              if (part['inlineData'] != null &&
                  part['inlineData']['mimeType']?.toString().startsWith('image/') == true) {
                base64Data = part['inlineData']['data'];
                break;
              }
            }
          }
        }
        if (base64Data != null) break;
      }
    }

    if (base64Data == null) {
      throw Exception('No image data found in the response');
    }

    return base64Data;
  }
}
