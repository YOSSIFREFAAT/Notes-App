import 'package:flutter/material.dart';
import 'package:notes_app/constans.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final int maxLines;
  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        border: buildTextField(),
        enabledBorder: buildTextField(),
        focusedBorder: buildTextField(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildTextField([Color? color]) => OutlineInputBorder(
        borderSide: BorderSide(
          color: color ?? Colors.white,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      );
}
