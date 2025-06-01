import 'package:katageri_ai/src/data/gemini_response.dart';
import 'package:katageri_ai/src/data/model_response.dart';
import 'package:test/test.dart';

void main() {
  group('ModelResponse Tests', () {
    test('Validating conversion of a GeminiResponse into a ModelResponse', () {
      // Arrange
      final geminiResponse = GeminiResponse(
        candidates: [
          CandidateData(
            content: ContentData(
              role: 'model',
              parts: [
                ContentPartData(text: 'This is a test response'),
              ],
            ),
            finishReason: 'STOP',
          ),
        ],
        usageMetadata: UsageMetaData(
          promptTokenCount: 10,
          candidatesTokenCount: 20,
          totalTokenCount: 30,
        ),
        modelVersion: 'gemini-2.0-flash',
        responseId: '12345',
      );

      // Act
      final modelResponse = ModelResponse.fromGeminiResponse(geminiResponse);

      // Assert
      expect(modelResponse.output, equals('This is a test response'));
      expect(modelResponse.model, equals('gemini-2.0-flash'));
      expect(modelResponse.inputTokenCount, equals(10));
      expect(modelResponse.outputTokenCount, equals(20));
      expect(modelResponse.totalTokenCount, equals(30));
      expect(modelResponse.conversationLogs?.length, equals(1));
      expect(modelResponse.conversationLogs?[0].role, equals('model'));
      expect(modelResponse.conversationLogs?[0].message, equals('This is a test response'));
    });

    test('Validating conversion of a GeminiResponse with multiple parts', () {
      // Arrange
      final geminiResponse = GeminiResponse(
        candidates: [
          CandidateData(
            content: ContentData(
              role: 'model',
              parts: [
                ContentPartData(text: null), // First part has null text
                ContentPartData(text: 'This is the actual response'),
              ],
            ),
            finishReason: 'STOP',
          ),
        ],
        modelVersion: 'gemini-2.0-flash',
      );

      // Act
      final modelResponse = ModelResponse.fromGeminiResponse(geminiResponse);

      // Assert
      expect(modelResponse.output, equals('This is the actual response'));
      expect(modelResponse.conversationLogs?[0].message, equals('This is the actual response'));
    });

    test('Validating conversion of a GeminiResponse with empty candidates', () {
      // Arrange
      final geminiResponse = GeminiResponse(
        candidates: [],
        modelVersion: 'gemini-2.0-flash',
      );

      // Act
      final modelResponse = ModelResponse.fromGeminiResponse(geminiResponse);

      // Assert
      expect(modelResponse.output, isNull);
      expect(modelResponse.conversationLogs, isEmpty);
      expect(modelResponse.model, equals('gemini-2.0-flash'));
    });

    test('Validating conversion of a GeminiResponse with null candidates', () {
      // Arrange
      final geminiResponse = GeminiResponse(
        candidates: null,
        modelVersion: 'gemini-2.0-flash',
      );

      // Act
      final modelResponse = ModelResponse.fromGeminiResponse(geminiResponse);

      // Assert
      expect(modelResponse.output, isNull);
      expect(modelResponse.conversationLogs, isNull);
      expect(modelResponse.model, equals('gemini-2.0-flash'));
    });
  });
}