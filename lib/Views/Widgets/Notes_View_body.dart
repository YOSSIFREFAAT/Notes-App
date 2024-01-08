import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/Custom_Appbar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomAppbar(),
          ],
        ),
      ),
    );
  }
}
