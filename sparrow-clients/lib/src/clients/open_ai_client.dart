part of 'clients_base.dart';

class OpenAiClient extends BaseAiClient {
  OpenAiClient({required this.apiKey, Dio? dio}) : super(
          dio: dio ??
              Dio(
                BaseOptions(
                  baseUrl: 'https://api.openai.com/',
                  headers: {
                    'Content-Type': 'application/json',
                    'Authorization': 'Bearer $apiKey',
                  },
                ),
              ),
        );

  final String apiKey;

  Future<String?> sendMessage({
    required String input,
    String? instructions,
  }) async {
    try {
      final result = await dio.post(
        'v1/responses',
        data: OpenAiTextPrompt(
          model: 'gpt-4.1-nano',
          input: input,
          instructions: instructions,
        ),
      );

      return jsonEncode(result.data);
    } on DioException catch (e) {
      print(
        jsonEncode({
          'uri': e.requestOptions.uri.toString(),
          'data': jsonEncode(e.requestOptions.data),
        }),
      );
      print(jsonEncode(e.response?.data));
    }

    return null;
  }
}
