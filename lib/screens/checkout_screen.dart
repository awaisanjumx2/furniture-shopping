import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Check out',
          style: GoogleFonts.merriweather(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF303030),
          ),
        ),
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xFF242424),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20.0, top: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shipping Address',
                          style: GoogleFonts.nunito(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                            color: const Color(
                              0xFF909090,
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.edit_outlined,
                          color: Color(0xFF242424),
                        ),
                      ],
                    ),
                    Card(
                      elevation: 16.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      margin: const EdgeInsets.only(top: 8.0, bottom: 26.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'Bruno Fernandes',
                                style: GoogleFonts.nunitoSans(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF242424),
                                ),
                              ),
                            ),
                            const Divider(
                              height: 2,
                              color: Color(0xFF242424),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                '25 rue Robert Latouche, Nice, 06200, Côte D’azur, France',
                                style: GoogleFonts.nunitoSans(
                                  color: const Color(0xFF808080),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Payment',
                          style: GoogleFonts.nunito(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                            color: const Color(
                              0xFF909090,
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.edit_outlined,
                          color: Color(0xFF808080),
                        ),
                      ],
                    ),
                    Card(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      margin: const EdgeInsets.only(top: 8.0, bottom: 26.0),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Card(
                              elevation: 0.0,
                              color: Colors.grey.shade200,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0,
                                  vertical: 4.0,
                                ).copyWith(left: 16.0),
                                child: const Icon(
                                  FontAwesomeIcons.ccMastercard,
                                  size: 40,
                                ),
                              ),
                            ),
                            const SizedBox(width: 16.0),
                            Text(
                              '**** **** **** 3947',
                              style: GoogleFonts.nunitoSans(
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF242424),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery method',
                          style: GoogleFonts.nunito(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                            color: const Color(
                              0xFF909090,
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.edit_outlined,
                          color: Color(0xFF808080),
                        ),
                      ],
                    ),
                    Card(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      margin: const EdgeInsets.only(top: 8.0, bottom: 26.0),
                      child: Container(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Row(
                          children: [
                            Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Positioned(
                                  child: Container(
                                    width: 90,
                                    height: 30,
                                    color: const Color(0xFFFFCC00),
                                  ),
                                ),
                                const Icon(
                                  FontAwesomeIcons.dhl,
                                  size: 70,
                                  color: Color(0xFFBF190E),
                                ),
                              ],
                            ),
                            const SizedBox(width: 16.0),
                            Text(
                              'Fast (2-3days)',
                              style: GoogleFonts.nunitoSans(
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF303030),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 16.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      margin: const EdgeInsets.only(top: 8.0, bottom: 26.0),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Order:',
                                  style: GoogleFonts.nunitoSans(
                                    fontSize: 18.0,
                                    color: const Color(0xFF808080),
                                  ),
                                ),
                                Text(
                                  '\$ 95.00',
                                  style: GoogleFonts.nunitoSans(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF242424),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Delivery:',
                                  style: GoogleFonts.nunitoSans(
                                    fontSize: 18.0,
                                    color: const Color(0xFF808080),
                                  ),
                                ),
                                Text(
                                  '\$ 5.00',
                                  style: GoogleFonts.nunitoSans(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF242424),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total:',
                                  style: GoogleFonts.nunitoSans(
                                    fontSize: 18.0,
                                    color: const Color(0xFF808080),
                                  ),
                                ),
                                Text(
                                  '\$ 100.00',
                                  style: GoogleFonts.nunitoSans(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFF242424),
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
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        'success/', (Route<dynamic> route) => false);
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 10.0,
                    fixedSize: const Size(160, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text(
                    'SUBMIT ORDER',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 20.0,
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
