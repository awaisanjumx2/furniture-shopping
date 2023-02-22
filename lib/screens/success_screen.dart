import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'SUCCESS!',
                style: GoogleFonts.merriweather(
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF242424),
                ),
              ),
              const SizedBox(height: 30.0),
              SvgPicture.asset(
                'assets/images/success.svg',
              ),
              const SizedBox(height: 30.0),
              Text(
                'Your order will be delivered soon.\nThank you for choosing our app!',
                style: GoogleFonts.nunitoSans(
                  fontSize: 18.0,
                  color: const Color(0xFF606060),
                ),
              ),
              const SizedBox(height: 40.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 5.0,
                    fixedSize: const Size(160, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text(
                    'Track your orders',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).popAndPushNamed('home/');
                  },
                  style: OutlinedButton.styleFrom(
                    fixedSize: const Size(160, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text(
                    'BACK TO HOME',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
