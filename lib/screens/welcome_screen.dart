import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/welcome.png',
                  fit: BoxFit.fill,
                  height: double.infinity,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'MAKE YOUR',
                        style: GoogleFonts.gelasio(
                          color: const Color(0xFF606060),
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        'HOME BEAUTIFUL',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.gelasio(
                          color: const Color(0xFF303030),
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text(
                          'The best simple place where you discover most wonderful furnitures and make your home beautiful',
                          style: GoogleFonts.nunitoSans(
                            color: const Color(0xFF808080),
                            fontSize: 18.0,
                            height: 2.0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 150),
                      Container(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('login/');
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(160, 55),
                          ),
                          child: Text(
                            'Get Started',
                            style: GoogleFonts.gelasio(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
