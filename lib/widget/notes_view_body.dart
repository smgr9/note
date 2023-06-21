import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubit/cubit/notes_cubit.dart';
import 'package:note/widget/custom_app_bar.dart';
import 'package:note/widget/notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: const [
        SizedBox(height: 30),
        CustomAppBar(
          title: "Notes",
          iconName: Icons.search,
        ),
        Expanded(child: NotesListView()),
      ]),
    );
  }
}
