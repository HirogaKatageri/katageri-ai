import 'package:json_annotation/json_annotation.dart';

part 'prompts.g.dart';

sealed class Prompt {
  Prompt({required this.model});

  @JsonKey(name: 'model')
  final String model;
}

@JsonSerializable()
class OpenAiTextPrompt extends Prompt {
  OpenAiTextPrompt({
    required super.model,
    required this.input,
    this.instructions,
  });

  final String? instructions;
  final String input;

  Map<String, dynamic> toJson() => _$OpenAiTextPromptToJson(this);
}
