import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/Model/note_model.dart';
import 'package:note/cubit/cubit/notes_cubit.dart';
import 'package:note/widget/custom_app_bar.dart';
import 'package:note/widget/custom_text_filed.dart';

class EditNoteViewBody extends StatefulWidget {
  EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: [
        const SizedBox(height: 30),
        CustomAppBar(
          onPressed: () {
            widget.note.title = title ?? widget.note.title;
            widget.note.subtitle = content ?? widget.note.subtitle;
            widget.note.save();
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          },
          title: "Edit Note",
          iconName: Icons.check,
        ),
        const SizedBox(height: 50),
        CustomTextField(
          hint: widget.note.title,
          onChanged: (data) {
            title = data;
          },
        ),
        const SizedBox(height: 16),
        CustomTextField(
          onChanged: (data) {
            content = data;
          },
          hint: widget.note.subtitle,
          maxline: 5,
        ),
      ]),
    );
  }
}
