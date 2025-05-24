import 'dart:io';

import 'package:sparrow_clients/clients.dart';

void main() async {
  final OpenAiClient client = OpenAiClient(
    apiKey: Platform.environment['OPENAI_API_KEY']!,
  );

  await client.sendMessage(input: 'Hi');
}
