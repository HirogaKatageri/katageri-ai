part of 'base_client.dart';

// class OpenAiClient extends BaseAiClient {
//   static const String openAiBaseUrl = 'https://api.openai.com/';
//   static const String defaultOpenAiModel = 'gpt-4.1-nano';
//
//   OpenAiClient({required this.apiKey, Dio? dio})
//     : super(
//         dio:
//             dio ??
//             Dio(
//               BaseOptions(
//                 baseUrl: openAiBaseUrl,
//                 headers: {
//                   Headers.contentTypeHeader: Headers.jsonContentType,
//                   'Authorization': 'Bearer $apiKey',
//                 },
//               ),
//             ),
//       );
//
//   final String apiKey;
//
//   @override
//   Future<String?> textPrompt({
//     required String input,
//     String model = defaultOpenAiModel,
//     bool stream = false,
//     String? instructions,
//   }) async {
//     try {
//       final result = await OpenAiPrompt(
//         model: model,
//         input: input,
//         instructions: instructions,
//         stream: stream,
//       ).invoke(dio);
//
//       return jsonEncode(result.data);
//     } on DioException catch (e) {
//       logDioException(e);
//     }
//
//     return null;
//   }
// }
