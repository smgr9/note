import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note/Model/note_model.dart';
import 'package:note/cubit/Add_note_cubit/add_note_cubit.dart';
import 'package:note/widget/colors_list_view.dart';
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
            ColorsListView(),
            const SizedBox(
              height: 32,
            ),
            customBuilder(),
            const SizedBox(
              height: 16,
            ),
          ],
        ));
  }

  BlocBuilder<AddNoteCubit, AddNoteState> customBuilder() {
    return BlocBuilder<AddNoteCubit, AddNoteState>(
      builder: (context, state) {
        return CustomButtom(
          isloading: state is AddNoteLoading ? true : false,
          onTap: () {
            addNoteMethod(context);
            // Navigator.pop(context);
          },
        );
      },
    );
  }

  void addNoteMethod(BuildContext context) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      var currentDate = DateTime.now();
      var formatedCurrentDate = DateFormat("dd-M-yyyy").format(currentDate);
      var noteModel = NoteModel(
          title: title!,
          subtitle: subtitle!,
          date: formatedCurrentDate.toString(),
          color: Colors.blue.value);
      BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
    } else {
      autovalidateMode = AutovalidateMode.always;
      setState(() {});
    }
  }
}
