import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../general/SizedBox.dart';
import 'Homev1.dart';
import 'RegisterActive1.dart';

class PhoneNumberActin02 extends StatefulWidget {
  const PhoneNumberActin02({super.key});
  @override
  State<PhoneNumberActin02> createState() => _PhoneNumberActin02State();
}

class _PhoneNumberActin02State extends State<PhoneNumberActin02> {
  final _formKey = GlobalKey<FormState>();
  bool _passwordVisible = true;
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
                                          'New Password',
                                          Color.fromRGBO(255, 152, 1, 1),
                                          14.0,
                                        ),
                                      )),
                                  fillColor: Colors.transparent,
                                  filled: true,
                                  obscureText1: false,
                                  maxLines: 1,
                                  minLines: 1,
                                  suffixIcon: Container(
                                    width: 120,
                                    height: 20,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
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
                                  prefixIcon: imagesMethod(
                                      'assets/images/Lock.png', 26.0, 26.0),
                                  outbordercolor: Colors.transparent,
                                  hintText: ' New password ',
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
                                          'Confirm Password',
                                          Color.fromRGBO(255, 152, 1, 1),
                                          14.0,
                                        ),
                                      )),
                                  fillColor: Colors.transparent,
                                  filled: true,
                                  obscureText1: false,
                                  maxLines: 1,
                                  minLines: 1,
                                  suffixIcon: Container(
                                    width: 120,
                                    height: 20,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
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
                                  prefixIcon: imagesMethod(
                                      'assets/images/Lock.png', 26.0, 26.0),
                                  outbordercolor: Colors.transparent,
                                  hintText: 'Confirm password ',
                                  borderColor: Colors.orange,
                                  hintfontSize: 16.0,
                                  hintfontWeight: FontWeight.w400,
                                  hintStylecolor: Colors.grey,
                                  borderwidth: 2.0,
                                  BorderStyle: BorderStyle.solid),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  positionedMethod(
                      26.0,
                      555.0,
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => HomeV1())));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(255, 152, 1, 1),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24)),
                              side:
                                  const BorderSide(color: Colors.transparent)),
                          child: SizedBox(
                            width: 320.0,
                            height: 70.0,
                            child: Center(
                              child: text1Methode(
                                'Update Password',
                                Colors.white,
                                16.0,
                              ),
                            ),
                          ))),
                  positionedMethod(
                    0.0,
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
