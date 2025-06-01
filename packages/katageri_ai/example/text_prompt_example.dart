import 'dart:io';

import 'package:katageri_ai/katageri_ai.dart';

void main() async {
  final httpClient = SparrowHttpClient.gemini();
  final geminiClient = GeminiClient(
    apiKey: Platform.environment['GEMINI_API_KEY']!,
    client: httpClient,
  );

  final ModelResponse response = await geminiClient.sendPrompt(
    input: 'Tell me about the Philippines',
  );

  print(response.output);
}
