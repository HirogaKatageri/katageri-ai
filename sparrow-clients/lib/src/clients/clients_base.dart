import 'dart:convert';

import 'package:dio/dio.dart';

import '../prompts/prompts_base.dart';

part 'open_ai_client.dart';

sealed class BaseAiClient {
  BaseAiClient({Dio? dio}) {
    this.dio = dio ?? Dio();
  }

  late final Dio dio;
}
