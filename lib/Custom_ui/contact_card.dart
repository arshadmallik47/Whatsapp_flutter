// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_whatsapp/Model/chat_model.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({super.key, this.contact});
  final ChatModel? contact;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: CircleAvatar(
          radius: 23,
          backgroundColor: Colors.blueGrey[200],
          child: SvgPicture.asset(
            'assets/person.svg',
            color: Colors.white,
            width: 30,
            height: 30,
          ),
        ),
        title: Text(
          contact!.name.toString(),
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          contact!.status.toString(),
          style: const TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
