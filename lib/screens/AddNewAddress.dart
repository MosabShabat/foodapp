import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../general/SizedBox.dart';
import 'ProfilePreferences.dart';

class AddNewAddress extends StatefulWidget {
  const AddNewAddress({super.key});

  @override
  State<AddNewAddress> createState() => _AddNewAddressState();
}

class _AddNewAddressState extends State<AddNewAddress> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 222, 222, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorsMethod(Colors.transparent),
        leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => ProfilePreferences())));
            },
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: 52,
                    height: 52,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: colorsMethod(Colors.white)),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Color.fromRGBO(50, 49, 66, 1),
                      ),
                    )),
              ),
            )),
        actions: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 14.0, horizontal: 10.0),
            child: text1Methode('Add New Address', Colors.grey, 22.0),
          )
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        SizedBox1(h: 100.0),
                        textFormField(
                            maxHeight: 60.0,
                            maxWidth: 340.0,
                            keyboardType: TextInputType.emailAddress,
                            circular: 12.0,
                            circular1: 12.0,
                            fillColor: Colors.white,
                            filled: true,
                            obscureText1: false,
                            maxLines: 1,
                            minLines: 1,
                            outbordercolor: Colors.transparent,
                            hintText: 'Street Number',
                            borderColor: Colors.orange,
                            hintfontSize: 16.0,
                            hintfontWeight: FontWeight.w500,
                            hintStylecolor: Colors.grey,
                            borderwidth: 2.0,
                            BorderStyle: BorderStyle.solid),
                        SizedBox1(h: 30.0),
                        textFormField(
                            maxHeight: 60.0,
                            maxWidth: 340.0,
                            keyboardType: TextInputType.emailAddress,
                            circular: 12.0,
                            circular1: 12.0,
                            fillColor: Colors.white,
                            filled: true,
                            obscureText1: false,
                            maxLines: 1,
                            minLines: 1,
                            outbordercolor: Colors.transparent,
                            hintText: 'Apt / House Number ',
                            borderColor: Colors.orange,
                            hintfontSize: 16.0,
                            hintfontWeight: FontWeight.w500,
                            hintStylecolor: Colors.grey,
                            borderwidth: 2.0,
                            BorderStyle: BorderStyle.solid),
                        SizedBox1(h: 30.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 150,
                              child: textFormField(
                                  maxHeight: 60.0,
                                  maxWidth: 150.0,
                                  keyboardType: TextInputType.number,
                                  circular: 12.0,
                                  circular1: 12.0,
                                  fillColor: Colors.white,
                                  filled: true,
                                  obscureText1: false,
                                  suffixIcon: Icon(
                                    Icons.arrow_downward,
                                    color: Colors.grey,
                                  ),
                                  maxLines: 1,
                                  minLines: 1,
                                  outbordercolor: Colors.transparent,
                                  hintText: 'City',
                                  borderColor: Colors.orange,
                                  hintfontSize: 16.0,
                                  hintfontWeight: FontWeight.w500,
                                  hintStylecolor: Colors.grey,
                                  borderwidth: 2.0,
                                  BorderStyle: BorderStyle.solid),
                            ),
                            SizedBox(
                              width: 150,
                              child: textFormField(
                                  maxHeight: 60.0,
                                  maxWidth: 150.0,
                                  keyboardType: TextInputType.number,
                                  circular: 12.0,
                                  circular1: 12.0,
                                  fillColor: Colors.white,
                                  filled: true,
                                  obscureText1: false,
                                  suffixIcon: Icon(
                                    Icons.arrow_downward,
                                    color: Colors.grey,
                                  ),
                                  maxLines: 1,
                                  minLines: 1,
                                  outbordercolor: Colors.transparent,
                                  hintText: 'State',
                                  borderColor: Colors.orange,
                                  hintfontSize: 16.0,
                                  hintfontWeight: FontWeight.w500,
                                  hintStylecolor: Colors.grey,
                                  borderwidth: 2.0,
                                  BorderStyle: BorderStyle.solid),
                            ),
                          ],
                        ),
                        SizedBox1(h: 30.0),
                        ElevatedButton(
                            onPressed: (() {}),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromRGBO(255, 152, 1, 1),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                side: const BorderSide(
                                    color: Colors.transparent)),
                            child: SizedBox(
                              width: 362.0,
                              height: 50.0,
                              child: Center(
                                child: text1Methode(
                                  'Save Changes',
                                  Colors.white,
                                  16.0,
                                ),
                              ),
                            ))
                      ],
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
//InviteYourFriends