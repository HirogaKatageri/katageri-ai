import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:katageri_ai/katageri_ai.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'conversation_test.mocks.dart';

@GenerateNiceMocks([MockSpec<SparrowHttpClient>()])
void main() {
  late SparrowHttpClient httpClient;

  late String apiKey;
  late String model;
  late String input;

  setUp(() {
    httpClient = MockSparrowHttpClient();

    apiKey = '1234';
  });

  group('Conversation Tests', () {
    late GeminiClient client;

    setUp(() {
      client = GeminiClient(apiKey: apiKey, client: httpClient);

      when(httpClient.host).thenReturn('generativelanguage.googleapis.com');
      when(httpClient.parent).thenReturn('v1beta/models');
      when(
        httpClient.headers,
      ).thenReturn({HttpHeaders.contentTypeHeader: 'application/json'});
    });

    test('A stateful gemini conversation can retain memory', () async {
      model = 'gemini-pro';
      input = 'Hi Gemini';

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

      final conversation = StatefulConversation(client: client);

      await conversation.send(input: input, model: model);

      final conversationLogs = conversation.memory.conversation;

      expect(conversationLogs.length, 2);
      expect(conversationLogs[0].message, 'Hi Gemini');
      expect(conversationLogs[1].message, 'Hi Human!');
    });

    test('A stateful gemini conversation can send its memories', () async {
      model = 'gemini-pro';
      input = 'Hi Gemini';

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
                modelVersion: 'geminie-pro',
              ),
            ),
            200,
          ),
        ),
      );

      final conversation = StatefulConversation(client: client);

      await conversation.send(input: input, model: model);

      var conversationLogs = conversation.memory.conversation;

      when(
        httpClient.post(
          path: '/gemini-free:generateContent',
          body: {
            'contents': [
              ...conversationLogs.map(
                (e) => {
                  'role': e.role,
                  'parts': [
                    {'text': e.message},
                  ],
                },
              ),
              {
                'role': 'user',
                'parts': [
                  {'text': 'Good bye~'},
                ],
              },
            ],
          },
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
                      parts: [ContentPartData(text: "Good bye Human~")],
                    ),
                  ),
                ],
                modelVersion: 'geminie-free',
              ),
            ),
            200,
          ),
        ),
      );

      await conversation.send(input: 'Good bye~', model: 'gemini-free');

      conversationLogs = conversation.memory.conversation;

      expect(conversationLogs.length, 4);
      expect(conversationLogs[0].message, 'Hi Gemini');
      expect(conversationLogs[1].message, 'Hi Human!');
      expect(conversationLogs[1].model, 'gemini-pro');
      expect(conversationLogs[2].message, 'Good bye~');
      expect(conversationLogs[3].message, 'Good bye Human~');
      expect(
        conversationLogs[3].model,
        'gemini-free',
      ); // Verify different model used.
    });
  });
}
