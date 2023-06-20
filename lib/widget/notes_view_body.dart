import 'package:flutter/material.dart';
import 'package:note/widget/custom_app_bar.dart';
import 'package:note/widget/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

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
