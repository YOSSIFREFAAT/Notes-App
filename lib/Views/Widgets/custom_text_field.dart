import 'package:flutter/material.dart';
import 'package:notes_app/constans.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
        border: buildTextField(),
        enabledBorder: buildTextField(),
        focusedBorder: buildTextField(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildTextField([Color? color]) =>
      OutlineInputBorder(borderSide: BorderSide(color: color ?? Colors.white));
}
