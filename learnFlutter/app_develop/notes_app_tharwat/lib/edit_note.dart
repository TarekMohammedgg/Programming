import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_app_bar.dart';
import 'package:notes/views/widgets/custom_text_field.dart';


class EditNote extends StatelessWidget {
  const EditNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
        child: Column(
          children: [
            // SizedBox(
            //   height: 10,
            // ),
            CustomAppBar(
              text: "Edit Note",
              icon: Icons.check,
            ),
            SizedBox(
              height: 30,
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
          ],
        ),
      ),
    ));
  }
}


