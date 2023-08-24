// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Custom_ui/customCard.dart';
import 'package:flutter_whatsapp/Model/chat_model.dart';
import 'package:flutter_whatsapp/Screens/selectContact.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
      name: "Ar_Malik",
      isGroup: false,
      currentMessage: "Hi everyone",
      time: "4:00",
      icon: "person.svg",
    ),
    ChatModel(
      name: "Arshad_Malik",
      isGroup: false,
      currentMessage: "Hi Ar_Malik",
      time: "8:00",
      icon: "person.svg",
    ),
    ChatModel(
      name: "Server chat",
      isGroup: true,
      currentMessage: "Hi Everyone on this group",
      time: "10:00",
      icon: "groups.svg",
    ),
    ChatModel(
      name: "Malik",
      isGroup: false,
      currentMessage: "Hi Malik",
      time: "10:00",
      icon: "person.svg",
    ),
    ChatModel(
      name: "Malik Group",
      isGroup: true,
      currentMessage: "Hi Malik G",
      time: "12:00",
      icon: "groups.svg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 4, 59, 53),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SelectContact(),
            ),
          );
        },
        child: const Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (BuildContext context, int index) {
          return CustomCard(
            chatModel: chats[index],
          );
        },

        // CustomCard(),
        // CustomCard(),
      ),
    );
  }
}
