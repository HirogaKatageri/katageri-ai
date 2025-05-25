part of 'prompts_base.dart';

class GeminiPrompt extends Prompt {
  GeminiPrompt({
    required super.model,
    required super.input,
    required this.apiKey,
    super.instructions,
  });

  final String apiKey;

  @override
  Future<Response<T>> invoke<T>(Dio dio) => dio.post(
    '$model:generateContent',
    queryParameters: {'key': apiKey},
    data: {
      if (instructions != null)
        'system_instruction': {
          'parts': [
            {'text': instructions},
          ],
        },
      'contents': [
        {
          'parts': [
            {'text': input},
          ],
        },
      ],
    },
  );
}
