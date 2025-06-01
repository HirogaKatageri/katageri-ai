import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:katageri_ai/katageri_ai.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'gemini_client_test.mocks.dart';

@GenerateNiceMocks([MockSpec<SparrowHttpClient>()])
void main() {
  late SparrowHttpClient httpClient;
  late GeminiClient geminiClient;

  late String apiKey;
  late String model;
  late String input;

  setUp(() {
    httpClient = MockSparrowHttpClient();

    apiKey = '1234';
    model = 'test-model';
    input = 'Hello World!';

    geminiClient = GeminiClient(apiKey: apiKey, client: httpClient);

    when(httpClient.host).thenReturn('generativelanguage.googleapis.com');
    when(httpClient.parent).thenReturn('v1beta/models');
    when(
      httpClient.headers,
    ).thenReturn({HttpHeaders.contentTypeHeader: 'application/json'});
  });

  group('Gemini Client Tests', () {
    test('Client.sendPrompt has valid Schema till API', () async {
      final body = {
        'contents': [
          {
            'role': 'user',
            'parts': [
              {'text': input},
            ],
          },
        ],
      };

      when(
        httpClient.post(
          path: '/$model:generateContent',
          body: body,
          headers: null,
          queryParams: {'key': '1234'},
        ),
      ).thenAnswer(
        (_) => Future.value(
          Response(
            jsonEncode(
              GeminiResponse(
                candidates: [
                  CandidateData(
                    content: ContentData(
                      role: 'model',
                      parts: [ContentPartData(text: "Hi Human!")],
                    ),
                  ),
                ],
              ),
            ),
            200,
          ),
        ),
      );

      final modelResponse = await geminiClient.sendPrompt(
        input: input,
        model: model,
      );

      verify(
        httpClient.post(
          path: '/$model:generateContent',
          body: body,
          headers: null,
          queryParams: {'key': '1234'},
        ),
      ).called(1);

      expect(modelResponse.output, 'Hi Human!');
    });
  });
}
