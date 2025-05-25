import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sparrow_clients/sparrow-clients.dart';
import 'package:test/test.dart';

// Manual mock for SparrowHttpClient
class MockSparrowHttpClient implements SparrowHttpClient {
  @override
  final String host;

  @override
  final String? parent;

  @override
  final Map<String, String> headers;

  @override
  final http.Client client = http.Client();

  @override
  bool isDisposed = false;

  MockSparrowHttpClient({
    this.host = 'test-host',
    this.parent = '/test-parent',
    this.headers = const {},
  });

  Function(String path, Object? body, Map<String, String>? queryParams)? onPost;
  http.Response? postResponse;
  Exception? postException;

  @override
  Future<http.Response> post({
    required String path,
    Object? body,
    Map<String, String>? headers,
    Map<String, String>? queryParams,
  }) async {
    if (onPost != null) {
      onPost!(path, body, queryParams);
    }

    if (postException != null) {
      throw postException!;
    }

    return postResponse ?? http.Response('', 200);
  }

  @override
  void dispose() {
    client.close();
    isDisposed = true;
  }
}

void main() {
  group('GeminiClient', () {
    test('should initialize with correct configuration', () {
      final client = GeminiClient(apiKey: 'test-key');

      expect(client.apiKey, equals('test-key'));
      expect(client.client, isA<SparrowHttpClient>());
      expect(client.client.host, equals('generativelanguage.googleapis.com'));
      expect(client.client.parent, equals('/v1beta/models'));
    });

    test('textPrompt should handle exceptions', () async {
      // Arrange
      final mockClient = MockSparrowHttpClient();
      mockClient.postException = Exception('Network error');
      final client = GeminiClient(apiKey: 'test-key', client: mockClient);

      // Act & Assert
      expect(() => client.textPrompt(input: 'Test input'), throwsException);
    });

    test('textPrompt should return GeminiResponse on success', () async {
      // Arrange
      final mockClient = MockSparrowHttpClient();
      final client = GeminiClient(apiKey: 'test-key', client: mockClient);

      final responseData = {
        'candidates': [
          {
            'content': {
              'parts': [
                {
                  'text': 'Hello there!'
                }
              ],
              'role': 'model'
            },
            'finishReason': 'STOP',
            'avgLogprobs': -0.5
          }
        ],
        'modelVersion': 'gemini-2.0-flash',
        'responseId': 'test-id',
        'usageMetadata': {
          'promptTokenCount': 5,
          'candidatesTokenCount': 10,
          'totalTokenCount': 15,
          'promptTokensDetails': [
            {
              'modality': 'TEXT',
              'tokenCount': 5
            }
          ],
          'candidatesTokensDetails': [
            {
              'modality': 'TEXT',
              'tokenCount': 10
            }
          ]
        }
      };

      mockClient.postResponse = http.Response(
        jsonEncode(responseData),
        200,
      );

      // Act
      final result = await client.textPrompt(input: 'Hello');

      // Assert
      expect(result, isA<GeminiResponse>());
      expect(result.candidates, isNotNull);
      expect(result.candidates!.length, equals(1));
      expect(result.candidates![0].content, isNotNull);
      expect(result.candidates![0].content!.parts, isNotNull);
      expect(result.candidates![0].content!.parts!.length, equals(1));
      expect(result.candidates![0].content!.parts![0].text, equals('Hello there!'));
      expect(result.modelVersion, equals('gemini-2.0-flash'));
      expect(result.responseId, equals('test-id'));
    });

    test('textPrompt should handle streaming response', () async {
      // Arrange
      final mockClient = MockSparrowHttpClient();
      final client = GeminiClient(apiKey: 'test-key', client: mockClient);

      final responseData = {
        'candidates': [
          {
            'content': {
              'parts': [
                {
                  'text': 'Hello there!'
                }
              ],
              'role': 'model'
            },
            'finishReason': 'STOP',
            'avgLogprobs': -0.5
          }
        ],
        'modelVersion': 'gemini-2.0-flash',
        'responseId': 'test-id',
        'usageMetadata': {
          'promptTokenCount': 5,
          'candidatesTokenCount': 10,
          'totalTokenCount': 15,
          'promptTokensDetails': [
            {
              'modality': 'TEXT',
              'tokenCount': 5
            }
          ],
          'candidatesTokensDetails': [
            {
              'modality': 'TEXT',
              'tokenCount': 10
            }
          ]
        }
      };

      mockClient.postResponse = http.Response(
        'data: ${jsonEncode(responseData)}',
        200,
      );

      // Act
      final result = await client.textPrompt(input: 'Hello');

      // Assert
      expect(result, isA<GeminiResponse>());
      expect(result.candidates, isNotNull);
      expect(result.candidates!.length, equals(1));
      expect(result.candidates![0].content, isNotNull);
      expect(result.candidates![0].content!.parts, isNotNull);
      expect(result.candidates![0].content!.parts!.length, equals(1));
      expect(result.candidates![0].content!.parts![0].text, equals('Hello there!'));
      expect(result.modelVersion, equals('gemini-2.0-flash'));
      expect(result.responseId, equals('test-id'));
    });
  });

  // OpenAiClient tests are removed as the implementation is currently inactive
}
