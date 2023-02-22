import 'package:flutter/material.dart';
import 'package:furniture_shopping/widgets/cart_item_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  final _cartItems = [
    {
      'name': 'Black Simple Lamp',
      'price': 12.0,
      'quantity': 4,
      'image': 'assets/images/lamp.jpeg'
    },
    {
      'name': 'Minimal Stand',
      'price': 25.0,
      'quantity': 12,
      'image': 'assets/images/stand.jpeg'
    },
    {
      'name': 'Black Simple Lamp',
      'price': 12.0,
      'quantity': 1,
      'image': 'assets/images/lamp.jpeg'
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
          'My cart',
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
            children: [
              SizedBox(
                height: size.height - (size.height / 2.7),
                child: ListView.separated(
                  itemCount: _cartItems.length,
                  padding: const EdgeInsets.only(bottom: 30.0),
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(
                    height: 2,
                    color: Color(0xFF232323),
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return CartItemTile(
                      name: _cartItems[index]['name'] as String,
                      price: _cartItems[index]['price'] as double,
                      quantity: _cartItems[index]['quantity'] as int,
                      image: _cartItems[index]['image'] as String,
                    );
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20.0, top: 16.0),
                child: Column(
                  children: [
                    TextFormField(
                      cursorColor: const Color(0xFF242424),
                      decoration: InputDecoration(
                        hintStyle: GoogleFonts.nunitoSans(
                          fontSize: 16.0,
                          color: const Color(0xFF999999),
                        ),
                        hintText: 'Enter your promo code',
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFF242424),
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        contentPadding: const EdgeInsets.only(left: 8.0),
                        suffixIcon: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          child: const Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 16.0),
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total:',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF808080),
                            ),
                          ),
                          Text(
                            '\$ 95.00',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF303030),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('checkout/');
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 10.0,
                          fixedSize: const Size(160, 60),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: Text(
                          'Check out',
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
            ],
          ),
        ),
      ),
    );
  }
}
