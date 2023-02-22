import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard(
      {super.key,
      required this.name,
      required this.rating,
      required this.date,
      required this.review,
      required this.image});

  final String name;
  final double rating;
  final String date;
  final String review;
  final String image;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      elevation: 20.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      shadowColor: Colors.black38,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.nunitoSans(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF242424),
                      ),
                    ),
                    Text(
                      date,
                      style: GoogleFonts.nunitoSans(
                        fontSize: 12.0,
                        color: const Color(0xFF808080),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 3.0,
                    bottom: 8.0,
                  ),
                  child: RatingBar(
                    maxRating: 5.0,
                    minRating: 1.0,
                    glow: false,
                    initialRating: rating,
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
                ),
                Text(
                  review,
                  style: GoogleFonts.nunitoSans(
                    fontSize: 14.0,
                    color: const Color(0xFF242424),
                  ),
                ),
              ],
            ),
            Positioned(
              top: -36,
              left: (size.width / 2) - (64),
              child: CircleAvatar(
                radius: 20.0,
                backgroundImage: AssetImage(image),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
