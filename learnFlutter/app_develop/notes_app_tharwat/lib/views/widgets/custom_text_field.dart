import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final int lines;
  final void Function(String?)? onSaved;

  const CustomTextField(
      {super.key, required this.labelText, this.lines = 1, this.onSaved});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        onSaved: onSaved,
        validator: (value) {
           if (value?.isEmpty ?? true ) {
            
            return "Field is Required! ";
          } else {
            return null;
          }
        },
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
