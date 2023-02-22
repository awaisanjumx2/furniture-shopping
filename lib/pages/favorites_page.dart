import 'package:flutter/material.dart';
import 'package:furniture_shopping/widgets/favorite_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoritesPage extends StatelessWidget {
  FavoritesPage({super.key});

  final _favorites = [
    {
      'name': 'Black Simple Lamp',
      'price': 12.0,
      'image': 'assets/images/lamp.jpeg'
    },
    {
      'name': 'Minimal Stand',
      'price': 25.0,
      'image': 'assets/images/stand.jpeg'
    },
    {
      'name': 'Black Simple Lamp',
      'price': 12.0,
      'image': 'assets/images/lamp.jpeg'
    },
    {
      'name': 'Minimal Stand',
      'price': 25.0,
      'image': 'assets/images/stand.jpeg'
    },
    {
      'name': 'Black Simple Lamp',
      'price': 12.0,
      'image': 'assets/images/lamp.jpeg'
    },
    {
      'name': 'Minimal Stand',
      'price': 25.0,
      'image': 'assets/images/stand.jpeg'
    },
    {
      'name': 'Black Simple Lamp',
      'price': 12.0,
      'image': 'assets/images/lamp.jpeg'
    },
    {
      'name': 'Minimal Stand',
      'price': 25.0,
      'image': 'assets/images/stand.jpeg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Favorites',
          style: GoogleFonts.merriweather(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF303030),
          ),
        ),
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.search,
          color: Color(0xFF242424),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('cart/');
              },
              child: const Icon(
                Icons.shopping_cart_outlined,
                color: Color(0xFF242424),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: ListView.separated(
                padding: const EdgeInsets.only(bottom: 50.0),
                itemCount: _favorites.length,
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                  height: 2,
                  color: Color(0xFF232323),
                ),
                itemBuilder: (BuildContext context, int index) {
                  return FavoriteTile(
                    name: _favorites[index]['name'] as String,
                    price: _favorites[index]['price'] as double,
                    image: _favorites[index]['image'] as String,
                  );
                },
              ),
            ),
            Positioned(
              bottom: -5,
              left: 0,
              width: size.width - 30,
              child: Padding(
                padding: const EdgeInsets.only(right: 2.0),
                child: SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 8.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Text(
                      'Add all to my cart',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
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
