import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 16.0,
        shadowColor: Colors.black38,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        borderOnForeground: false,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order No238562312',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF242424),
                    ),
                  ),
                  Text(
                    '20/03/2020',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 14.0,
                      color: const Color(0xFF808080),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 1,
              color: Color(0xFF606060),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Quantity:',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF808080),
                        ),
                      ),
                      const SizedBox(width: 3.0),
                      Text(
                        '03',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF303030),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Total Amount:',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF808080),
                        ),
                      ),
                      const SizedBox(width: 3.0),
                      Text(
                        '\$150',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF303030),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 30.0, bottom: 16.0, right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    ),
                    child: Text(
                      'Detail',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Text(
                    'Delivered',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF27AE60),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
