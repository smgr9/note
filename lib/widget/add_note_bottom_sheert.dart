import 'package:flutter/material.dart';
import 'package:note/const/Kconst.dart';
import 'package:note/widget/custom_button.dart';
import 'package:note/widget/custom_text_filed.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            CustomTextField(
              onSaved: (data) {
                title = data;
              },
              hint: "title",
            ),
            const SizedBox(height: 16),
            CustomTextField(
              onSaved: (data) {
                subtitle = data;
              },
              hint: "Content",
              maxline: 5,
            ),
            const SizedBox(
              height: 32,
            ),
            CustomButtom(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ));
  }
}
