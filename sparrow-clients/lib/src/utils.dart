import 'dart:convert';

import 'package:dio/dio.dart';

void logDioException(DioException e) {
  final request = jsonEncode({
    'uri': e.requestOptions.uri.toString(),
    'data': e.requestOptions.data,
  });

  print('Request: $request');

  final response = jsonEncode({
    'uri': e.response?.realUri.toString(),
    'data': e.response?.data,
  });

  print('Response: $response');
}
