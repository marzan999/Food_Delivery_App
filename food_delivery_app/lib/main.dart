import 'package:flutter/material.dart';
import 'package:food_delivery_app/widget/page3.dart';
import 'package:food_delivery_app/widget/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
