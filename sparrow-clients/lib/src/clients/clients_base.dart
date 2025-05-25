import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:sparrow_clients/src/utils.dart';

import '../prompts/prompts_base.dart';

part 'gemini_client.dart';
part 'open_ai_client.dart';

sealed class BaseAiClient {
  BaseAiClient({Dio? dio}) {
    this.dio = dio ?? Dio();
  }

  late final Dio dio;

  Future<String?> textPrompt({
    required String input,
    String model,
    String? instructions,
  });
}
