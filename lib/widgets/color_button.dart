import 'package:flutter/material.dart';

class ColorButton extends StatelessWidget {
  const ColorButton({super.key, required this.color, required this.selected});
  final Color color;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor:
              selected ? const Color(0xFF909090) : const Color(0xFFF0F0F0),
          radius: 22.0,
          child: CircleAvatar(
            backgroundColor: color,
            radius: 15.0,
          ),
        ),
      ],
    );
  }
}
