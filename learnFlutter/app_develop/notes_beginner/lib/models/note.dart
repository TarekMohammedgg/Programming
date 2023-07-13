import 'data.dart';

class NoteData {
  final String titleNote;
  final String subtitleNote;
   NoteData({required this.titleNote, required this.subtitleNote});
  NoteData addnote({var title , var subtitle}){
    NoteData noteData = NoteData(titleNote: title, subtitleNote: subtitle) ;
    notes.add(noteData) ; 
    return noteData ; 
  }
}
