import 'package:basket_ball_app/view/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange[300],
          title: const Text("Points Counter"),
        ),
        body: const HomePage(),
      ),
    );
  }
}
