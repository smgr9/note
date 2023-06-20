import 'package:flutter/material.dart';
import 'package:note/widget/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  static String id = "editNoteViwe";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const EditNoteViewBody(),
    );
  }
}
