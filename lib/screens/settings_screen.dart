import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _sales = true;
  bool _newArrivals = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Settings',
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Personal Information',
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
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Material(
                        elevation: 30,
                        shadowColor: Colors.black38,
                        child: ListTile(
                          title: Text(
                            'Name',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 14.0,
                              color: const Color(0xFF808080),
                            ),
                          ),
                          subtitle: Text(
                            'Bruno Pham',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF242424),
                            ),
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
                          title: Text(
                            'Email',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 14.0,
                              color: const Color(0xFF808080),
                            ),
                          ),
                          subtitle: Text(
                            'bruno203@gmail.com',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF242424),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Password',
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
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Material(
                        elevation: 30,
                        shadowColor: Colors.black38,
                        child: ListTile(
                          title: Text(
                            'Current Password',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 14.0,
                              color: const Color(0xFF808080),
                            ),
                          ),
                          subtitle: Text(
                            '***************',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF242424),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Notifications',
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
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Material(
                        elevation: 30,
                        shadowColor: Colors.black38,
                        child: ListTile(
                          title: Text(
                            'Sales',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF242424),
                            ),
                          ),
                          trailing: Switch.adaptive(
                            value: _sales,
                            onChanged: (value) {
                              setState(() {
                                _sales = value;
                              });
                            },
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
                          title: Text(
                            'New arrivals',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF242424),
                            ),
                          ),
                          trailing: Switch.adaptive(
                            value: _newArrivals,
                            onChanged: (value) {
                              setState(() {
                                _newArrivals = value;
                              });
                            },
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
                          title: Text(
                            'Delivery status changes',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF242424),
                            ),
                          ),
                          trailing: const Switch.adaptive(
                            value: false,
                            onChanged: null,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Help Center',
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
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Material(
                        elevation: 30,
                        shadowColor: Colors.black38,
                        child: ListTile(
                          title: Text(
                            'FAQ',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF242424),
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
      ),
    );
  }
}
