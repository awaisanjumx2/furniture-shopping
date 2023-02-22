import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TypeTile extends StatelessWidget {
  const TypeTile(
      {super.key,
      required this.title,
      required this.icon,
      required this.selected});
  final String title;
  final IconData icon;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 70,
      child: Column(
        children: [
          Container(
            width: 45.0,
            height: 45.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color:
                  selected ? const Color(0xFF303030) : const Color(0xFFF5F5F5),
            ),
            child: Icon(
              icon,
              color: selected ? Colors.white : const Color(0xFF999999),
            ),
          ),
          const SizedBox(height: 5.0),
          Text(
            title,
            style: GoogleFonts.nunitoSans(
              fontWeight: selected ? FontWeight.w600 : FontWeight.w500,
              color:
                  selected ? const Color(0xFF242424) : const Color(0xFF999999),
            ),
          )
        ],
      ),
    );
  }
}
