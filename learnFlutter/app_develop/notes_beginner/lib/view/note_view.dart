import 'dart:math';

import 'package:flutter/material.dart';
import 'package:notes_beginner/models/data.dart';
import 'package:notes_beginner/models/note.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_beginner/view/widget/custom_note_appbar.dart';

class NoteView extends StatefulWidget {
  const NoteView({super.key});

  @override
  State<NoteView> createState() => _NoteViewState();
}

class _NoteViewState extends State<NoteView> {
  final TextEditingController _textTitle = TextEditingController();
  final TextEditingController _textSubTitle = TextEditingController();
  final NoteData object = NoteData(titleNote: " ", subtitleNote: " ");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  String title = " ";
                  String subtitle = " ";
                  return AlertDialog(
                    backgroundColor: const Color(0xff2E5984),
                    title: const Text("Add Note"),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextField(
                          controller: _textTitle,
                          decoration: const InputDecoration(
                            hintText: "Enter your Note ",
                          ),
                          onChanged: (String value) {
                            title = value;
                          },
                        ),
                        TextField(
                          controller: _textSubTitle,
                          minLines: 4,
                          maxLines: 100,
                          decoration: const InputDecoration(
                            hintText: "Enter your Note ",
                          ),
                          onChanged: (value) {
                            subtitle = value;
                          },
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                           
                            if (_textTitle.text.isEmpty) {
                              return;
                            }
                            if (_textSubTitle.text.isEmpty) {
                              return;
                            }
                             notes.add(NoteData(
                                titleNote: title, subtitleNote: subtitle));
                          });
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          "ADD",
                          style: TextStyle(color: Colors.black
                          
                            
                          ),
                        
                        ),
                      )
                    ],
                  );
                });
          },
          backgroundColor: Colors.lightBlue,
          foregroundColor: Colors.black,
          child: const Icon(Icons.add),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            const CustomNoteAppBar(
              textnote: "Notes",
            ),
            const Divider(
              color: Colors.white,
              thickness: .4,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  return Dismissible(
                    key: Key(object.titleNote),
                    direction: DismissDirection.startToEnd,
                    background: Container(
                      color: Colors.red,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.cancel_outlined),
                          ],
                        ),
                      ),
                    ),
                    onDismissed: (direction) {
                      notes.removeAt(index);
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Deleted")));
                    },
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              String title = " ";
                              String subtitle = " ";
                              return AlertDialog(
                                backgroundColor: const Color(0xff2E5984),
                                title: const Text("Add Note"),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          // notes[index].titleNote,
                                          _textTitle.text,
                                          style: const TextStyle(fontSize: 24),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    TextField(
                                      controller: _textTitle,
                                      decoration: const InputDecoration(
                                        hintText: "Edit on your note  ",
                                      ),
                                      onChanged: (String value) {
                                        title = value;
                                      },
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          // notes[index].subtitleNote,
                                          _textSubTitle.text,
                                          style: const TextStyle(fontSize: 24),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    TextField(
                                      controller: _textSubTitle,
                                      minLines: 4,
                                      maxLines: 100,
                                      decoration: const InputDecoration(
                                        hintText: "Enter your Note ",
                                      ),
                                      onChanged: (value) {
                                        subtitle = value;
                                      },
                                    ),
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                        if (title.isEmpty) {
                                          title = _textTitle.text;
                                        } else if (subtitle.isEmpty) {
                                          subtitle = _textSubTitle.text;
                                        } else {
                                          title = _textTitle.text;
                                          subtitle = _textSubTitle.text;
                                        }
                                        notes[index] = NoteData(
                                            titleNote: title,
                                            subtitleNote: subtitle);

                                        if (title == _textTitle.text) {
                                          _textTitle.clear();
                                        }
                                        if (subtitle == _textSubTitle.text) {
                                          _textSubTitle.clear();
                                        }
                                      });
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text(
                                      "Update",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  )
                                ],
                              );
                            });
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                        color: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                        child: ListTile(
                          title: Text(
                            notes[index].titleNote,
                            style: const TextStyle(fontSize: 24),
                          ),
                          subtitle: Text(
                            notes[index].subtitleNote,
                            style: const TextStyle(fontSize: 16),
                          ),
                          trailing: IconButton(
                              onPressed: () {
                                setState(() {
                                  notes.removeAt(index);
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content: Text("Deleted"),
                                  ));
                                });
                              },
                              icon: const Icon(Icons.delete_forever)),
                        ),
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
