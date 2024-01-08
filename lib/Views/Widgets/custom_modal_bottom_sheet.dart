import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/custom_text_field.dart';

class CustomModalBottomSheet extends StatelessWidget {
  const CustomModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
      child: const Column(children: [
        CustomTextField(hintText: "Title"),
        SizedBox(height: 16),
        CustomTextField(hintText: "Content", maxLines: 6),
      ]),
    );
  }
}
