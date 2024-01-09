import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  final IconData icon;
  final Function()? onPressed;
  const CustomSearchIcon({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        color: Colors.white.withOpacity(0.1),
      ),
      child: Center(
        child: IconButton(
          splashRadius: 30,
          icon: Icon(icon, size: 30),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
