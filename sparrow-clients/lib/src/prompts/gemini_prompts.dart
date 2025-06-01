part of 'base_prompt.dart';

class GeminiPrompt extends Prompt {
  GeminiPrompt({
    required super.model,
    required super.input,
    required super.stream,
    required this.apiKey,
    super.instructions,
    this.generateImage = false,
  });

  final String apiKey;
  final bool generateImage;

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
      if (generateImage)
        'generationConfig': {
          'responseModalities': ['TEXT', 'IMAGE'],
        },
    },
    queryParams: {'key': apiKey, if (stream && !generateImage) 'alt': 'sse'},
  );
}
