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
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       primaryColor: const Color(0XFF075E54),
       
      // secondaryHeaderColor: const Color(0xFF128C7E),
       
       
      ),
      home:const HomeScreen(),
  
    );
  }
}
