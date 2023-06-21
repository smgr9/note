import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note/Model/note_model.dart';
import 'package:note/const/Kconst.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  bool isLoading = false;
  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    print("loading");
    try {
      print("try");
      var noteBox = Hive.box(kNotesBox);
      print("hive");
      await noteBox.add(note);
      print("add");
      emit(AddNoteSuccess());
      print("success");
    } catch (e) {
      print("failure");
      emit(AddNoteFailure(e.toString()));
      print(e);
      // TODO
    }
  }
}
