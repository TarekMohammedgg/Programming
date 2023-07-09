import 'package:flutter/material.dart';
import 'package:notes/views/widgets/addNotesBottomSheet.dart';
import 'package:notes/views/widgets/note_list_view.dart';

import 'widgets/custom_app_bar.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                context: context,
                builder: (context) => const AddNoteBottomSheet());
          },
          child: const Icon(Icons.add)),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
        child: Column(
          children: [
            CustomAppBar(
              text: "Notes",
              icon: Icons.search,
            ),
            Expanded(child: NoteListView())
          ],
        ),
      ),
    ));
  }
}
