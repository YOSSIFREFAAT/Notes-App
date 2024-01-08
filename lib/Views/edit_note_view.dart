import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: EditNoteViewBody(),
        ),
      ),
    );
  }
}
