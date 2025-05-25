import 'package:http/http.dart';

import '../utils/http_client.dart';

part 'gemini_prompts.dart';
part 'open_ai_prompts.dart';

sealed class Prompt {
  Prompt({
    required this.model,
    required this.input,
    required this.stream,
    this.instructions,
  });

  final String model;
  final String input;
  final bool stream;
  final String? instructions;

  Future<Response> invoke(SparrowHttpClient client);
}
