import 'package:katageri_ai/katageri_ai.dart';
import '../output/output.dart';
import 'commands.dart';

abstract base class InputStrategy {
  /// Process the input according to the strategy
  /// Returns the processed result as a String
  Future<Output?> process(String input);
}

final class TextInput implements InputStrategy {
  TextInput({required this.geminiClient});
  
  final GeminiClient geminiClient;

  @override
  Future<Output?> process(String input) async {
    try {
      final response = await geminiClient.sendPrompt(input: input.trim());
      
      final message = response.output ?? 'No response from Gemini';
      return MessageOutput(message: message);
    } catch (e) {
      return MessageOutput(message: 'Error communicating with Gemini: $e');
    }
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
