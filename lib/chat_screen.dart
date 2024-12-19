import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'chat_controller.dart';
import 'chat_message.dart';
import 'chat_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat"),
        backgroundColor: const Color(0xFF007AFF),
      ),
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => context.read<ChatController>().focusNode.unfocus(),
              child: Selector<ChatController, List<ChatMessage>>(
                selector: (_, controller) => controller.messages,
                builder: (_, messages, __) {
                  return ListView.builder(
                    controller: context.read<ChatController>().scrollController,
                    itemCount: messages.length,
                    reverse: true,
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                    itemBuilder: (_, index) {
                      return ChatBubble(message: messages[index]);
                    },
                  );
                },
              ),
            ),
          ),
          const _MessageInputField(),
        ],
      ),
    );
  }
}

class _MessageInputField extends StatelessWidget {
  const _MessageInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Color(0xFFE5E5EA))),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                focusNode: context.read<ChatController>().focusNode,
                controller: context.read<ChatController>().messageInputController,
                decoration: const InputDecoration(
                  hintText: "Type a message",
                  border: InputBorder.none,
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.send,
                color: context.watch<ChatController>().isSendButtonEnabled
                    ? const Color(0xFF007AFF)
                    : Colors.grey,
              ),
              onPressed: context.read<ChatController>().isSendButtonEnabled
                  ? context.read<ChatController>().sendMessage
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
