import 'package:app/lib.dart';

/// A processor that handles user input using a list of input strategies.
/// It tries each strategy in order until one succeeds or all fail.
class InputProcessor {
  /// The list of strategies to use for processing input
  final List<InputStrategy> strategies;

  /// Creates a new InputProcessor with the given strategies
  InputProcessor(this.strategies);

  /// Process the input using the available strategies
  /// Returns the result from the first successful strategy
  /// Throws an exception if all strategies fail
  Future<Output> processInput(String input) async {
    if (strategies.isEmpty) {
      throw StateError('No input strategies available');
    }

    // Try each strategy in order
    for (final strategy in strategies) {
      // Return the result of the first successful strategy
      final output = await strategy.process(input);

      if (output != null) return output;
    }

    // If we get here, all strategies failed
    throw ArgumentError('No Strategy supports the input.');
  }
}
