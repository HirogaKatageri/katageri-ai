import 'dart:convert';

import 'package:sparrow_clients/clients.dart';
import 'package:test/test.dart';
import 'package:dio/dio.dart';

void main() {
  group('OpenAiClient', () {
    test('should initialize with correct configuration', () {
      final client = OpenAiClient(apiKey: 'test-key');

      expect(client.apiKey, equals('test-key'));
      expect(client.dio, isA<Dio>());
      expect(client.dio!.options.baseUrl, equals('https://api.openai.com/'));
      expect(client.dio!.options.headers['Authorization'], equals('Bearer test-key'));
      expect(client.dio!.options.headers['Content-Type'], equals('application/json'));
    });

    test('textPrompt should handle DioException', () async {
      // Arrange
      final mockDio = Dio();
      final client = OpenAiClient(apiKey: 'test-key', dio: mockDio);

      mockDio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) {
            // Simulate a network error
            handler.reject(
              DioException(
                requestOptions: options,
                error: 'Network error',
                type: DioExceptionType.connectionError,
              ),
            );
          },
        ),
      );

      // Act
      final result = await client.textPrompt(input: 'Test input');

      // Assert
      expect(result, isNull);
    });

    test('textPrompt should return response data on success', () async {
      // Arrange
      final mockDio = Dio();
      final client = OpenAiClient(apiKey: 'test-key', dio: mockDio);

      final responseData = {
        'id': 'resp-123',
        'choices': [
          {
            'message': {
              'content': 'Hello there!',
            }
          }
        ]
      };

      mockDio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) {
            // Return a successful response
            handler.resolve(
              Response(
                requestOptions: options,
                data: responseData,
                statusCode: 200,
              ),
            );
          },
        ),
      );

      // Act
      final result = await client.textPrompt(input: 'Hello');

      // Assert
      expect(result, isNotNull);
      final resultJson = json.decode(result!);
      expect(resultJson, equals(responseData));
    });
  });

  group('GeminiClient', () {
    test('should initialize with correct configuration', () {
      final client = GeminiClient(apiKey: 'test-key');

      expect(client.apiKey, equals('test-key'));
      expect(client.dio, isA<Dio>());
      expect(client.dio!.options.baseUrl, equals('https://generativelanguage.googleapis.com/v1beta/models/'));
      expect(client.dio!.options.headers['Content-Type'], equals('application/json'));
    });

    test('textPrompt should handle DioException', () async {
      // Arrange
      final mockDio = Dio();
      final client = GeminiClient(apiKey: 'test-key', dio: mockDio);

      mockDio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) {
            // Simulate a network error
            handler.reject(
              DioException(
                requestOptions: options,
                error: 'Network error',
                type: DioExceptionType.connectionError,
              ),
            );
          },
        ),
      );

      // Act
      final result = await client.textPrompt(input: 'Test input');

      // Assert
      expect(result, isNull);
    });

    test('textPrompt should return response data on success', () async {
      // Arrange
      final mockDio = Dio();
      final client = GeminiClient(apiKey: 'test-key', dio: mockDio);

      final responseData = {
        'candidates': [
          {
            'content': {
              'parts': [
                {
                  'text': 'Hello there!'
                }
              ]
            }
          }
        ]
      };

      mockDio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) {
            // Return a successful response
            handler.resolve(
              Response(
                requestOptions: options,
                data: responseData,
                statusCode: 200,
              ),
            );
          },
        ),
      );

      // Act
      final result = await client.textPrompt(input: 'Hello');

      // Assert
      expect(result, isNotNull);
      final resultJson = json.decode(result!);
      expect(resultJson, equals(responseData));
    });
  });
}
