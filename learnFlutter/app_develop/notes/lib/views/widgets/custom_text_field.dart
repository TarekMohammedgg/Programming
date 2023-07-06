import 'package:flutter/material.dart';

class CoustomTextField extends StatelessWidget {
  const CoustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        cursorColor: Colors.lightBlue,
        decoration: InputDecoration(
           floatingLabelBehavior: FloatingLabelBehavior.never , 
            hintText: "Title",
            hintStyle: const TextStyle(color: Colors.lightBlue),
            border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: , 
           ));
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
