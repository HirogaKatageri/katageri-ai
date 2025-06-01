import 'package:freezed_annotation/freezed_annotation.dart';

part 'memory.freezed.dart';
part 'memory.g.dart';

@freezed
abstract class ConversationLog with _$ConversationLog {
  const factory ConversationLog({
    String? role,
    String? message,
    String? model,
  }) = _ConversationLog;

  factory ConversationLog.fromJson(Map<String, dynamic> json) =>
      _$ConversationLogFromJson(json);
}

class Memory {
  Memory({required this.id});

  final String id;
  final List<ConversationLog> _conversation = [];

  List<ConversationLog> get conversation => _conversation;

  void setConversation(List<ConversationLog> conversation) {
    _conversation.clear();
    _conversation.addAll(conversation);
  }

  void addConversation({
    required String role,
    required String message,
    String? model,
  }) {
    _conversation.add(
      ConversationLog(role: role, message: message, model: model),
    );
  }

  void erase() {
    _conversation.clear();
  }
}
