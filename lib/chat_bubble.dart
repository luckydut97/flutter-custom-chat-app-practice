import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat_message.dart';

class ChatBubble extends StatelessWidget {
  final ChatMessage message;

  const ChatBubble({required this.message, super.key});

  @override
  Widget build(BuildContext context) {
    final isSent = message.type == MessageType.sent;
    return Row(
      mainAxisAlignment: isSent ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        if (!isSent)
          const CircleAvatar(
            backgroundImage: AssetImage("assets/avatar.png"),
          ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          decoration: BoxDecoration(
            color: isSent ? const Color(0xFF007AFF) : const Color(0xFFE5E5EA),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            message.content,
            style: TextStyle(
              color: isSent ? Colors.white : Colors.black87,
            ),
          ),
        ),
      ],
    );
  }
}
