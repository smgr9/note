import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note/Model/note_model.dart';
import 'package:note/const/Kconst.dart';
import 'package:note/cubit/Add_note_cubit/add_note_cubit.dart';
import 'package:note/simple_bloc_observer.dart';
import 'package:note/view/edit_note_view.dart';
import 'package:note/view/notes_view.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());

  await Hive.initFlutter();
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          NoteView.id: (context) => const NoteView(),
          EditNoteView.id: (context) => const EditNoteView(),
        },
        initialRoute: NoteView.id,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: fontPopp,
        ),
      ),
    );
  }
}
