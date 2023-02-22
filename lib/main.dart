import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_shopping/screens/address_screen.dart';
import 'package:furniture_shopping/screens/cart_screen.dart';
import 'package:furniture_shopping/screens/checkout_screen.dart';
import 'package:furniture_shopping/screens/home_screen.dart';
import 'package:furniture_shopping/screens/login_screen.dart';
import 'package:furniture_shopping/screens/my_reviews_screen.dart';
import 'package:furniture_shopping/screens/orders_screen.dart';
import 'package:furniture_shopping/screens/payment_method_screen.dart';
import 'package:furniture_shopping/screens/payment_screen.dart';
import 'package:furniture_shopping/screens/product_detail_screen.dart';
import 'package:furniture_shopping/screens/reviews_screen.dart';
import 'package:furniture_shopping/screens/settings_screen.dart';
import 'package:furniture_shopping/screens/shipping_address_screen.dart';
import 'package:furniture_shopping/screens/signup_screen.dart';
import 'package:furniture_shopping/screens/success_screen.dart';
import 'package:furniture_shopping/screens/welcome_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF242424),
            ),
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color(0xFF303030),
              side: const BorderSide(
                width: 1.0,
                color: Color(0xFF303030),
              ),
              textStyle: GoogleFonts.nunitoSans(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: const Color(0xFF303030),
            ),
          ),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Colors.white,
            elevation: 50.0,
          ),
          colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: const Color(0xFF303030),
          ),
        ),
        home: const WelcomeScreen(),
        routes: {
          'home/': (context) => const HomeScreen(),
          'login/': (context) => const LoginScreen(),
          'signup/': (context) => const SignupScreen(),
          'cart/': (context) => CartScreen(),
          'checkout/': (context) => const CheckoutScreen(),
          'success/': (context) => const SuccessScreen(),
          'product-detail/': (context) => const ProductDetailScreen(),
          'reviews/': (context) => ReviewsScreen(),
          'orders/': (context) => const OrdersScreen(),
          'shipping-address/': (context) => const AddressScreen(),
          'payment-method/': (context) => const PaymentScreen(),
          'my-reviews/': (context) => const MyReviewsScreen(),
          'settings/': (context) => const SettingsScreen(),
          'add-payment/': (context) => const PaymentMethodScreen(),
          'add-address/': (context) => const ShippingAddressSceen(),
        });
  }
}
