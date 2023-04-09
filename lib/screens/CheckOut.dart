import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';

import '../general/SizedBox.dart';
import '../general/info.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
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
            child: text1Methode('Check Out', Colors.grey, 22.0),
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
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        textFormField(
                            keyboardType: TextInputType.emailAddress,
                            circular: 12.0,
                            circular1: 12.0,
                            maxHeight: 50.0,
                            maxWidth: 245.0,
                            fillColor: Colors.white,
                            filled: true,
                            obscureText1: false,
                            maxLines: 1,
                            minLines: 1,
                            prefixIcon:
                                Icon(Icons.confirmation_number_outlined),
                            outbordercolor: Colors.transparent,
                            hintText: 'Apply Coupon',
                            borderColor: Colors.orange,
                            hintfontSize: 16.0,
                            hintfontWeight: FontWeight.w400,
                            hintStylecolor: Colors.grey,
                            borderwidth: 2.0,
                            BorderStyle: BorderStyle.solid),
                        ElevatedButton(
                          onPressed: () {},
                          child: text1Methode(
                              'Apply', Color.fromRGBO(255, 255, 255, 1), 20.0,
                              bold: FontWeight.bold),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            minimumSize: Size(120, 50),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox1(h: 30.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        text1Methode(
                            'Subtotal', Color.fromRGBO(50, 49, 66, 1), 17.0,
                            bold: FontWeight.w500),
                        text1Methode(
                            '\$58.96', Color.fromRGBO(50, 49, 66, 1), 17.0,
                            bold: FontWeight.w500),
                      ],
                    ),
                  ),
                  //PaymentMethod
                  SizedBox1(h: 10.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: FDottedLine(
                      color: Colors.grey,
                      width: MediaQuery.of(context).size.width,
                      strokeWidth: 2.0,
                      dottedLength: 10.0,
                      space: 2.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        text1Methode(
                            'Delivery', Color.fromRGBO(50, 49, 66, 1), 17.0,
                            bold: FontWeight.w500),
                        text1Methode(
                            '\$3.59', Color.fromRGBO(50, 49, 66, 1), 17.0,
                            bold: FontWeight.w500),
                      ],
                    ),
                  ),
                  SizedBox1(h: 10.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: FDottedLine(
                      color: Colors.grey,
                      width: MediaQuery.of(context).size.width,
                      strokeWidth: 2.0,
                      dottedLength: 10.0,
                      space: 2.0,
                    ),
                  ),
                  SizedBox1(h: 30.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        text1Methode(
                            'Total', Color.fromRGBO(50, 49, 66, 1), 22.0,
                            bold: FontWeight.bold),
                        text1Methode(
                            '\$62.55', Color.fromRGBO(50, 49, 66, 1), 22.0,
                            bold: FontWeight.bold),
                      ],
                    ),
                  ),
                  SizedBox1(h: 30.0),
                  ElevatedButton(
                    onPressed: () {},
                    child: text1Methode(
                        'Check Out', Color.fromRGBO(255, 255, 255, 1), 20.0,
                        bold: FontWeight.bold),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      minimumSize: Size(344, 50),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
