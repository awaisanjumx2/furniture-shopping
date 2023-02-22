import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile(
      {super.key,
      required this.title,
      required this.body,
      required this.newNotification,
      this.image});

  final String title;
  final String body;
  final bool newNotification;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: newNotification
          ? const Color(0xFFF5F5F5)
          : (image != null)
              ? Colors.white
              : const Color(0xFFF0F0F0),
      title: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (image != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(6.0),
                child: Image.asset(
                  image!,
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.nunitoSans(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF242424),
                      ),
                    ),
                    Text(
                      body,
                      style: GoogleFonts.nunitoSans(
                        fontSize: 10,
                        color: const Color(0xFF808080),
                      ),
                    ),
                    if (newNotification)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'New',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w900,
                              color: const Color(0xFF27AE60),
                            ),
                          ),
                        ],
                      ),
                    if (image == null)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'HOT!',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w900,
                              color: const Color(0xFFEB5757),
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
