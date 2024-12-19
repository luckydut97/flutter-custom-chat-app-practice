class ChatMessage {
  final String content;
  final MessageType type;
  final DateTime timestamp;

  ChatMessage({
    required this.content,
    required this.type,
    required this.timestamp,
  });

  static List<ChatMessage> sampleMessages() {
    return [
      ChatMessage(
        content: "Hello, how are you?",
        type: MessageType.received,
        timestamp: DateTime.now().subtract(const Duration(minutes: 5)),
      ),
      ChatMessage(
        content: "I'm good! How about you?",
        type: MessageType.sent,
        timestamp: DateTime.now().subtract(const Duration(minutes: 4)),
      ),
    ];
  }
}

enum MessageType {
  sent,
  received,
}
