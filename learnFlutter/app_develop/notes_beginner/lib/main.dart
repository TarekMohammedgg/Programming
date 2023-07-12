import 'package:flutter/material.dart';
import 'package:notes_beginner/view/note_view.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(
      primaryColor: const Color(0xff2B2D2D) , 
      scaffoldBackgroundColor: const Color(0xff2B2D2D)
    ), 
    debugShowCheckedModeBanner: false ,
    
    home:  NoteView());
  }
}
