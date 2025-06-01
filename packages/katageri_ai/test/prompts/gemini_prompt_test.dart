import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:katageri_ai/katageri_ai.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:uuid/v4.dart';

import 'gemini_prompt_test.mocks.dart';

@GenerateNiceMocks([MockSpec<SparrowHttpClient>()])
void main() {
  group('Gemini Prompt Tests', () {
    late String apiKey;
    late String model;
    late String input;

    late SparrowHttpClient client;

    setUp(() {
      apiKey = '1234';
      model = 'test-model';
      input = 'Hello World!';

      client = MockSparrowHttpClient();
      when(client.host).thenReturn('generativelanguage.googleapis.com');
      when(client.parent).thenReturn('v1beta/models');
      when(
        client.headers,
      ).thenReturn({HttpHeaders.contentTypeHeader: 'application/json'});
    });

    test('Prompt.send has valid schema when calling API', () async {
      final expectedBody = {
        'contents': [
          {
            'role': 'user',
            'parts': [
              {'text': input},
            ],
          },
        ],
      };

      // We are mocking a specific input in order to validate the composition
      // of prompt.send() when passing to the client.
      when(
        client.post(
          path: '/$model:generateContent',
          body: expectedBody,
          headers: null,
          queryParams: {'key': '1234'},
        ),
      ).thenAnswer(
        (_) => Future.value(Response(jsonEncode(GeminiResponse()), 200)),
      );

      final prompt = GeminiPrompt(
        apiKey: apiKey,
        model: model,
        input: input,
        stream: false,
      );

      await prompt.send(client);

      verify(
        client.post(
          path: '/$model:generateContent',
          body: expectedBody,
          headers: null,
          queryParams: {'key': '1234'},
        ),
      ).called(1);
    });

    test(
      'Prompt.send has valid schema when calling API with instruction',
      () async {
        final expectedBody = {
          'system_instruction': {
            'parts': [
              {'text': 'You are a Human'},
            ],
          },
          'contents': [
            {
              'role': 'user',
              'parts': [
                {'text': input},
              ],
            },
          ],
        };

        // We are mocking a specific input in order to validate the composition
        // of prompt.send() when passing to the client.
        when(
          client.post(
            path: '/$model:generateContent',
            body: expectedBody,
            headers: null,
            queryParams: {'key': '1234'},
          ),
        ).thenAnswer(
          (_) => Future.value(Response(jsonEncode(GeminiResponse()), 200)),
        );

        final prompt = GeminiPrompt(
          apiKey: apiKey,
          model: model,
          input: input,
          instructions: 'You are a Human',
          stream: false,
        );

        await prompt.send(client);

        verify(
          client.post(
            path: '/$model:generateContent',
            body: expectedBody,
            headers: null,
            queryParams: {'key': '1234'},
          ),
        ).called(1);
      },
    );

    test('Prompt.send has valid schema when calling API with memory', () async {
      final expectedBody = {
        'contents': [
          {
            'role': 'user',
            'parts': [
              {'text': 'Previous message'},
            ],
          },
          {
            'role': 'assistant',
            'parts': [
              {'text': 'Previous response'},
            ],
          },
          {
            'role': 'user',
            'parts': [
              {'text': input},
            ],
          },
        ],
      };

      when(
        client.post(
          path: '/$model:generateContent',
          body: expectedBody,
          headers: null,
          queryParams: {'key': '1234'},
        ),
      ).thenAnswer(
        (_) => Future.value(Response(jsonEncode(expectedBody), 200)),
      );

      final memory = Memory(id: UuidV4().generate())
        ..addConversation(role: 'user', message: 'Previous message')
        ..addConversation(role: 'assistant', message: 'Previous response');

      final prompt = GeminiPrompt(
        apiKey: apiKey,
        model: model,
        input: input,
        memory: memory,
        stream: false,
      );

      await prompt.send(client);

      verify(
        client.post(
          path: '/$model:generateContent',
          body: expectedBody,
          headers: null,
          queryParams: {'key': '1234'},
        ),
      ).called(1);
    });
  });
}
