import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  String cardHolder = '';
  String cardNumber = '';
  String expiyDate = '';
  String cvv = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Add payment method',
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CreditCardWidget(
                      cardNumber: cardNumber,
                      expiryDate: expiyDate,
                      cardHolderName: cardHolder,
                      cvvCode: cvv,
                      showBackView: false,
                      isChipVisible: true,
                      isHolderNameVisible: true,
                      obscureCardCvv: false,
                      obscureCardNumber: false,
                      cardType: CardType.mastercard,
                      glassmorphismConfig: Glassmorphism(
                        blurX: 10.0,
                        blurY: 10.0,
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            const Color(0xFF101010),
                            const Color(0xFF151515).withAlpha(210),
                            const Color(0xFF303030).withAlpha(240),
                          ],
                          stops: const <double>[
                            0.4,
                            0.7,
                            0,
                          ],
                        ),
                      ),
                      onCreditCardWidgetChange: (brand) {},
                    ),
                    CreditCardForm(
                      formKey: _key,
                      onCreditCardModelChange: (CreditCardModel data) {
                        setState(() {
                          cardHolder = data.cardHolderName;
                          cardNumber = data.cardNumber;
                          expiyDate = data.expiryDate;
                          cvv = data.cvvCode;
                        });
                      }, // Required
                      themeColor: Colors.red,
                      onFormComplete: () {},
                      cardNumberDecoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Number',
                        hintText: 'XXXX XXXX XXXX XXXX',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF242424),
                          ),
                        ),
                        floatingLabelStyle: TextStyle(
                          color: Color(0xFF808080),
                        ),
                      ),
                      expiryDateDecoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Expiration Date',
                        hintText: 'XX/XX',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF242424),
                          ),
                        ),
                        floatingLabelStyle: TextStyle(
                          color: Color(0xFF808080),
                        ),
                      ),
                      cvvCodeDecoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'CVV',
                        hintText: 'Ex: 123',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF242424),
                          ),
                        ),
                        floatingLabelStyle: TextStyle(
                          color: Color(0xFF808080),
                        ),
                      ),
                      cardHolderDecoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Card Holder Name',
                        hintText: 'Ex: Bruno Pham',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF242424),
                          ),
                        ),
                        floatingLabelStyle: TextStyle(
                          color: Color(0xFF808080),
                        ),
                      ),

                      cardHolderName: cardHolder,
                      cardNumber: cardNumber,
                      cvvCode: cvv,
                      expiryDate: expiyDate,
                      cursorColor: const Color(0xFF242424),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 30.0),
              child: ElevatedButton(
                onPressed: () {
                  _key.currentState!.validate();
                },
                style: ElevatedButton.styleFrom(
                  elevation: 5.0,
                  fixedSize: const Size(160, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text(
                  'ADD NEW CARD',
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
    );
  }
}
