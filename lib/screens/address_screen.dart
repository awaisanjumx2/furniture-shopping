import 'package:flutter/material.dart';
import 'package:furniture_shopping/widgets/address_card.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedAddress = 0;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Shipping address',
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
        child: ListView.separated(
          itemCount: 4,
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(height: 30.0),
          itemBuilder: (BuildContext context, int index) => AddressCard(
            selected: selectedAddress == index,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('add-address/');
        },
        child: const Icon(
          Icons.add,
          color: Color(0xFF0D1C2E),
        ),
      ),
    );
  }
}
