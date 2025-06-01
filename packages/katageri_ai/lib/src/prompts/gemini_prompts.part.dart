part of 'base_prompt.dart';

class GeminiPrompt extends Prompt {
  GeminiPrompt({
    required this.apiKey,
    required super.model,
    required super.input,
    required super.stream,
    super.instructions,
    super.memory,
  });

  final String apiKey;

  List<Map<String, dynamic>> _buildContentFromMemory() {
    return memory?.conversation
            .map(
              (log) => {
                'role': log.role,
                'parts': [
                  {'text': log.message},
                ],
              },
            )
            .toList() ??
        [];
  }

  @override
  Future<Response> send(SparrowHttpClient client) {
    return client.post(
      path: '/$model:generateContent',
      body: {
        if (instructions != null)
          'system_instruction': {
            'parts': [
              {'text': instructions},
            ],
          },
        'contents': [
          ..._buildContentFromMemory(),
          {
            'role': 'user',
            'parts': [
              {'text': input},
            ],
          },
        ],
      },
      queryParams: {'key': apiKey, if (stream) 'alt': 'sse'},
    );
  }
}
