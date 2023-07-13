import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_beginner/view/widget/custom_note_appbar.dart';
import 'package:date_format/date_format.dart';
import '../constans.dart';

class NoteView extends StatefulWidget {
  const NoteView({super.key});

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
                      backgroundColor: const Color(0xff2E5984),
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
                              input = " ";
                              input2 = " ";
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
          backgroundColor: Colors.lightBlue,
          foregroundColor: Colors.black,
          child: const Icon(Icons.add),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            const CustomNoteAppBar(),
            const Divider(
              color: Colors.white,
              thickness: .4,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: ktodo.length,
                itemBuilder: (BuildContext context, int index) {
                  return Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Dismissible(
                        key: Key(ktodo[index]),
                        background: Container(
                          color: Colors.red,
                          child: const Icon(Icons.cancel),
                        ),
                        onDismissed: (DismissDirection direction) {
                          if (direction == DismissDirection.startToEnd) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text('Removed'),
                            ));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text("Archived ")));
                          }

                          setState(() {
                            ktodo.removeAt(index);
                            ktodo2.removeAt(index);
                          });
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.accents[
                                    Random().nextInt(Colors.primaries.length)],
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Column(
                                children: [
                                  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(14),
                                        child: Image.network(
                                          "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=580&q=80",
                                          width: 50,
                                          height: 50,
                                        ),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    // contentPadding: EdgeInsets.zero,
                                    title: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 6.0),
                                      child: Text(
                                        ktodo[index],
                                        style: const TextStyle(
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    subtitle: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 6.0),
                                      child: Text(
                                        ktodo2[index],
                                        style: const TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  
                                    trailing: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            ktodo.removeAt(index);
                                            ktodo2.removeAt(index);
                                          });
                                        },
                                        icon:
                                            const Icon(FontAwesomeIcons.trash)),
                                  ), Padding(
                                      padding: const EdgeInsets.only(
                                          left: 150, bottom: 10),
                                      child: Text(
                                          "Edited in: ${DateTime.now().day},${formatDate(DateTime.now(), [
                                                MM
                                              ])} ,${DateTime.now().year}",
                                          style: const TextStyle(
                                            fontSize: 16,
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
