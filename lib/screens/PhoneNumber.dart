import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../general/SizedBox.dart';
import '../widget/VerificationScreenMethod.dart';
import 'PhoneNumberActin01.dart';
import 'RegisterActive1.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key});
  @override
  State<PhoneNumber> createState() => _PhoneNumber();
}

class _PhoneNumber extends State<PhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
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
                    70.08,
                    100.66,
                    Column(
                      children: [
                        text1Methode(
                            'Verify Phone Number',
                            colorsMethod(
                              Color.fromRGBO(68, 66, 81, 1),
                            ),
                            24.0,
                            bold: FontWeight.bold),
                        SizedBox1(h: 24.0),
                        text1Methode(
                          'We have sent code to your number',
                          colorsMethod(
                            Color.fromRGBO(108, 114, 127, 1),
                          ),
                          14.0,
                        ),
                        SizedBox1(h: 18.0),
                        text1Methode(
                          '(+84) 999 999 999',
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
                    0.0,
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 27.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            VerificationScreenMethod(context),
                            SizedBox1(h: 90.0),
                          ],
                        ),
                      ),
                    ),
                  ),
                  positionedMethod(
                    10.0,
                    400.0,
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: ElevatedButton(
                            onPressed: (() {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          PhoneNumberActin01())));
                            }),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromRGBO(255, 152, 1, 1),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24)),
                                side: const BorderSide(
                                    color: Colors.transparent)),
                            child: SizedBox(
                              width: 340.0,
                              height: 70.0,
                              child: Center(
                                child: text1Methode(
                                  'Send code',
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
                  positionedMethod(
                      140.0,
                      520.0,
                      TextButton(
                          onPressed: (() {}),
                          child: text1Methode('Resend code',
                              Color.fromRGBO(255, 152, 1, 1), 16.0))),
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }
}
