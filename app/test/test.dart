import 'package:app/lib.dart';
import 'package:katageri_ai/katageri_ai.dart';
import 'package:test/test.dart';

void main() {
  group('InputProcessor', () {
    late GeminiClient mockGeminiClient;
    
    setUp(() {
      // Create a mock GeminiClient for testing
      mockGeminiClient = GeminiClient(
        apiKey: 'test-api-key',
        client: SparrowHttpClient.gemini(),
      );
    });

    test('processes input with the first successful strategy', () async {
      final processor = InputProcessor([TextInput(geminiClient: mockGeminiClient), ExitCommand()]);

      final result = await processor.processInput('Hello, world!');
      expect(result, isA<MessageOutput>());
    });

    test('processes command input correctly', () async {
      final processor = InputProcessor([TextInput(geminiClient: mockGeminiClient)]);

      final result = await processor.processInput('/help');
      expect(result, isA<MessageOutput>());
    });

    test('processes exit command correctly', () async {
      final processor = InputProcessor([ExitCommand(), TextInput(geminiClient: mockGeminiClient)]);

      final result = await processor.processInput('/exit');
      expect(result, isA<ExitOutput>());
    });

    test('throws exception when all strategies fail', () async {
      final processor = InputProcessor([ExitCommand()]);

      expect(
        () => processor.processInput('Hello, world!'),
        throwsA(isA<FormatException>()),
      );
    });

    test('throws StateError when strategies list is empty', () async {
      final processor = InputProcessor([]);

      expect(
        () => processor.processInput('Hello, world!'),
        throwsA(isA<StateError>()),
      );
    });
  });
}
