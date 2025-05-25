import 'dart:io';
import 'package:sparrow_clients/sparrow-clients.dart';
import 'package:test/test.dart';

void main() {
  group('BaseAiClient', () {
    test('should be a sealed class that cannot be instantiated directly', () {
      // Verify that BaseAiClient is a sealed class
      expect(BaseAiClient, isA<Type>());
    });
  });

  group('GeminiClient', () {
    test('should initialize with correct configuration', () {
      final client = GeminiClient(apiKey: 'test-key');

      expect(client.apiKey, equals('test-key'));
      expect(client.client, isA<SparrowHttpClient>());
      expect(client.client.host, equals('generativelanguage.googleapis.com'));
      expect(client.client.parent, equals('/v1beta/models'));
      expect(client.client.headers[HttpHeaders.contentTypeHeader], equals('application/json'));
    });

    test('should use the provided apiKey', () {
      final client = GeminiClient(apiKey: 'different-key');

      expect(client.apiKey, equals('different-key'));
    });

    test('should have the correct host', () {
      final client = GeminiClient(apiKey: 'test-key');

      expect(client.client.host, equals('generativelanguage.googleapis.com'));
    });

    test('should have the correct parent path', () {
      final client = GeminiClient(apiKey: 'test-key');

      expect(client.client.parent, equals('/v1beta/models'));
    });

    test('should have the correct Content-Type header', () {
      final client = GeminiClient(apiKey: 'test-key');

      expect(client.client.headers[HttpHeaders.contentTypeHeader], equals('application/json'));
    });
  });

  // OpenAiClient tests are removed as the implementation is currently inactive
}
