import 'dart:convert';
import 'dart:io';
import 'package:sparrow_clients/sparrow-clients.dart';

void main() async {


  final client = GeminiClient(apiKey: Platform.environment['GEMINI_API_KEY']!);

  stdout.write('Enter your prompt: ');
  final prompt = stdin.readLineSync();
  if (prompt == null || prompt.trim().isEmpty) {
    print('❌ Prompt cannot be empty.');
    return;
  }

  try {
    print('🎨 Generating image for prompt: "$prompt"');
    final base64Image = await client.textToImage(prompt: prompt);
    
    final filename = 'generated_image_${DateTime.now().millisecondsSinceEpoch}.png';
    await File(filename).writeAsBytes(base64Decode(base64Image));
    print('✅ Image saved to: $filename');
  } catch (e) {
    print('❌ Error: $e');
  }
}
