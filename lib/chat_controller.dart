import 'package:flutter/cupertino.dart';

import 'chat_message.dart';

class ChatController extends ChangeNotifier {
  List<ChatMessage> messages = ChatMessage.sampleMessages();
  final ScrollController scrollController = ScrollController();
  final TextEditingController messageInputController = TextEditingController();
  final FocusNode focusNode = FocusNode();

  void sendMessage() {
    if (messageInputController.text.trim().isEmpty) return;

    messages.insert(
      0,
      ChatMessage(
        content: messageInputController.text.trim(),
        type: MessageType.sent,
        timestamp: DateTime.now(),
      ),
    );
    messageInputController.clear();
    notifyListeners();

    scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  bool get isSendButtonEnabled => messageInputController.text.trim().isNotEmpty;
}
