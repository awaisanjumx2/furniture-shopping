import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressCard extends StatefulWidget {
  const AddressCard({super.key, required this.selected});
  final bool selected;

  @override
  State<AddressCard> createState() => _AddressCardState();
}

class _AddressCardState extends State<AddressCard> {
  late bool _seleted;

  @override
  void initState() {
    super.initState();
    _seleted = widget.selected;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CheckboxListTile(
          value: _seleted,
          controlAffinity: ListTileControlAffinity.leading,
          activeColor: const Color(0xFF303030),
          checkboxShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          contentPadding: const EdgeInsets.all(0.0),
          title: Text(
            'Use as the shipping address',
            style: GoogleFonts.nunitoSans(
              fontSize: 18.0,
              color:
                  _seleted ? const Color(0xFF242424) : const Color(0xFF999999),
            ),
          ),
          onChanged: (value) {
            setState(() {
              _seleted = value!;
            });
          },
        ),
        SizedBox(
          child: Card(
            elevation: 16.0,
            shadowColor: Colors.black38,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            borderOnForeground: false,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Bruno Fernandes',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF242424),
                        ),
                      ),
                      const Icon(
                        Icons.mode_edit_outline,
                        color: Color(0xFF242424),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  height: 1,
                  color: Color(0xFF606060),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    '25 rue Robert Latouche, Nice, 06200, Côte D’azur, France',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 14.0,
                      color: const Color(0xFF808080),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
