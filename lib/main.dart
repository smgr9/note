import 'package:flutter/material.dart';
import 'package:note/view/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        NoteView.id: (context) => NoteView(),
      },
      theme: ThemeData.dark(),
      home: const NoteView(),
    );
  }
}
