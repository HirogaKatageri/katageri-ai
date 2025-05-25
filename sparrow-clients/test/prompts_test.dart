import 'dart:convert';

import 'package:sparrow_clients/clients.dart';
import 'package:test/test.dart';

void main() {
  group('OpenAiPrompt', () {
    test('should serialize to JSON correctly', () {
      final prompt = OpenAiPrompt(
        model: 'gpt-4.1-nano',
        input: 'Hello, world!',
        instructions: 'Be friendly',
      );

      final expectedJson = {
        'model': 'gpt-4.1-nano',
        'input': 'Hello, world!',
        'instructions': 'Be friendly',
      };

      final jsonData = jsonEncode({
        'model': prompt.model,
        'input': prompt.input,
        'instructions': prompt.instructions,
      });

      expect(jsonDecode(jsonData), equals(expectedJson));
    });

    test('should serialize to JSON correctly without instructions', () {
      final prompt = OpenAiPrompt(
        model: 'gpt-4.1-nano',
        input: 'Hello, world!',
      );

      final expectedJson = {
        'model': 'gpt-4.1-nano',
        'input': 'Hello, world!',
        'instructions': null,
      };

      final jsonData = jsonEncode({
        'model': prompt.model,
        'input': prompt.input,
        'instructions': prompt.instructions,
      });

      expect(jsonDecode(jsonData), equals(expectedJson));
    });

    test('should have correct model value', () {
      final prompt = OpenAiPrompt(
        model: 'gpt-4.1-nano',
        input: 'Hello, world!',
      );

      expect(prompt.model, equals('gpt-4.1-nano'));
    });

    test('should have correct input value', () {
      final prompt = OpenAiPrompt(
        model: 'gpt-4.1-nano',
        input: 'Hello, world!',
      );

      expect(prompt.input, equals('Hello, world!'));
    });

    test('should have correct instructions value when provided', () {
      final prompt = OpenAiPrompt(
        model: 'gpt-4.1-nano',
        input: 'Hello, world!',
        instructions: 'Be friendly',
      );

      expect(prompt.instructions, equals('Be friendly'));
    });

    test('should have null instructions value when not provided', () {
      final prompt = OpenAiPrompt(
        model: 'gpt-4.1-nano',
        input: 'Hello, world!',
      );

      expect(prompt.instructions, isNull);
    });
  });

  group('GeminiPrompt', () {
    test('should serialize to JSON correctly with instructions', () {
      final prompt = GeminiPrompt(
        model: 'gemini-2.0-flash',
        input: 'Hello, world!',
        apiKey: 'test-key',
        instructions: 'Be friendly',
      );

      final expectedJson = {
        'system_instruction': {
          'parts': [
            {'text': 'Be friendly'},
          ],
        },
        'contents': {
          'parts': [
            {'text': 'Hello, world!'},
          ],
        },
      };

      final jsonData = jsonEncode({
        if (prompt.instructions != null)
          'system_instruction': {
            'parts': [
              {'text': prompt.instructions},
            ],
          },
        'contents': {
          'parts': [
            {'text': prompt.input},
          ],
        },
      });

      expect(jsonDecode(jsonData), equals(expectedJson));
    });

    test('should serialize to JSON correctly without instructions', () {
      final prompt = GeminiPrompt(
        model: 'gemini-2.0-flash',
        input: 'Hello, world!',
        apiKey: 'test-key',
      );

      final expectedJson = {
        'contents': {
          'parts': [
            {'text': 'Hello, world!'},
          ],
        },
      };

      final jsonData = jsonEncode({
        if (prompt.instructions != null)
          'system_instruction': {
            'parts': [
              {'text': prompt.instructions},
            ],
          },
        'contents': {
          'parts': [
            {'text': prompt.input},
          ],
        },
      });

      expect(jsonDecode(jsonData), equals(expectedJson));
    });

    test('should have correct model value', () {
      final prompt = GeminiPrompt(
        model: 'gemini-2.0-flash',
        input: 'Hello, world!',
        apiKey: 'test-key',
      );

      expect(prompt.model, equals('gemini-2.0-flash'));
    });

    test('should have correct input value', () {
      final prompt = GeminiPrompt(
        model: 'gemini-2.0-flash',
        input: 'Hello, world!',
        apiKey: 'test-key',
      );

      expect(prompt.input, equals('Hello, world!'));
    });

    test('should have correct apiKey value', () {
      final prompt = GeminiPrompt(
        model: 'gemini-2.0-flash',
        input: 'Hello, world!',
        apiKey: 'test-key',
      );

      expect(prompt.apiKey, equals('test-key'));
    });

    test('should have correct instructions value when provided', () {
      final prompt = GeminiPrompt(
        model: 'gemini-2.0-flash',
        input: 'Hello, world!',
        apiKey: 'test-key',
        instructions: 'Be friendly',
      );

      expect(prompt.instructions, equals('Be friendly'));
    });

    test('should have null instructions value when not provided', () {
      final prompt = GeminiPrompt(
        model: 'gemini-2.0-flash',
        input: 'Hello, world!',
        apiKey: 'test-key',
      );

      expect(prompt.instructions, isNull);
    });
  });
}
