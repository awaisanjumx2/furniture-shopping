import 'package:flutter/material.dart';
import 'package:furniture_shopping/widgets/my_review_card.dart';
import 'package:google_fonts/google_fonts.dart';

class MyReviewsScreen extends StatelessWidget {
  const MyReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'My reviews',
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
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.search,
              color: Color(0xFF242424),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
            itemBuilder: (context, index) => const MyReviewCard(),
            separatorBuilder: (context, index) => const SizedBox(height: 16.0),
            itemCount: 4),
      ),
    );
  }
}
