import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  bool _passVisible = false;
  bool _cPassVisible = false;

  String _passwod = '';

  void _validateSignup() {
    if (_formKey.currentState!.validate()) {
      Navigator.of(context).pushReplacementNamed('login/');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Flexible(
                      flex: 1,
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Image.asset(
                        'assets/images/fs-logo.png',
                        width: 65.0,
                        height: 65.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Flexible(
                      flex: 1,
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'WELCOME',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.merriweather(
                          color: const Color(0xFF303030),
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      Card(
                        elevation: 10.0,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 26.0),
                          child: Column(
                            children: [
                              Form(
                                key: _formKey,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 16.0,
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          focusedBorder:
                                              const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF242424),
                                            ),
                                          ),
                                          enabledBorder:
                                              const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFE0E0E0),
                                            ),
                                          ),
                                          label: const Text('Name'),
                                          labelStyle: GoogleFonts.nunitoSans(
                                            color: const Color(0xFF909090),
                                            fontSize: 18.0,
                                          ),
                                        ),
                                        cursorColor: const Color(0xFF242424),
                                        validator: RequiredValidator(
                                          errorText: 'Name should not be empty',
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 16.0,
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          focusedBorder:
                                              const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF242424),
                                            ),
                                          ),
                                          enabledBorder:
                                              const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFE0E0E0),
                                            ),
                                          ),
                                          label: const Text('Email'),
                                          labelStyle: GoogleFonts.nunitoSans(
                                            color: const Color(0xFF909090),
                                            fontSize: 18.0,
                                          ),
                                        ),
                                        cursorColor: const Color(0xFF242424),
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        validator: MultiValidator([
                                          EmailValidator(
                                            errorText: 'Invalid email',
                                          ),
                                          RequiredValidator(
                                              errorText: 'Email is required')
                                        ]),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 16.0,
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          focusedBorder:
                                              const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF242424),
                                            ),
                                          ),
                                          enabledBorder:
                                              const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFE0E0E0),
                                            ),
                                          ),
                                          focusColor: const Color(0xFF242424),
                                          label: const Text('Password'),
                                          labelStyle: GoogleFonts.nunitoSans(
                                            color: const Color(0xFF909090),
                                            fontSize: 18.0,
                                          ),
                                          suffixIcon: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                _passVisible = !_passVisible;
                                              });
                                            },
                                            icon: Icon(
                                              _passVisible
                                                  ? Icons.visibility
                                                  : Icons.visibility_off,
                                              color: const Color(0xFF242424),
                                            ),
                                          ),
                                        ),
                                        enableSuggestions: false,
                                        obscureText: _passVisible,
                                        obscuringCharacter: '*',
                                        cursorColor: const Color(0xFF242424),
                                        onChanged: (value) {
                                          _passwod = value;
                                        },
                                        validator: MultiValidator([
                                          RequiredValidator(
                                            errorText: 'Please enter password',
                                          ),
                                          MinLengthValidator(
                                            8,
                                            errorText:
                                                'Password must be minimum 8 characters long',
                                          ),
                                        ]),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 16.0,
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          focusedBorder:
                                              const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF242424),
                                            ),
                                          ),
                                          enabledBorder:
                                              const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFE0E0E0),
                                            ),
                                          ),
                                          focusColor: const Color(0xFF242424),
                                          label: const Text('Confirm Password'),
                                          labelStyle: GoogleFonts.nunitoSans(
                                            color: const Color(0xFF909090),
                                            fontSize: 18.0,
                                          ),
                                          suffixIcon: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                _cPassVisible = !_cPassVisible;
                                              });
                                            },
                                            icon: Icon(
                                              _cPassVisible
                                                  ? Icons.visibility
                                                  : Icons.visibility_off,
                                              color: const Color(0xFF242424),
                                            ),
                                          ),
                                        ),
                                        enableSuggestions: false,
                                        obscureText: _cPassVisible,
                                        obscuringCharacter: '*',
                                        cursorColor: const Color(0xFF242424),
                                        validator: (value) => MatchValidator(
                                          errorText: 'Passwords must match',
                                        ).validateMatch(value!, _passwod),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 26.0),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: _validateSignup,
                                  style: ElevatedButton.styleFrom(
                                    elevation: 5.0,
                                    fixedSize: const Size(160, 60),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  child: Text(
                                    'SIGN UP',
                                    style: GoogleFonts.nunitoSans(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 26.0,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Already have account? ',
                                        style: GoogleFonts.nunitoSans(
                                          color: const Color(0xFF808080),
                                          fontSize: 17.0,
                                        ),
                                      ),
                                      TextSpan(
                                          text: 'SIGN IN',
                                          style: GoogleFonts.nunitoSans(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 18.0,
                                              color: const Color(0xFF303030)),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              Navigator.of(context)
                                                  .pushReplacementNamed(
                                                      'login/');
                                            }),
                                    ],
                                  ),
                                ),
                              ),
                            ],
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
      ),
    );
  }
}
