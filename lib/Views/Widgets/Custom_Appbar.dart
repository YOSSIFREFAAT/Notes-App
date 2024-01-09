import 'package:flutter/material.dart';
import 'package:notes_app/views/Widgets/custom_search_icon.dart';

class CustomAppbar extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function()? onPressed;
  const CustomAppbar(
      {super.key, required this.title, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
        CustomSearchIcon(
          onPressed: onPressed,
          icon: icon,
        ),
      ],
    );
  }
}
