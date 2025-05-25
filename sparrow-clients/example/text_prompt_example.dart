import 'dart:io';

import 'package:sparrow_clients/clients.dart';

void main() async {
  final client = GeminiClient(
    apiKey: Platform.environment['GEMINI_API_KEY']!,
  );

  final result = await client.textPrompt(input: 'Hi!');

  print(result);
}
