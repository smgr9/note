import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/Model/note_model.dart';
import 'package:note/cubit/Add_note_cubit/add_note_cubit.dart';
import 'package:note/widget/custom_button.dart';
import 'package:note/widget/custom_text_filed.dart';

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
                  var note = NoteModel(
                      title: title!,
                      subtitle: subtitle!,
                      date: DateTime.now().toString(),
                      color: Colors.blue.value);
                  BlocProvider.of<AddNoteCubit>(context).addNote(note);
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
