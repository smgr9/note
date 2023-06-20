import 'package:flutter/material.dart';
import 'package:note/widget/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: const NoteItem(),
        );
      },
    );
  }
}