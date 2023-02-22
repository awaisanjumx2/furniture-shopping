import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  bool _passVisible = false;

  void _validateLogin() {
    if (_formKey.currentState!.validate()) {
      Navigator.of(context).pushReplacementNamed('home/');
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
                        'Hello !',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.merriweather(
                          color: const Color(0xFF909090),
                          fontSize: 30,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        'WELCOME BACK',
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
                                            label: const Text('Email'),
                                            labelStyle: GoogleFonts.nunitoSans(
                                              color: const Color(0xFF909090),
                                              fontSize: 18.0,
                                            ),
                                          ),
                                          cursorColor: const Color(0xFF242424),
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
                                          obscureText: true,
                                          obscuringCharacter: '*',
                                          cursorColor: const Color(0xFF242424),
                                          validator: RequiredValidator(
                                            errorText: 'Please enter password',
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Forgot Password',
                                    style:
                                        GoogleFonts.nunitoSans(fontSize: 18.0),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: _validateLogin,
                                  style: ElevatedButton.styleFrom(
                                    elevation: 5.0,
                                    fixedSize: const Size(160, 60),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  child: Text(
                                    'Log in',
                                    style: GoogleFonts.nunitoSans(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushReplacementNamed('signup/');
                                  },
                                  child: Text(
                                    'SIGN UP',
                                    style:
                                        GoogleFonts.nunitoSans(fontSize: 18.0),
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
