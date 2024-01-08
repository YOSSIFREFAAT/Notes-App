import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_note_form.dart';

class CustomModalBottomSheet extends StatelessWidget {
  const CustomModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
      child: const SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}
