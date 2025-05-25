part of 'base_prompt.dart';

// class OpenAiPrompt extends Prompt {
//   OpenAiPrompt({
//     required super.model,
//     required super.input,
//     required super.stream,
//     super.instructions,
//   });
//
//   @override
//   Future<Response<T>> invoke<T>(Dio dio) => dio.post(
//     'v1/responses',
//     data: jsonEncode({
//       'model': model,
//       'input': input,
//       'instructions': instructions,
//     }),
//   );
// }
