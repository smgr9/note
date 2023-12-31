import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note/Model/note_model.dart';
import 'package:note/const/Kconst.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List? notes;
  fetchAllNotes() async {
    var notebox = Hive.box(kNotesBox);
    notes = notebox.values.toList();
    emit(NotesSuccess());
  }
}
