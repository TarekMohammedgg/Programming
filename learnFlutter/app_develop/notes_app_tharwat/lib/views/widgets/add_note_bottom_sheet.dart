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
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> fromKey = GlobalKey();

AutovalidateMode.disabled;

    return Form(
      key: fromKey,
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
              setState(() {
                
              });
            },
            labelText: "Title",
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
              setState(() {
                
              });
            },
            labelText: "content",
            lines: 5,
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButtonButtomSheet(
            onTap: () {
              if (fromKey.currentState!.validate()) {
                fromKey.currentState!.save();
              } else {
                
            
              }
              ;
            },
          ),
        ],
      ),
    );
  }
}
