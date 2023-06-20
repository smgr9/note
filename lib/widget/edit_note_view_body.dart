import 'package:flutter/material.dart';
import 'package:note/widget/custom_app_bar.dart';
import 'package:note/widget/custom_text_filed.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: const [
        SizedBox(height: 30),
        CustomAppBar(
          title: "Edit Note",
          iconName: Icons.check,
        ),
        SizedBox(height: 50),
        CustomTextField(hint: "Title"),
        SizedBox(height: 16),
        CustomTextField(
          hint: "Content",
          maxline: 5,
        ),
      ]),
    );
  }
}
