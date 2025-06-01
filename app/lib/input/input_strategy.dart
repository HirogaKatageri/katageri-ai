import 'package:app/output/output.dart';

import 'commands.dart';

abstract base class InputStrategy {
  /// Process the input according to the strategy
  /// Returns the processed result as a String
  Future<Output?> process(String input);
}

final class TextInput implements InputStrategy {
  @override
  Future<Output?> process(String input) async {

    return MessageOutput(message: input.trim());
  }
}

sealed class CommandInput implements InputStrategy {
  abstract final String command;
}

final class ExitCommand implements CommandInput {
  @override
  final String command = Commands.exit;

  @override
  Future<Output?> process(String input) async {
    if (input.toLowerCase() == command) {
      return ExitOutput();
    }

    return null;
  }
}

final class HelpCommand implements CommandInput {
  @override
  final String command = Commands.help;

  @override
  Future<Output?> process(String input) async {
    if (input.toLowerCase() == command) {
      return MessageOutput(
        message:
            'Available commands:\n'
            '/help - Show this help message\n'
            '/exit - Exit the application',
      );
    }
    return null;
  }
}
