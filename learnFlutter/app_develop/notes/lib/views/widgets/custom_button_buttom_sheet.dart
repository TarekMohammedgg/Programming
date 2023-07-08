import 'package:flutter/material.dart';

class custom_button_buttom_sheet extends StatelessWidget {
  const custom_button_buttom_sheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Center(
        child: Text(
          "Add",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}
