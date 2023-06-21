import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note/Model/note_model.dart';
import 'package:note/const/Kconst.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color? color = const Color(0xff1F005D);
  addNote(NoteModel note) async {
    note.color = color!.value;
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box(kNotesBox);
      await noteBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
      print(e);
      // TODO
    }
  }
}
