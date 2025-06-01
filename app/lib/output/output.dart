sealed class Output {
  Output({this.message = 'output: none', this.data = const {}});

  final String message;
  final Map<String, dynamic> data;
}

class MessageOutput extends Output {
  MessageOutput({required super.message, super.data});
}

class ExitOutput extends Output {
  ExitOutput({super.message, super.data});
}
