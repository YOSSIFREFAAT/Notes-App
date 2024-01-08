import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/custom_appbar.dart';
import 'package:notes_app/Views/Widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppbar(
          title: "Edit Note",
          icon: Icons.check,
        ),
        SizedBox(height: 32),
        CustomTextField(
          hintText: "Title",
        ),
        SizedBox(height: 16),
        CustomTextField(
          hintText: "Content",
          maxLines: 6,
        ),
      ],
    );
  }
}