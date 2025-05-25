part of 'base_prompt.dart';

class GeminiPrompt extends Prompt {
  GeminiPrompt({
    required super.model,
    required super.input,
    required super.stream,
    required this.apiKey,
    super.instructions,
  });

  final String apiKey;

  @override
  Future<Response> invoke(SparrowHttpClient client) => client.post(
    path: '/$model:generateContent',
    body: {
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
    queryParams: {'key': apiKey, if (stream) 'alt': 'sse'},
  );
}
