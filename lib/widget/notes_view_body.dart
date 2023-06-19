import 'package:flutter/material.dart';
import 'package:note/widget/custom_app_bar.dart';
import 'package:note/widget/custom_note_item.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(height: 30),
          CustomAppBar(),
          NoteItem(),
        ],
      ),
    );
  }
}
