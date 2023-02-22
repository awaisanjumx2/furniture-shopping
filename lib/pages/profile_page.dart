import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Profile',
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
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.logout_outlined,
              color: Color(0xFF242424),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage('assets/images/dummy2.jpeg'),
                ),
                const SizedBox(width: 16.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bruno Pham',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF303030),
                      ),
                    ),
                    Text(
                      'bruno203@gmail.com',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 14.0,
                        color: const Color(0xFF808080),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Material(
                      elevation: 30,
                      shadowColor: Colors.black38,
                      child: ListTile(
                        onTap: () {
                          Navigator.of(context).pushNamed('orders/');
                        },
                        title: Text(
                          'My orders',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF242424),
                          ),
                        ),
                        subtitle: Text(
                          'Already have 10 orders',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 14.0,
                            color: const Color(0xFF808080),
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF242424),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Material(
                      elevation: 30,
                      shadowColor: Colors.black38,
                      child: ListTile(
                        onTap: () {
                          Navigator.of(context).pushNamed('shipping-address/');
                        },
                        title: Text(
                          'Shipping Addresses',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF242424),
                          ),
                        ),
                        subtitle: Text(
                          '03 Addresses',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 14.0,
                            color: const Color(0xFF808080),
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF242424),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Material(
                      elevation: 30,
                      shadowColor: Colors.black38,
                      child: ListTile(
                        onTap: () {
                          Navigator.of(context).pushNamed('payment-method/');
                        },
                        title: Text(
                          'Payment Method',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF242424),
                          ),
                        ),
                        subtitle: Text(
                          'You have 2 cards',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 14.0,
                            color: const Color(0xFF808080),
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF242424),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Material(
                      elevation: 30,
                      shadowColor: Colors.black38,
                      child: ListTile(
                        onTap: () {
                          Navigator.of(context).pushNamed('my-reviews/');
                        },
                        title: Text(
                          'My reviews',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF242424),
                          ),
                        ),
                        subtitle: Text(
                          'Reviews for 5 items',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 14.0,
                            color: const Color(0xFF808080),
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF242424),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Material(
                      elevation: 30,
                      shadowColor: Colors.black38,
                      child: ListTile(
                        onTap: () {
                          Navigator.of(context).pushNamed('settings/');
                        },
                        title: Text(
                          'Setting',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF242424),
                          ),
                        ),
                        subtitle: Text(
                          'Notification, Password, FAQ, Contact',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 14.0,
                            color: const Color(0xFF808080),
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF242424),
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
    );
  }
}
