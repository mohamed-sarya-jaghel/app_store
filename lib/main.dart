import 'package:flutter/material.dart';
import 'package:shopping_app/gettarted_page.dart';
import 'package:shopping_app/signup_page.dart';
import 'package:shopping_app/singin_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const GetStarted(),
      routes: {
        "Signup": (context) => const Signup(),
        "Signin": (context) => const Signin(),
      },
    );
  }
}
