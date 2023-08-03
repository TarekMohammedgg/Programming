import 'dart:math';

import 'package:flutter/cupertino.dart';

import 'models/data.dart';
import 'models/note.dart';

List ktodo2 = [];
String input2 = " ";
List ktodo = [];
String input = " ";
final i = Random().nextInt(users.length) + 0;
final TextEditingController textTitle = TextEditingController();
final TextEditingController textSubTitle = TextEditingController();
String title = " ";
String subtitle = " ";
  final NoteData object = NoteData(titleNote: " ", subtitleNote: " ");
  bool flag = false;
