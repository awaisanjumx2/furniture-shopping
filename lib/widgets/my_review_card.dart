import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class MyReviewCard extends StatelessWidget {
  const MyReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 30.0,
      shadowColor: Colors.black38,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(6.0),
                  child: Image.asset(
                    'assets/images/table.jpeg',
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Coffee Table',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF606060),
                      ),
                    ),
                    Text(
                      '\$ 50.00',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w900,
                        color: const Color(0xFF242424),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RatingBar(
                    maxRating: 5.0,
                    minRating: 1.0,
                    glow: false,
                    initialRating: 4.8,
                    allowHalfRating: true,
                    ignoreGestures: true,
                    itemSize: 16.0,
                    ratingWidget: RatingWidget(
                      full: Icon(
                        Icons.star,
                        color: Colors.yellow.shade700,
                      ),
                      half: Icon(
                        Icons.star_half_outlined,
                        color: Colors.yellow.shade700,
                      ),
                      empty: Icon(
                        Icons.star_outline,
                        color: Colors.yellow.shade700,
                      ),
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                  Text(
                    '20/03/2020',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 12.0,
                      color: const Color(0xFF808080),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Nice Furniture with good delivery. The delivery time is very fast. Then products look like exactly the picture in the app. Besides, color is also the same and quality is very good despite very cheap price',
              style: GoogleFonts.nunitoSans(
                fontSize: 14.0,
                color: const Color(0xFF242424),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
