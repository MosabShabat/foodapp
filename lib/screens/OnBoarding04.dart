import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/widgets.dart';

import '../general/SizedBox.dart';
import '../widget/StackMethod.dart';
import 'Register.dart';
import 'VerificationActive.dart';

class OnBoarding04 extends StatefulWidget {
  const OnBoarding04({super.key});

  @override
  State<OnBoarding04> createState() => _OnBoarding04State();
}

class _OnBoarding04State extends State<OnBoarding04> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SafeArea(
            child: Column(
              children: [
                Stack(
                  children: [
                    header(
                      'assets/images/cheff1.png',
                      Color.fromARGB(255, 255, 255, 255),
                    ),
                    Positioned(
                      left: 325,
                      top: 100.4,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(255, 152, 1, 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(70))),
                        width: 28,
                        height: 29,
                      ),
                    ),
                    Positioned(
                      left: 395,
                      top: 240,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(255, 152, 1, 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(70))),
                        width: 28,
                        height: 29,
                      ),
                    ),
                  ],
                ),
                text1Methode(
                    'Good Evening', Color.fromRGBO(68, 66, 81, 1), 27.0,
                    bold: FontWeight.bold),
                SizedBox1(h: 20.0),
                text1Methode(
                  'Fastest food delivery service\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tfor you.',
                  Color.fromRGBO(149, 155, 164, 1),
                  15.0,
                ),
                SizedBox1(h: 60.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DetectorMethod(
                      context,
                      VerificationActive(),
                      Colors.white,
                      Color.fromARGB(215, 217, 219, 221),
                      'Sign up',
                      Color.fromRGBO(68, 66, 81, 1),
                    ),
                    SizedBox1(w: 20.0),
                    DetectorMethod(
                      context,
                      Register(),
                      Color.fromRGBO(252, 152, 1, 1),
                      Color.fromARGB(255, 245, 209, 155),
                      'Login',
                      Color.fromARGB(255, 255, 255, 255),
                    ),
                  ],
                ),
                SizedBox1(h: 33.0),
                text1Methode('Guest Visit', Color.fromRGBO(68, 66, 81, 1), 18.0,
                    bold: FontWeight.bold),
                SizedBox1(h: 20.0),
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 60,
                      color: Colors.white,
                    ),
                    Positioned(
                      left: 31,
                      top: 0,
                      child: Image(
                          image: AssetImage('assets/images/chilipepper1.png')),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
