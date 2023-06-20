import 'package:flutter/material.dart';
import 'package:note/const/Kconst.dart';
import 'package:note/view/edit_note_view.dart';
import 'package:note/view/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        NoteView.id: (context) => NoteView(),
        EditNoteView.id: (context) => EditNoteView(),
      },
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: fontPopp,
      ),
      home: const EditNoteView(),
    );
  }
}
