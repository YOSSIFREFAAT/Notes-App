import 'package:flutter/material.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            currentIndex = index;
            setState(() {});
          },
          child: ColorItem(
            isActive: currentIndex == index,
          ),
        ),
      ),
    );
  }
}

class ColorItem extends StatelessWidget {
  final bool isActive;
  const ColorItem({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return isActive
        ? const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 32,
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 29,
              ),
            ),
          )
        : const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 32,
            ),
          );
  }
}
