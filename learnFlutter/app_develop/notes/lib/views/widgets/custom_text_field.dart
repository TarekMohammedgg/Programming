import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final int lines  ;
  const CustomTextField({super.key, required this.labelText, this.lines =1 });

  @override
  Widget build(BuildContext context) {
    return TextField(
        cursorColor: Colors.lightBlue,
        maxLines: lines,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          hintStyle: const TextStyle(color: Colors.lightBlue),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
          labelText: labelText,
        ));
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
