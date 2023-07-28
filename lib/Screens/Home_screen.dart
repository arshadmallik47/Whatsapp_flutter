// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/pages/Chat_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF075E54),
        title: const Text('Whatsapp'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          PopupMenuButton<String>(
            onSelected: (val) {
              print(val);
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: "New group",
                  child: Text("New group"),
                ),
                const PopupMenuItem(
                  value: "New broadcast",
                  child: Text("New broadcast"),
                ),
                const PopupMenuItem(
                  value: "Whatsapp Web",
                  child: Text("Whatsapp Web"),
                ),
                const PopupMenuItem(
                  value: "Starred messages",
                  child: Text("Starred messages"),
                ),
                const PopupMenuItem(
                  value: "Settings",
                  child: Text("Settings"),
                ),
              ];
            },
          ),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _controller, tabs: const [
          Icon(Icons.camera_alt),
          Text('CHATS'),
          Text('STATUS'),
          Text('CALLS')
        ]),
      ),
      body: TabBarView(
        
        controller: _controller, children: const [
        Text('Camera'),
        ChatPage(),
        Text('Status'),
        Text('Calls'),
      ]),
    );
  }
}
