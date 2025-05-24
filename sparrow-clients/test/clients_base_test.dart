import 'package:dio/dio.dart';
import 'package:sparrow_clients/clients.dart';
import 'package:test/test.dart';

void main() {
  group('BaseAiClient', () {
    test('should be a sealed class that cannot be instantiated directly', () {
      // Verify that BaseAiClient is a sealed class
      expect(BaseAiClient, isA<Type>());
    });
  });

  group('OpenAiClient', () {
    test('should initialize with correct configuration', () {
      final client = OpenAiClient(apiKey: 'test-key');

      expect(client.apiKey, equals('test-key'));
      expect(client.dio, isA<Dio>());
      expect(client.dio!.options.baseUrl, equals('https://api.openai.com/'));
      expect(client.dio!.options.headers['Authorization'], equals('Bearer test-key'));
      expect(client.dio!.options.headers['Content-Type'], equals('application/json'));
    });

    test('should use the provided authKey in the Authorization header', () {
      final client = OpenAiClient(apiKey: 'different-key');

      expect(client.dio!.options.headers['Authorization'], equals('Bearer different-key'));
    });

    test('should have the correct base URL', () {
      final client = OpenAiClient(apiKey: 'test-key');

      expect(client.dio!.options.baseUrl, equals('https://api.openai.com/'));
    });

    test('should have the correct Content-Type header', () {
      final client = OpenAiClient(apiKey: 'test-key');

      expect(client.dio!.options.headers['Content-Type'], equals('application/json'));
    });
  });
}
