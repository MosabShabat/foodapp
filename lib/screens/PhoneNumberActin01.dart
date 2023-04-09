import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../general/SizedBox.dart';
import 'PhoneNumberActin02.dart';

class PhoneNumberActin01 extends StatefulWidget {
  const PhoneNumberActin01({super.key});
  @override
  State<PhoneNumberActin01> createState() => _PhoneNumberActin01State();
}

class _PhoneNumberActin01State extends State<PhoneNumberActin01> {
  SingingCharacter? _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      SafeArea(
          child: Column(children: [
        Stack(children: [
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
            80.08,
            100.66,
            Column(
              children: [
                text1Methode(
                    'Reset Your Password',
                    colorsMethod(
                      Color.fromRGBO(68, 66, 81, 1),
                    ),
                    24.0,
                    bold: FontWeight.bold),
                SizedBox1(h: 24.0),
                text1Methode(
                  'At least 8 characters, with uppercase',
                  colorsMethod(
                    Color.fromRGBO(108, 114, 127, 1),
                  ),
                  14.0,
                ),
                SizedBox1(h: 14.0),
                text1Methode(
                  '& lowercase letters',
                  colorsMethod(
                    Color.fromRGBO(108, 114, 127, 1),
                  ),
                  14.0,
                ),
              ],
            ),
          ),
          positionedMethod(
              15.0,
              240.0,
              Column(
                children: [
                  Container(
                    width: 360,
                    height: 140,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 246, 233, 1),
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RadioListTile<SingingCharacter>(
                          title: Row(
                            children: [
                              text1Methode('Send to your Email',
                                  Color.fromRGBO(255, 152, 1, 1), 16.0,
                                  bold: FontWeight.bold),
                              SizedBox1(w: 10.0),
                              Icon(
                                Icons.email,
                                color: Color.fromARGB(255, 228, 219, 212),
                              )
                            ],
                          ),
                          activeColor: Color.fromRGBO(106, 50, 15, 1),
                          value: SingingCharacter.lafayette,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                        Row(
                          children: [
                            SizedBox1(w: 80.0),
                            text1Methode(
                                'Password reset link has been sent to your',
                                Color.fromARGB(255, 174, 182, 199),
                                14.0),
                          ],
                        ),
                        SizedBox1(h: 8.0),
                        Row(
                          children: [
                            SizedBox1(w: 80.0),
                            text1Methode('email address',
                                Color.fromARGB(255, 174, 182, 199), 14.0),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox1(h: 20.0),
                  Container(
                    width: 360,
                    height: 140,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 246, 233, 1),
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RadioListTile<SingingCharacter>(
                          title: Row(
                            children: [
                              text1Methode('Send to your Phone number 📲',
                                  Color.fromRGBO(255, 152, 1, 1), 16.0,
                                  bold: FontWeight.bold),
                              SizedBox1(w: 10.0),
                            ],
                          ),
                          activeColor: Color.fromRGBO(106, 50, 15, 1),
                          value: SingingCharacter.jefferson,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                        Row(
                          children: [
                            SizedBox1(w: 80.0),
                            text1Methode(
                                'Password reset link has been sent to your',
                                Color.fromARGB(255, 174, 182, 199),
                                14.0),
                          ],
                        ),
                        SizedBox1(h: 8.0),
                        Row(
                          children: [
                            SizedBox1(w: 80.0),
                            text1Methode('phone number',
                                Color.fromARGB(255, 174, 182, 199), 14.0),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )),
          positionedMethod(
            8.0,
            555.0,
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ElevatedButton(
                    onPressed: (() {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => PhoneNumberActin02())));
                    }),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(255, 152, 1, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        side: const BorderSide(color: Colors.transparent)),
                    child: SizedBox(
                      width: 340.0,
                      height: 70.0,
                      child: Center(
                        child: text1Methode(
                          'Reset Password',
                          Colors.white,
                          16.0,
                        ),
                      ),
                    ))),
          ),
          positionedMethod(
            0.0,
            610.0,
            imagesMethod('assets/images/chilli1.png', 120.0, 104.0),
          ),
        ])
      ]))
    ]));
  }
}

enum SingingCharacter { lafayette, jefferson }
