import 'package:flutter/material.dart';

import '../Model/chat_model.dart';

class MessageChatPage extends StatefulWidget {
  const MessageChatPage({super.key, required this.chatModel});
  final ChatModel chatModel;
  @override
  State<MessageChatPage> createState() => _MessageChatPageState();
}

class _MessageChatPageState extends State<MessageChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arshad Malik'),
      ),
    );
  }
}
