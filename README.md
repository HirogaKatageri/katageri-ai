# Sparrow Clients

A Dart library that provides clients for interacting with AI services. Currently supports Google's Gemini AI with planned support for OpenAI.

## Features

- Simple, unified API for interacting with different AI services
- Support for text prompts with Google's Gemini AI
- Customizable model selection
- Optional instruction parameters
- Response parsing into strongly-typed objects

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  sparrow_clients: ^0.0.1
```

Then run:

```bash
dart pub get
```

## Usage

### Gemini Client

```dart
import 'package:katageri_ai/katageri_ai.dart';

void main() async {
  // Create a client with your API key
  final client = GeminiClient(apiKey: 'YOUR_GEMINI_API_KEY');

  // Send a text prompt
  final GeminiResponse response = await client.textPrompt(
    input: 'Tell me about Dart programming',
    // Optional: specify a different model
    // model: 'gemini-1.5-pro',
    // Optional: add system instructions
    // instructions: 'Be concise and focus on recent developments',
  );

  // Process the response
  print(response.candidates?.firstOrNull?.content?.parts?.firstOrNull?.text);
}
```

## API Reference

### BaseAiClient

Abstract base class for all AI clients.

### GeminiClient

Client for Google's Gemini AI service.

#### Constructor

```
GeminiClient({required String apiKey, SparrowHttpClient? client})
```

#### Methods

- `Future<GeminiResponse> textPrompt({required String input, String model, String? instructions})`

  Sends a text prompt to the Gemini AI service and returns the response.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
