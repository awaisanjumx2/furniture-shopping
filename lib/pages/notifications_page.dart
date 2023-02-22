import 'package:flutter/material.dart';
import 'package:furniture_shopping/widgets/notification_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Notifications',
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
      ),
      body: ListView(
        children: const [
          NotificationTile(
            image: 'assets/images/stand.jpeg',
            body:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. ',
            title: 'Your order #123456789 has been confirmed',
            newNotification: true,
          ),
          NotificationTile(
              image: 'assets/images/lamp.jpeg',
              body:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. ',
              title: 'Your order #123456789 has been canceled',
              newNotification: false),
          NotificationTile(
            body:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. ',
            title: 'Your order #123456789 has been canceled',
            newNotification: false,
          ),
        ],
      ),
    );
  }
}
