import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../general/SizedBox.dart';
import '../general/info.dart';

class AddNewCard extends StatefulWidget {
  const AddNewCard({super.key});

  @override
  State<AddNewCard> createState() => _AddNewCardState();
}

class _AddNewCardState extends State<AddNewCard> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 245, 246, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorsMethod(Colors.transparent),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
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
        ),
        actions: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 14.0, horizontal: 10.0),
            child: text1Methode('Add New Card', Colors.grey, 22.0),
          )
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          Column(
            children: [
              SizedBox1(h: 30.0),
              addCardContainer(
                  350.0,
                  200.0,
                  '•••',
                  '5698    56254    6786    9979',
                  'Name Here',
                  'Cad Holder',
                  'assets/images/CreditCard.png'),
              SizedBox1(h: 30.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    text1Methode('Enter Information',
                        Color.fromRGBO(50, 49, 66, 1), 25.0,
                        bold: FontWeight.bold),
                  ],
                ),
              ),
              SizedBox1(h: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    text1Methode(
                        'Card Number', Color.fromRGBO(50, 49, 66, 1), 18.0,
                        bold: FontWeight.w500),
                  ],
                ),
              ),
              SizedBox1(h: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        textFormField(
                            maxHeight: 56.0,
                            maxWidth: 450.0,
                            keyboardType: TextInputType.emailAddress,
                            circular: 10.0,
                            circular1: 10.0,
                            fillColor: Colors.white,
                            filled: true,
                            obscureText1: false,
                            maxLines: 1,
                            suffixIcon: imagesMethod(
                                'assets/images/CreditCard.png', 50.0, 50.0),
                            minLines: 1,
                            outbordercolor: Colors.transparent,
                            hintText: '•••••••••••••••••• 9979',
                            borderColor: Colors.orange,
                            hintfontSize: 18.0,
                            hintfontWeight: FontWeight.w400,
                            hintStylecolor: Colors.grey,
                            borderwidth: 2.0,
                            BorderStyle: BorderStyle.solid),
                        SizedBox1(h: 20.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            children: [
                              text1Methode('Card Holder',
                                  Color.fromRGBO(50, 49, 66, 1), 18.0,
                                  bold: FontWeight.w500),
                            ],
                          ),
                        ),
                        SizedBox1(h: 20.0),
                        textFormField(
                            maxHeight: 56.0,
                            maxWidth: 450.0,
                            keyboardType: TextInputType.emailAddress,
                            circular: 10.0,
                            circular1: 10.0,
                            fillColor: Colors.white,
                            filled: true,
                            obscureText1: false,
                            maxLines: 1,
                            minLines: 1,
                            outbordercolor: Colors.transparent,
                            hintText: 'Enter Card Holder Name',
                            borderColor: Colors.orange,
                            hintfontSize: 18.0,
                            hintfontWeight: FontWeight.w400,
                            hintStylecolor: Colors.grey,
                            borderwidth: 2.0,
                            BorderStyle: BorderStyle.solid),
                        SizedBox1(h: 20.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              text1Methode('Expiration Date',
                                  Color.fromRGBO(50, 49, 66, 1), 18.0,
                                  bold: FontWeight.w500),
                              text1Methode(
                                  'CVC', Color.fromRGBO(50, 49, 66, 1), 18.0,
                                  bold: FontWeight.w500),
                            ],
                          ),
                        ),
                        SizedBox1(h: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            textFormField(
                                maxHeight: 50.0,
                                maxWidth: 103.0,
                                keyboardType: TextInputType.emailAddress,
                                circular: 10.0,
                                circular1: 10.0,
                                fillColor: Colors.white,
                                filled: true,
                                obscureText1: false,
                                maxLines: 1,
                                minLines: 1,
                                suffixIcon: Icon(Icons.arrow_downward_outlined),
                                outbordercolor: Colors.transparent,
                                hintText: '0',
                                borderColor: Colors.orange,
                                hintfontSize: 18.0,
                                hintfontWeight: FontWeight.w400,
                                hintStylecolor: Colors.grey,
                                borderwidth: 2.0,
                                BorderStyle: BorderStyle.solid),
                            textFormField(
                                maxHeight: 50.0,
                                maxWidth: 103.0,
                                keyboardType: TextInputType.emailAddress,
                                circular: 10.0,
                                circular1: 10.0,
                                fillColor: Colors.white,
                                filled: true,
                                obscureText1: false,
                                maxLines: 1,
                                minLines: 1,
                                suffixIcon: Icon(Icons.arrow_downward_outlined),
                                outbordercolor: Colors.transparent,
                                hintText: '0',
                                borderColor: Colors.orange,
                                hintfontSize: 18.0,
                                hintfontWeight: FontWeight.w400,
                                hintStylecolor: Colors.grey,
                                borderwidth: 2.0,
                                BorderStyle: BorderStyle.solid),
                            textFormField(
                                maxHeight: 50.0,
                                maxWidth: 103.0,
                                keyboardType: TextInputType.emailAddress,
                                circular: 10.0,
                                circular1: 10.0,
                                fillColor: Colors.white,
                                filled: true,
                                obscureText1: false,
                                maxLines: 1,
                                minLines: 1,
                                suffixIcon: Icon(Icons.arrow_downward_outlined),
                                outbordercolor: Colors.transparent,
                                hintText: '0',
                                borderColor: Colors.orange,
                                hintfontSize: 18.0,
                                hintfontWeight: FontWeight.w400,
                                hintStylecolor: Colors.grey,
                                borderwidth: 2.0,
                                BorderStyle: BorderStyle.solid),
                          ],
                        ),
                      ],
                    )),
              ),
              SizedBox1(h: 30.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'CheckOut');
                },
                child: text1Methode(
                    'Add Card', Color.fromRGBO(255, 255, 255, 1), 20.0,
                    bold: FontWeight.bold),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  fixedSize: Size(344, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox1(h: 30.0),
            ],
          )
          //CheckOut
        ],
      ),
    );
  }
}
