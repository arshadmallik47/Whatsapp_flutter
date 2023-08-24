import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Custom_ui/contact_card.dart';
import 'package:flutter_whatsapp/Model/chat_model.dart';

class SelectContact extends StatefulWidget {
  const SelectContact({super.key});

  @override
  State<SelectContact> createState() => _SelectContactState();
}

class _SelectContactState extends State<SelectContact> {
  List<ChatModel> chats = [
    ChatModel(
      name: "Ar_Malik",
      status: "I am a Flutter developer",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    List<ChatModel> contacts = [
      ChatModel(
        name: "Ar_Malik",
        status: "I am a Flutter developer",
      ),
      ChatModel(
        name: "Arshad_Malik",
        status: "I am a developer",
      ),
      ChatModel(
        name: "Malik",
        status: "I am a Software Engeneer",
      ),
      ChatModel(
        name: "Ar_Malik",
        status: "I am a developer",
      ),
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0XFF075E54),
          title: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Select Contact",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "256 contacts",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 26,
              ),
            ),
            PopupMenuButton<String>(
              onSelected: (val) {},
              itemBuilder: (BuildContext context) {
                return [
                  const PopupMenuItem(
                    value: "Invite a friend",
                    child: Text("Invite a friend"),
                  ),
                  const PopupMenuItem(
                    value: "Contacts",
                    child: Text("Contacts"),
                  ),
                  const PopupMenuItem(
                    value: "Refresh",
                    child: Text("Refresh"),
                  ),
                  const PopupMenuItem(
                    value: "Help",
                    child: Text("Help"),
                  ),
                ];
              },
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) => ContactCard(
            contact: contacts[index],
          ),
        ));
  }
}
