import 'dart:io';

import 'package:app/lib.dart';

void main(List<String> arguments) async {
  // Display welcome message
  print('Your conversation has started.');
  print('Type /exit to end the conversation.');
  print('Type /help for available commands.');
  print('Any other input will be processed as text.');

  // Create input processor with strategies
  // Order matters - first matching strategy will be used
  final inputProcessor = InputProcessor([
    HelpCommand(),
    ExitCommand(),
    TextInput(),
  ]);

  // Continue running until user types /exit
  bool isRunning = true;

  while (isRunning) {
    // Read user input
    stdout.write('> ');
    String? input = stdin.readLineSync();

    if (input != null && input.isNotEmpty) {
      try {
        // Process input using the InputProcessor
        final output = await inputProcessor.processInput(input);

        // Handle the result
        switch (output) {
          case MessageOutput():
            print(output.message);
            break;
          case ExitOutput():
            exit(0);
        }
      } catch (e) {
        print('Error: $e');
      }
    }
  }
}
