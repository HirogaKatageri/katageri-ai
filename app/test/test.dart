import 'package:app/lib.dart';
import 'package:test/test.dart';

void main() {
  group('InputProcessor', () {
    test('processes input with the first successful strategy', () async {
      final processor = InputProcessor([TextInput(), ExitCommand()]);

      final result = await processor.processInput('Hello, world!');
      expect(result, equals('Hello, world!'));
    });

    test('processes command input correctly', () async {
      final processor = InputProcessor([TextInput()]);

      final result = await processor.processInput('/help');
      expect(result, equals('Executing command: help'));
    });

    test('processes exit command correctly', () async {
      final processor = InputProcessor([ExitCommand(), TextInput()]);

      final result = await processor.processInput('/exit');
      expect(result, equals('exit'));
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
