import 'package:flutter/material.dart';
import 'package:furniture_shopping/widgets/color_button.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 80.0),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                  ),
                  child: Image.asset(
                    'assets/images/stand.jpeg',
                    height: 500.0,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: 70.0,
                  left: -20,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(6.0),
                      child: Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_new_sharp,
                          color: Color(0XFF242424),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 100.0,
                  left: -30,
                  child: Material(
                    elevation: 10.0,
                    borderRadius: BorderRadius.circular(40.0),
                    child: Container(
                      height: 200.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            ColorButton(
                              color: Colors.white,
                              selected: true,
                            ),
                            ColorButton(
                              color: Color(0xFFB4916C),
                              selected: false,
                            ),
                            ColorButton(
                              color: Color(0xFFE4CBAD),
                              selected: false,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(top: 20.0),
                padding: const EdgeInsets.symmetric(horizontal: 26.0),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Minimal Stand',
                      style: GoogleFonts.gelasio(
                        fontSize: 26.0,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF242424),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$ 50',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF242424),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: const Color(0xFFE0E0E0),
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Color(0XFF242424),
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Text(
                                  '01',
                                  style: GoogleFonts.nunitoSans(
                                    color: const Color(0XFF242424),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: const Color(0xFFE0E0E0),
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              child: const Icon(
                                Icons.remove,
                                color: Color(0XFF242424),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed('reviews/');
                          },
                          child: Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Color(0xFFF2C94C),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 4.0,
                                  right: 16.0,
                                ),
                                child: Text(
                                  '4.5',
                                  style: GoogleFonts.nunitoSans(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFF303030),
                                  ),
                                ),
                              ),
                              Text(
                                '(50 reviews)',
                                style: GoogleFonts.nunitoSans(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFF808080),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home. ',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 14.0,
                            color: const Color(0xFF606060),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(bottom: 10.0),
              padding: const EdgeInsets.symmetric(horizontal: 26.0),
              child: Row(
                children: [
                  Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF0F0F0),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Icon(Icons.bookmark_outline),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: SizedBox(
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
                          'Add to cart',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
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
