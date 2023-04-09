import 'package:flutter/material.dart';
import '../general/SizedBox.dart';
import 'PhoneNumber.dart';
import 'PhoneNumberActin01.dart';

class RegisterActive1 extends StatefulWidget {
  const RegisterActive1({super.key});
// PhoneNumber
  @override
  State<RegisterActive1> createState() => _RegisterActive1();
}

class _RegisterActive1 extends State<RegisterActive1> {
  final _formKey = GlobalKey<FormState>();

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
                        // Get Started
                        text1Methode(
                            'Get Started',
                            colorsMethod(
                              Color.fromRGBO(68, 66, 81, 1),
                            ),
                            24.0,
                            bold: FontWeight.bold),
                        SizedBox1(h: 12.0),
                        text1Methode(
                            'with Foodish',
                            colorsMethod(
                              Color.fromRGBO(68, 66, 81, 1),
                            ),
                            24.0,
                            bold: FontWeight.bold),
                        SizedBox1(h: 24.0),
                        text1Methode(
                          'Enter your phone number to use Foodbase',
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
                                  keyboardType: TextInputType.number,
                                  circular: 24.0,
                                  circular1: 24.0,
                                  lable: Container(
                                      width: 119.57,
                                      height: 26.56,
                                      color: Colors.white,
                                      child: Center(
                                        child: text1Methode(
                                          'Phone Number',
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
                                      'assets/images/Flag.png', 26.0, 26.0),
                                  outbordercolor: Colors.transparent,
                                  hintText: 'Enter your Phone Number',
                                  borderColor: Colors.orange,
                                  hintfontSize: 16.0,
                                  hintfontWeight: FontWeight.w400,
                                  hintStylecolor: Colors.grey,
                                  borderwidth: 2.0,
                                  BorderStyle: BorderStyle.solid),
                              SizedBox1(h: 26.0),
                              ElevatedButtonMethod(
                                context,
                                PhoneNumber(),
                                'Send code',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  positionedMethod(
                    -8.0,
                    610.0,
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
