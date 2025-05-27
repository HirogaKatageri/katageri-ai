import 'dart:convert';
import 'dart:io';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:path/path.dart' as path;
import 'package:sparrow_clients/sparrow-clients.dart';

Future<void> main() async {

  await dotenv.load();

  final apiKey = dotenv.env['GOOGLE_API_KEY'];
  if (apiKey == null || apiKey.isEmpty) {
    print('❌ API_KEY not found in .env file.');
    return;
  }


  stdout.write('Enter your prompt: ');
  final prompt = stdin.readLineSync();

  if (prompt == null || prompt.trim().isEmpty) {
    print('❌ Prompt cannot be empty.');
    return;
  }

  print('🎨 Generating image for prompt: "$prompt"');

  final geminiClient = GeminiClient(apiKey: apiKey);

  try {
    final response = await geminiClient.textPrompt(
      input: prompt,
      model: 'gemini-pro-vision',
      instructions: null,
    );

    String? base64Data;
    for (final candidate in response.candidates ?? []) {
      for (final part in candidate.content?.parts ?? []) {
        if (part.inlineData != null &&
            part.inlineData!.mimeType?.startsWith('image/') == true) {
          base64Data = part.inlineData!.data;
          break;
        }
      }
      if (base64Data != null) break;
    }

    if (base64Data == null) {
      print('❌ No image data found in the response or incorrect data format.');
      print('Response structure: ${response.toJson()}');
      return;
    }

    await saveImage(base64Data);
  } catch (e) {
    print('❌ Error: $e');
  }
}

Future<void> saveImage(String base64Data) async {
  final bytes = base64Decode(base64Data);
  final filename =
      'generated_image_${DateTime.now().millisecondsSinceEpoch}.png';

  final file = File(path.join(Directory.current.path, filename));

  await file.writeAsBytes(bytes);
  print('✅ Image saved to: ${file.path}');
}
