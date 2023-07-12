import 'package:flutter/material.dart';

class CustomNoteAppBar extends StatelessWidget {
  const CustomNoteAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "NoTes APP",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            letterSpacing: 5,
          ),
        ),
      ],
    );
  }
}
