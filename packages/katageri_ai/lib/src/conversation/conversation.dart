import 'package:uuid/v4.dart';

import '../clients/base_client.dart';
import '../data/model_response.dart';
import '../memory/memory.dart';

class StatefulConversation<C extends BaseAiClient> {
  StatefulConversation({required this.client, this.oldMemories});

  final C client;
  final Memory memory = Memory(id: UuidV4().generate());
  final List<Memory>? oldMemories;

  Future<ModelResponse> send({
    required String input,
    String? model,
    String? instructions,
  }) async {
    final response = await client.sendPrompt(
      input: input,
      model: model,
      instructions: instructions,
      memory: memory,
    );

    memory.addConversation(role: 'user', message: input, model: model);
    memory.addConversation(
      role: 'model',
      message: response.output ?? '',
      model: model,
    );

    return response;
  }
}
