import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Screens/Home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'OpenSans',
      ),
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp Flutter',
      home: const HomeScreen(),
    );
  }
}
