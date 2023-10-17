import 'package:agricure/pages/Introduction.dart';
import 'package:agricure/pages/Login.dart';
import 'package:agricure/pages/Splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/introduction',
      routes: {
        '/': (context) => Splash(),
        '/introduction':(context)=> Introduction(),
        '/login':(context) => Login(),


      },

    );
  }
}
