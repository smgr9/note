import 'package:flutter/material.dart';
import 'package:note/widget/custom_text_filed.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            hint: "title",
          ),
          SizedBox(height: 16),
          CustomTextField(
            hint: "Content",
            maxline: 5,
          ),
        ],
      ),
    );
  }
}
