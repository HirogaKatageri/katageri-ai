import 'dart:io';

import 'package:sparrow_clients/sparrow-clients.dart';

void main() async {
  final client = GeminiClient(apiKey: Platform.environment['GEMINI_API_KEY']!);

  final GeminiResponse response = await client.textPrompt(
    input: 'Tell me about the Philippines',
  );

  print(response.candidates?.firstOrNull?.content?.parts?.firstOrNull?.text);
}
