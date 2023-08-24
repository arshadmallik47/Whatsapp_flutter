// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_whatsapp/Model/chat_model.dart';
import 'package:flutter_whatsapp/pages/chat_message_page.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.chatModel});
  final ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MessageChatPage(
              chatModel: chatModel,
            ),
          ),
        );
      },
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blueGrey,
          radius: 30,
          child: SvgPicture.asset(
            chatModel.isGroup! ? "assets/groups.svg" : "assets/person.svg",
            color: Colors.white,
            width: 37,
            height: 37,
          ),
        ),
        title: Text(
          chatModel.name.toString(),
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        subtitle: Row(
          children: [
            const Icon(Icons.done_all),
            const SizedBox(width: 3),
            Text(
              chatModel.currentMessage.toString(),
              style: const TextStyle(fontSize: 13),
            ),
          ],
        ),
        trailing: Text(chatModel.time.toString()),
      ),
    );
  }
}
