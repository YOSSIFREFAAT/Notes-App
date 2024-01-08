import 'package:flutter/material.dart';
import 'package:notes_app/constans.dart';

class CustomButton extends StatelessWidget {
  final Function()? onTap;
  const CustomButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: const BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: const Center(
          child: Text(
            "Add",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
