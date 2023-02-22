import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShippingAddressSceen extends StatefulWidget {
  const ShippingAddressSceen({super.key});

  @override
  State<ShippingAddressSceen> createState() => _ShippingAddressSceenState();
}

class _ShippingAddressSceenState extends State<ShippingAddressSceen> {
  String countryValue = "";
  String? stateValue = "";
  String? cityValue = "";
  int _focused = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Add shipping address',
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
            color: Color(0xFF303030),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(bottom: 30.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Form(
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.bottomLeft,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                color: _focused != 1
                                    ? const Color(0xFFF5F5F5)
                                    : null,
                              ),
                              height: 75,
                              child: TextFormField(
                                cursorColor: const Color(0xFF242424),
                                decoration: InputDecoration(
                                  labelText: 'Full name',
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  floatingLabelStyle: GoogleFonts.nunitoSans(
                                    fontSize: 20.0,
                                    color: const Color(0xFF808080),
                                  ),
                                  labelStyle: GoogleFonts.nunitoSans(
                                    fontSize: 20.0,
                                    color: const Color(0xFF808080),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                    borderSide: const BorderSide(
                                      color: Color(0xFFF5F5F5),
                                    ),
                                  ),
                                  hintText: 'Ex: Bruno Pham',
                                  hintStyle: GoogleFonts.nunitoSans(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  fillColor: const Color(0xFFF5F5F5),
                                  filled: _focused != 1,
                                ),
                                onTap: () {
                                  setState(() {
                                    _focused = 1;
                                  });
                                },
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              alignment: Alignment.bottomLeft,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                color: _focused != 2
                                    ? const Color(0xFFF5F5F5)
                                    : null,
                              ),
                              height: 75,
                              child: TextFormField(
                                cursorColor: const Color(0xFF242424),
                                decoration: InputDecoration(
                                  labelText: 'Address',
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  floatingLabelStyle: GoogleFonts.nunitoSans(
                                    fontSize: 20.0,
                                    color: const Color(0xFF808080),
                                  ),
                                  labelStyle: GoogleFonts.nunitoSans(
                                    fontSize: 20.0,
                                    color: const Color(0xFF808080),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                    borderSide: const BorderSide(
                                      color: Color(0xFFF5F5F5),
                                    ),
                                  ),
                                  hintText: 'Ex: 25 Robert Latouche Street',
                                  hintStyle: GoogleFonts.nunitoSans(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  fillColor: const Color(0xFFF5F5F5),
                                  filled: _focused != 2,
                                ),
                                onTap: () {
                                  setState(() {
                                    _focused = 2;
                                  });
                                },
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              alignment: Alignment.bottomLeft,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                color: _focused != 3
                                    ? const Color(0xFFF5F5F5)
                                    : null,
                              ),
                              height: 75,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                cursorColor: const Color(0xFF242424),
                                decoration: InputDecoration(
                                  labelText: 'Zipcode (Postal Code)',
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  floatingLabelStyle: GoogleFonts.nunitoSans(
                                    fontSize: 20.0,
                                    color: const Color(0xFF808080),
                                  ),
                                  labelStyle: GoogleFonts.nunitoSans(
                                    fontSize: 20.0,
                                    color: const Color(0xFF808080),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                    borderSide: const BorderSide(
                                      color: Color(0xFFF5F5F5),
                                    ),
                                  ),
                                  hintText: 'Ex: 34350',
                                  hintStyle: GoogleFonts.nunitoSans(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  fillColor: const Color(0xFFF5F5F5),
                                  filled: _focused != 3,
                                ),
                                onTap: () {
                                  setState(() {
                                    _focused = 3;
                                  });
                                },
                                onEditingComplete: () {
                                  setState(() {
                                    _focused = 0;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      CSCPicker(
                        showStates: true,
                        showCities: true,
                        flagState: CountryFlag.DISABLE,
                        layout: Layout.vertical,
                        onCountryChanged: (value) {
                          setState(() {
                            countryValue = value;
                            _focused = 0;
                          });
                        },
                        onStateChanged: (value) {
                          setState(() {
                            stateValue = value;
                            _focused = 0;
                          });
                        },
                        onCityChanged: (value) {
                          setState(() {
                            cityValue = value;
                            _focused = 0;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 30.0),
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
                  'SAVE ADDRESS',
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
    );
  }
}
