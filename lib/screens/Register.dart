import 'package:flutter/material.dart';

import '../general/SizedBox.dart';
import 'Homev1.dart';
import 'RegisterActive1.dart';
import 'VerificationActive.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  bool _passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),
                  positionedMethod(
                    355.0,
                    15.0,
                    imagesMethod('assets/images/pepper1.png', 30.0, 30.0),
                  ),
                  positionedMethod(
                    320.0,
                    45.0,
                    imagesMethod('assets/images/chilipepper1.png', 32.0, 32.0),
                  ),
                  positionedMethod(
                    100.08,
                    100.66,
                    Column(
                      children: [
                        text1Methode(
                            'Welcome Back',
                            colorsMethod(
                              Color.fromRGBO(68, 66, 81, 1),
                            ),
                            24.0,
                            bold: FontWeight.bold),
                        text1Methode(
                            'to Foodish', Color.fromRGBO(68, 66, 81, 1), 24.0,
                            bold: FontWeight.bold),
                        SizedBox1(h: 18.0),
                        text1Methode(
                          'Hello there, sign in to continue!',
                          colorsMethod(
                            Color.fromRGBO(108, 114, 127, 1),
                          ),
                          14.0,
                        ),
                      ],
                    ),
                  ),
                  positionedMethod(
                    0.0,
                    250.0,
                    Container(
                      width: 400,
                      height: 220,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 27.0),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              textFormField(
                                  maxHeight: 70.0,
                                  maxWidth: 360.0,
                                  keyboardType: TextInputType.emailAddress,
                                  circular: 24.0,
                                  circular1: 24.0,
                                  lable: Container(
                                      width: 119.57,
                                      height: 26.56,
                                      color: Colors.white,
                                      child: Center(
                                        child: text1Methode(
                                          'Email Address',
                                          colorsMethod(
                                            Color.fromRGBO(255, 152, 1, 1),
                                          ),
                                          15.0,
                                        ),
                                      )),
                                  fillColor: Colors.transparent,
                                  filled: true,
                                  obscureText1: false,
                                  maxLines: 1,
                                  minLines: 1,
                                  prefixIcon: imagesMethod(
                                      'assets/images/IconL.png', 26.0, 26.0),
                                  outbordercolor: Colors.transparent,
                                  hintText: 'Enter your email address',
                                  borderColor: Colors.orange,
                                  hintfontSize: 16.0,
                                  hintfontWeight: FontWeight.w400,
                                  hintStylecolor: Colors.grey,
                                  borderwidth: 2.0,
                                  BorderStyle: BorderStyle.solid),
                              SizedBox1(h: 20.0),
                              textFormField(
                                  maxHeight: 70.0,
                                  maxWidth: 360.0,
                                  keyboardType: TextInputType.number,
                                  circular: 24.0,
                                  circular1: 24.0,
                                  lable: Container(
                                      width: 119.57,
                                      height: 26.56,
                                      color: Colors.white,
                                      child: Center(
                                        child: text1Methode(
                                          'Password',
                                          colorsMethod(
                                            Color.fromRGBO(255, 152, 1, 1),
                                          ),
                                          15.0,
                                        ),
                                      )),
                                  fillColor: Colors.transparent,
                                  filled: true,
                                  obscureText1: false,
                                  maxLines: 1,
                                  suffixIcon: Container(
                                    width: 120,
                                    height: 20,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: ((context) =>
                                                          RegisterActive1())));
                                            },
                                            child: text1Methode(
                                                'Forget?', Colors.orange, 14.0,
                                                bold: FontWeight.bold)),
                                        IconButton(
                                          icon: Icon(
                                            _passwordVisible
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                            color: const Color.fromARGB(
                                                211, 213, 218, 240),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _passwordVisible =
                                                  !_passwordVisible;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  minLines: 1,
                                  prefixIcon: imagesMethod(
                                      'assets/images/Lock.png', 26.0, 26.0),
                                  outbordercolor: Colors.transparent,
                                  hintText: 'Enter your password',
                                  borderColor: Colors.orange,
                                  hintfontSize: 16.0,
                                  hintfontWeight: FontWeight.w400,
                                  hintStylecolor: Colors.grey,
                                  borderwidth: 2.0,
                                  BorderStyle: BorderStyle.solid),
                              SizedBox1(h: 10.0),
                              ElevatedButton(
                                  onPressed: (() {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: ((context) => HomeV1())));
                                  }),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromRGBO(255, 152, 1, 1),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      side: const BorderSide(
                                          color: Colors.transparent)),
                                  child: SizedBox(
                                    width: 362.0,
                                    height: 50.0,
                                    child: Center(
                                      child: text1Methode(
                                        'Login',
                                        Colors.white,
                                        16.0,
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  positionedMethod(
                    90.0,
                    500.0,
                    text1Methode(
                      'Or continue with social account',
                      Color.fromRGBO(108, 114, 127, 1),
                      16.0,
                      bold: FontWeight.bold,
                    ),
                  ),
                  positionedMethod(
                    100.0,
                    530.0,
                    Row(
                      children: [
                        imagesMethod('assets/images/Google.png', 30.0, 30.0),
                        TextButton(
                          onPressed: () {},
                          child: text1Methode(
                            'Sign In with Google',
                            Color.fromARGB(255, 28, 35, 66),
                            16.0,
                            bold: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  positionedMethod(
                    100.0,
                    570.0,
                    Row(
                      children: [
                        imagesMethod('assets/images/Facebook.png', 30.0, 30.0),
                        TextButton(
                          onPressed: () {},
                          child: text1Methode('Sign In with Facebook',
                              Color.fromARGB(255, 28, 35, 66), 16.0,
                              bold: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  positionedMethod(
                    80.0,
                    620.0,
                    Row(
                      children: [
                        text1Methode(
                          'Dont’s have an account?',
                          Color.fromARGB(255, 28, 35, 66),
                          16.0,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        VerificationActive())));
                          },
                          child: text1Methode(
                            'Sign up',
                            Color.fromRGBO(255, 152, 1, 1),
                            16.0,
                            bold: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  positionedMethod(
                    -12.0,
                    620.0,
                    imagesMethod('assets/images/chilli1.png', 120.0, 104.0),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }
}
