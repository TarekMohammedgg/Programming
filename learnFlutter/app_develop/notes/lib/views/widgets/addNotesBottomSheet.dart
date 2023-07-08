import 'package:flutter/material.dart';

import 'custom_button_buttom_sheet.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              labelText: "Title",
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              labelText: "content",
              lines: 5,
            ),
            SizedBox(
              height: 30,
            ),
            custom_button_buttom_sheet(),
          ],
        ),
      ),
    );
  }
}
