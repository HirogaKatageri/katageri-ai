import 'dart:convert';
import 'dart:io';

import 'package:sparrow_clients/src/utils/http_client.dart';

import '../prompts/prompts.dart';
import '../models/models.dart';

part 'gemini_client.dart';
part 'open_ai_client.dart';

sealed class BaseAiClient {
  BaseAiClient();

  late final SparrowHttpClient client;

  Future<Object> textPrompt({
    required String input,
    String model,
    String? instructions,
  });
}
