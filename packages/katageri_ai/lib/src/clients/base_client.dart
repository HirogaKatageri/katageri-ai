import 'dart:convert';

import 'package:katageri_ai/src/utils/http_client.dart';

import '../data/models.dart';
import '../memory/memory.dart';
import '../prompts/prompts.dart';

part 'gemini_client.part.dart';
part 'open_ai_client.part.dart';

sealed class BaseAiClient {
  BaseAiClient({required this.client});

  final SparrowHttpClient client;

  Future<ModelResponse> sendPrompt({
    required String input,
    String? model,
    String? instructions,
    Memory? memory,
  });
}
