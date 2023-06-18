import 'package:flutter/material.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});
  static String id = "NoteView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Note"),
        centerTitle: true,
      ),
    );
  }
}
