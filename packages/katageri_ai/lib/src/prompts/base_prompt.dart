import 'package:http/http.dart';

import '../memory/memory.dart';
import '../utils/http_client.dart';

part 'gemini_prompts.part.dart';
part 'open_ai_prompts.part.dart';

sealed class Prompt {
  Prompt({
    required this.model,
    required this.input,
    required this.stream,
    this.instructions,
    this.memory,
  });

  final String model;
  final String input;
  final bool stream;
  final Memory? memory;
  final String? instructions;

  Future<Response> send(SparrowHttpClient client);
}
