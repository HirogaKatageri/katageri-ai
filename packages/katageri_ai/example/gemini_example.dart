import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:katageri_ai/katageri_ai.dart';

void main() async {
  final client = SparrowHttpClient.gemini();


  print('\nTesting image generation with GeminiPrompt.send():');
  try {
    // Create a GeminiPrompt with the image generation model
    /// For text to image generation, use model: 'gemini-2.0-flash-preview-image-generation'
    /// For text to text generation, use model: 'gemini-2.0-flash'
    final geminiPrompt = GeminiPrompt(
      apiKey: '',
      model: 'gemini-2.0-flash-preview-image-generation',
      input: 'generate a photorealistic image of a ${['Filipino', 'Japanese', 'Korean', 'Chinese']} person working in ${['Manila', 'Tokyo', 'Seoul', 'Beijing'][Random().nextInt(4)]}, in a traditional ${['Filipino', 'Japanese', 'Korean', 'Chinese'][Random().nextInt(4)]} setting',
      stream: false,
    );


    final response = await geminiPrompt.send(client);
    
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    
    if (response.statusCode != 200) {
      print('Error response: ${response.body}');
      return;
    }

    final geminiResponse = GeminiResponse.fromJson(jsonDecode(response.body));
    
    print('Text response: ${geminiResponse.text}');
    
    if (geminiResponse.candidates != null && geminiResponse.candidates!.isNotEmpty) {
      final candidate = geminiResponse.candidates!.first;
      if (candidate.content?.parts != null) {
        for (final part in candidate.content!.parts!) {
          if (part.inlineData != null && part.inlineData!.isNotEmpty) {
            final imageData = part.inlineData!['data'] as String?;
            final mimeType = part.inlineData!['mimeType'] as String?;
            
            if (imageData != null) {
              final bytes = base64Decode(imageData);
              
              final timestamp = DateTime.now().millisecondsSinceEpoch;
              final extension = mimeType?.contains('png') == true ? 'png' : 'jpg';
              final filename = 'gemini_generated_image_$timestamp.$extension';
              
              final currentDir = Directory.current.path;
              final imagesDir = '$currentDir/generated_images';
              final filePath = '$imagesDir/$filename';
              
              final directory = Directory(imagesDir);
              if (!directory.existsSync()) {
                directory.createSync(recursive: true);
              }
              
              final file = File(filePath);
              await file.writeAsBytes(bytes);
              
              print('Image generated: $mimeType, Base64 data length: ${imageData.length}');
              print('Image saved to: $filePath');
            }
          }
        }
      }
    }
  } catch (e) {
    print('Error in image generation: $e');
  }

  client.dispose();
}

