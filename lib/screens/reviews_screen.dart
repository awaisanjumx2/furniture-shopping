import 'package:flutter/material.dart';
import 'package:furniture_shopping/widgets/review_card.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewsScreen extends StatelessWidget {
  ReviewsScreen({super.key});

  final _reviews = [
    {
      'image': 'assets/images/dummy.jpeg',
      'name': 'Bruno Fernandes',
      'rating': 4.2,
      'date': '22/03/2020',
      'review':
          'Nice Furniture with good delivery. The delivery time is very fast. Then products look like exactly the picture in the app. Besides, color is also the same and quality is very good despite very cheap price'
    },
    {
      'image': 'assets/images/stand.jpeg',
      'name': 'Tracy Mosby',
      'rating': 5.0,
      'date': '20/03/2020',
      'review':
          'Nice Furniture with good delivery. The delivery time is very fast. Then products look like exactly the picture in the app. Besides, color is also the same and quality is very good despite very cheap price'
    },
    {
      'image': 'assets/images/dummy.jpeg',
      'name': 'Bruno Fernandes',
      'rating': 4.2,
      'date': '22/03/2020',
      'review':
          'Nice Furniture with good delivery. The delivery time is very fast. Then products look like exactly the picture in the app. Besides, color is also the same and quality is very good despite very cheap price'
    },
    {
      'image': 'assets/images/stand.jpeg',
      'name': 'Tracy Mosby',
      'rating': 5.0,
      'date': '20/03/2020',
      'review':
          'Nice Furniture with good delivery. The delivery time is very fast. Then products look like exactly the picture in the app. Besides, color is also the same and quality is very good despite very cheap price'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Rating & Review',
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
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        'assets/images/stand.jpeg',
                        width: 100.0,
                        height: 100.0,
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Minimal Stand',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 14.0,
                            color: const Color(0xFF242424),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow.shade700,
                            ),
                            const SizedBox(width: 10.0),
                            Text(
                              '4.5',
                              style: GoogleFonts.nunitoSans(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '10 reviews',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                const Divider(
                  color: Color(0xFF909090),
                  height: 2.0,
                ),
                Expanded(
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    itemCount: _reviews.length,
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(height: 30),
                    itemBuilder: (BuildContext context, int index) {
                      return ReviewCard(
                        name: _reviews[index]['name'] as String,
                        rating: _reviews[index]['rating'] as double,
                        date: _reviews[index]['date'] as String,
                        review: _reviews[index]['review'] as String,
                        image: _reviews[index]['image'] as String,
                      );
                    },
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(bottom: 25.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 5.0,
                      fixedSize: const Size(160, 55),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Text(
                      'Write a review',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
