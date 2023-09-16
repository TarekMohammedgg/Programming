import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FirstView extends StatelessWidget {
  const FirstView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: AppBar(
        title: const Text(
          "Toku",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.brown,
      ),
      body: Column(children: [
        Category(
          onTap: () {
            debugPrint("object");
          },
          colors: Colors.red,
          text: "Numbers",
        ),
        Category(
          onTap: () {
            debugPrint("object");
          },
          colors: Colors.orange,
          text: "members",
        ),
        Category(
          onTap: () {
            debugPrint("object");
          },
          colors: Colors.green,
          text: "colors",
        ),
        Category(
          onTap: () {
            debugPrint("object");
          },
          colors: const Color.fromARGB(255, 114, 33, 243),
          text: "family Members ",
        ),
        Category(
          onTap: () {
            debugPrint("object");
          },
          colors: Colors.blue,
          text: "Phrases",
        ),
      ]),
    );
  }
}

class Category extends StatelessWidget {
  final Color colors;
  final String text;
  final Function() onTap;
  const Category(
      {super.key,
      required this.colors,
      required this.text,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.only(left: 18),
        alignment: Alignment.centerLeft,
        width: MediaQuery.of(context).size.width,
        color: colors,
        height: 65,
        child: Text(
          text,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
