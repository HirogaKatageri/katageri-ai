import 'dart:convert';

import 'package:dio/dio.dart';

part 'gemini_prompts.dart';
part 'open_ai_prompts.dart';

sealed class Prompt {
  Prompt({required this.model, required this.input, this.instructions});

  final String model;
  final String input;
  final String? instructions;

  Future<Response<T>> invoke<T>(Dio dio);
}
