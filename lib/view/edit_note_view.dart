import 'package:flutter/material.dart';
import 'package:note/Model/note_model.dart';
import 'package:note/widget/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, this.note});

  final NoteModel? note;
  static String id = "editNoteViwe";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(
        note: note!,
      ),
    );
  }
}
