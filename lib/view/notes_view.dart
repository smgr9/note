import 'package:flutter/material.dart';
import 'package:note/widget/add_note_bottom_sheert.dart';
import 'package:note/widget/notes_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});
  static String id = "NoteView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(10))),
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              });
        },
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
