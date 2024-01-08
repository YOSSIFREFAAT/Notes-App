import 'package:flutter/material.dart';
import 'package:notes_app/views/Widgets/custom_appbar.dart';
import 'package:notes_app/views/Widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          children: [
            CustomAppbar(
              title: "Notes",
              icon: Icons.search,
            ),
            Expanded(
              child: NotesListView(),
            ),
          ],
        ),
      ),
    );
  }
}
