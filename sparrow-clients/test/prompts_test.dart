import 'package:sparrow_clients/clients.dart';
import 'package:test/test.dart';

void main() {
  group('OpenAiTextPrompt', () {
    test('should serialize to JSON correctly', () {
      final prompt = OpenAiTextPrompt(
        model: 'gpt-4.1-nano',
        input: 'Hello, world!',
        instructions: 'Be friendly',
      );
      
      final json = prompt.toJson();
      
      expect(json, {
        'model': 'gpt-4.1-nano',
        'input': 'Hello, world!',
        'instructions': 'Be friendly',
      });
    });
    
    test('should serialize to JSON correctly without instructions', () {
      final prompt = OpenAiTextPrompt(
        model: 'gpt-4.1-nano',
        input: 'Hello, world!',
      );
      
      final json = prompt.toJson();
      
      expect(json, {
        'model': 'gpt-4.1-nano',
        'input': 'Hello, world!',
        'instructions': null,
      });
    });
    
    test('should have correct model value', () {
      final prompt = OpenAiTextPrompt(
        model: 'gpt-4.1-nano',
        input: 'Hello, world!',
      );
      
      expect(prompt.model, equals('gpt-4.1-nano'));
    });
    
    test('should have correct input value', () {
      final prompt = OpenAiTextPrompt(
        model: 'gpt-4.1-nano',
        input: 'Hello, world!',
      );
      
      expect(prompt.input, equals('Hello, world!'));
    });
    
    test('should have correct instructions value when provided', () {
      final prompt = OpenAiTextPrompt(
        model: 'gpt-4.1-nano',
        input: 'Hello, world!',
        instructions: 'Be friendly',
      );
      
      expect(prompt.instructions, equals('Be friendly'));
    });
    
    test('should have null instructions value when not provided', () {
      final prompt = OpenAiTextPrompt(
        model: 'gpt-4.1-nano',
        input: 'Hello, world!',
      );
      
      expect(prompt.instructions, isNull);
    });
  });
}