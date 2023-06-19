import 'package:flutter/material.dart';
import 'package:note/widget/notes_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});
  static String id = "NoteView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NotesViewBody(),
    );
  }
}
