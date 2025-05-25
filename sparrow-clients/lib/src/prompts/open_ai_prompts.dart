part of 'prompts_base.dart';

class OpenAiPrompt extends Prompt {
  OpenAiPrompt({
    required super.model,
    required super.input,
    super.instructions,
  });

  @override
  Future<Response<T>> invoke<T>(Dio dio) => dio.post(
    'v1/responses',
    data: jsonEncode({
      'model': model,
      'input': input,
      'instructions': instructions,
    }),
  );
}
