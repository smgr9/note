import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note/const/Kconst.dart';
import 'package:note/view/edit_note_view.dart';
import 'package:note/view/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        NoteView.id: (context) => const NoteView(),
        EditNoteView.id: (context) => const EditNoteView(),
      },
      initialRoute: NoteView.id,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: fontPopp,
      ),
    );
  }
}
