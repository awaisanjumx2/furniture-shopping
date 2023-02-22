import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoriteTile extends StatelessWidget {
  const FavoriteTile(
      {super.key,
      required this.name,
      required this.price,
      required this.image});
  final String name;
  final double price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              image,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: GoogleFonts.nunitoSans(
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF606060),
                            ),
                          ),
                          Text(
                            '\$ ${price.toStringAsFixed(2)}',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF303030),
                            ),
                          ),
                        ],
                      ),
                      const Icon(Icons.cancel_outlined),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 34.0,
                        height: 34.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE0E0E0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Icon(
                          Icons.shopping_bag_sharp,
                          color: Color(0xFF303030),
                          size: 22.0,
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
    );
  }
}
