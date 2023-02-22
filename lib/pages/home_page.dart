import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furniture_shopping/widgets/product_tile.dart';
import 'package:furniture_shopping/widgets/type_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "Make home",
              style: GoogleFonts.gelasio(
                fontSize: 24.0,
                color: const Color(0xFF909090),
              ),
              children: <TextSpan>[
                TextSpan(
                  text: '\nBEAUTIFUL',
                  style: GoogleFonts.gelasio(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF242424)),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.search,
          color: Color(0xFF808080),
          size: 30.0,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('cart/');
              },
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Color(0xFF808080),
                size: 30.0,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 80.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: const [
                  TypeTile(
                    title: 'Popular',
                    icon: Icons.star,
                    selected: true,
                  ),
                  TypeTile(
                    title: 'Chair',
                    icon: FontAwesomeIcons.chair,
                    selected: false,
                  ),
                  TypeTile(
                    title: 'Table',
                    icon: Icons.desk_outlined,
                    selected: false,
                  ),
                  TypeTile(
                    title: 'Armchair',
                    icon: FontAwesomeIcons.couch,
                    selected: false,
                  ),
                  TypeTile(
                    title: 'Bed',
                    icon: Icons.bed,
                    selected: false,
                  ),
                  TypeTile(
                    title: 'Lamp',
                    icon: FontAwesomeIcons.lightbulb,
                    selected: false,
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 4,
              child: SizedBox(
                width: double.infinity,
                height: 1000,
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 20.0,
                    childAspectRatio: 2 / 3,
                  ),
                  children: const [
                    ProductTile(
                      name: 'Black Simple Lamp',
                      price: 12.0,
                      image: 'assets/images/lamp.jpeg',
                    ),
                    ProductTile(
                      name: 'Minimal Stand',
                      price: 25.0,
                      image: 'assets/images/stand.jpeg',
                    ),
                    ProductTile(
                      name: 'Black Simple Lamp',
                      price: 12.0,
                      image: 'assets/images/lamp.jpeg',
                    ),
                    ProductTile(
                      name: 'Black Simple Lamp',
                      price: 12.0,
                      image: 'assets/images/lamp.jpeg',
                    ),
                    ProductTile(
                      name: 'Black Simple Lamp',
                      price: 12.0,
                      image: 'assets/images/lamp.jpeg',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
