import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/Custom_Search_Icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Notes",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        CustomSearchIcon(),
      ],
    );
  }
}
