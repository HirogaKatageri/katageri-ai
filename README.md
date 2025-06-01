# Katageri AI (ˈkætəˌɡɔri aɪ)

A Dart library that provides clients for interacting with AI services. Currently, supports Google's Gemini AI with planned support for OpenAI.

## Current Features

- **Unified API**: Simple, consistent interface for interacting with different AI services
- **Gemini AI Support**: Support for Google's Gemini AI service
  - Text prompts with customizable model selection (default: gemini-2.0-flash)
  - System instructions for guiding AI responses
- **Conversation Management**: Stateful conversations with memory of previous interactions
- **Memory System**: Store and retrieve conversation history
- **Type-Safe Responses**: Response parsing into strongly typed objects

## Upcoming Features

- **Agents**: Creation and definition of Agents.
- **OpenAI Support**: Integration with OpenAI's API (implementation in progress)
  - Support for GPT models (planned default: gpt-4.1-nano)
  - Compatible with the same unified API as Gemini
- **Enhanced Memory Management**: Additional features for managing conversation history
- **More AI Services**: Plans to support additional AI service providers
- **Model Context Protocol**: Plans to support Model Context Protocols 

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  katageri_ai: ^0.0.1
```

## Usage Guide

### Basic Usage with Gemini AI

```dart
import 'package:katageri_ai/katageri_ai.dart';

void main() async {
  // Create an HTTP client for Gemini
  final httpClient = SparrowHttpClient.gemini();

  // Create a Gemini client with your API key
  final geminiClient = GeminiClient(
    apiKey: 'YOUR_GEMINI_API_KEY',
    client: httpClient,
  );

  // Send a text prompt
  final ModelResponse response = await geminiClient.sendPrompt(
    input: 'Tell me about Dart programming',
    // Optional: specify a different model
    // model: 'gemini-2.0-pro',
    // Optional: add system instructions
    // instructions: 'Be concise and focus on recent developments',
  );

  // Process the response
  print(response.output);
}
```

### Stateful Conversations

```dart
import 'package:katageri_ai/katageri_ai.dart';

void main() async {
  final httpClient = SparrowHttpClient.gemini();
  final geminiClient = GeminiClient(
    apiKey: 'YOUR_GEMINI_API_KEY',
    client: httpClient,
  );

  // Create a stateful conversation
  final conversation = StatefulConversation(client: geminiClient);

  // Send the first message
  final response1 = await conversation.send(
    input: 'What is Dart?',
  );
  print(response1.output);

  // Send a follow-up message (the conversation history is automatically included)
  final response2 = await conversation.send(
    input: 'What are its main features?',
  );
  print(response2.output);
}
```

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
