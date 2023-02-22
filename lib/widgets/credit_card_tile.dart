import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:google_fonts/google_fonts.dart';

class CreditCardTile extends StatefulWidget {
  const CreditCardTile({super.key, required this.selected});

  final bool selected;

  @override
  State<CreditCardTile> createState() => _CreditCardTileState();
}

class _CreditCardTileState extends State<CreditCardTile> {
  bool _selected = false;

  @override
  void initState() {
    super.initState();
    _selected = widget.selected;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: '5450 7879 4864 7854',
          expiryDate: '05/27',
          cardHolderName: 'Jennyfer Doe',
          cvvCode: '997',
          showBackView: false,
          isChipVisible: true,
          isHolderNameVisible: true,
          cardType: CardType.mastercard,
          glassmorphismConfig: _selected
              ? Glassmorphism(
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
                )
              : null,
          cardBgColor: const Color(0xFF999999),
          onCreditCardWidgetChange: (brand) {},
        ),
        CheckboxListTile(
          value: _selected,
          controlAffinity: ListTileControlAffinity.leading,
          activeColor: const Color(0xFF303030),
          checkboxShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          contentPadding: const EdgeInsets.all(0.0),
          title: Text(
            'Use as default payment method',
            style: GoogleFonts.nunitoSans(
              fontSize: 18.0,
              color:
                  _selected ? const Color(0xFF242424) : const Color(0xFF999999),
            ),
          ),
          onChanged: (value) {
            setState(() {
              _selected = value!;
            });
          },
        ),
      ],
    );
  }
}
