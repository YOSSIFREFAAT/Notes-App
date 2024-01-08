import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/Notes_View_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NotesViewBody(),
    );
  }
}
