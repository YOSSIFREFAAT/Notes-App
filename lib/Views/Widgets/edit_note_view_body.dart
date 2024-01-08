import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/custom_appbar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppbar(
          title: "Edit note",
          icon: Icons.check,
        ),
      ],
    );
  }
}
