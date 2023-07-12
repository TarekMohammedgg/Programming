import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_beginner/view/widget/custom_note_appbar.dart';
import 'package:date_format/date_format.dart';
import '../constans.dart';

class NoteView extends StatefulWidget {
NoteView({super.key});

@override
State<NoteView> createState() => _NoteViewState();
}

class _NoteViewState extends State<NoteView> {
@override
Widget build(BuildContext context) {
return SafeArea(
  child: Scaffold(
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
                  backgroundColor: Colors.yellow[200],
                  title: const Text("Add Note"),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        minLines: 1,
                        maxLines: 100,
                        decoration: const InputDecoration(
                          hintText: "Enter your Note ",
                        ),
                        onChanged: (String value) {
                          input = value;
                        },
                      ),
                      TextField(
                        minLines: 4,
                        maxLines: 100,
                        decoration: const InputDecoration(
                          hintText: "Enter your Note ",
                        ),
                        onChanged: (String value) {
                          input2 = value;
                        },
                      ),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          ktodo.add(input);
                          ktodo2.add(input2);
                        });
                        Navigator.of(context).pop();
                      },
                      child: const Text(
                        "ADD",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ));
      },
      backgroundColor: Colors.yellow[200],
      foregroundColor: Colors.black,
      child: const Icon(Icons.add),
    ),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        const CustomNoteAppBar(),
        Expanded(
          child: ListView.builder(
            itemCount: ktodo.length,
            itemBuilder: (BuildContext context, int index) {
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Dismissible(
                    key: Key(ktodo[index]),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.yellow[200],
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding:
                              const EdgeInsets.symmetric(vertical: 8.0),
                          child: Column(
                            children: [
                              ListTile(
                                // contentPadding: EdgeInsets.zero,
                                title: Padding(
                                  padding:
                                      const EdgeInsets.only(bottom: 6.0),
                                  child: Text(
                                    ktodo[index],
                                    style: const TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                subtitle: Padding(
                                  padding:
                                      const EdgeInsets.only(bottom: 6.0),
                                  child: Text(
                                    ktodo2[index],
                                    style: const TextStyle(
                                      fontSize: 40,
                                    ),
                                  ),
                                ),

                                trailing: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        ktodo2.removeAt(index);
                                      });
                                    },
                                    icon:
                                        const Icon(FontAwesomeIcons.trash)),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      left: 150, bottom: 10),
                                  child: Text(
                                      "Edited in: ${DateTime.now().day} ,${formatDate(DateTime.now(), [
                                            MM
                                          ])} ,${DateTime.now().year}",
                                      style: const TextStyle(
                                        fontSize: 18,
                                      )))
                            ],
                          ),
                        )),
                  ),
                ),
              );
            },
          ),
        )
      ]),
    ),
  ),
);
}
}
