import 'package:flutter/material.dart';

import '../general/SizedBox.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  String? isSelect;

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
            child: text1Methode('Payment Method', Colors.grey, 22.0),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    text1Methode(
                        'Payment Via', Color.fromRGBO(50, 49, 66, 1), 25.0,
                        bold: FontWeight.bold),
                  ],
                ),
              ),
              SizedBox1(h: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Card(
                  color: Colors.white,
                  child: RadioListTile(
                    activeColor: Color.fromRGBO(50, 49, 66, 1),
                    title: text1Methode(
                        'Credit Card', Color.fromRGBO(50, 49, 66, 1), 18.0,
                        bold: FontWeight.w500),
                    value: "m",
                    groupValue: isSelect,
                    onChanged: (value) {
                      setState(() {
                        isSelect = value.toString();
                      });
                    },
                    secondary: Image.asset('assets/images/CreditCard.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Card(
                  color: Colors.white,
                  child: RadioListTile(
                    activeColor: Color.fromRGBO(50, 49, 66, 1),
                    title: text1Methode(
                        'Paypal', Color.fromRGBO(50, 49, 66, 1), 18.0,
                        bold: FontWeight.w500),
                    value: "f",
                    groupValue: isSelect,
                    onChanged: (value) {
                      setState(() {
                        isSelect = value.toString();
                      });
                    },
                    secondary: Image.asset('assets/images/Paypal.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Card(
                  color: Colors.white,
                  child: RadioListTile(
                    activeColor: Color.fromRGBO(50, 49, 66, 1),
                    title: text1Methode(
                        'Google Pay', Color.fromRGBO(50, 49, 66, 1), 18.0,
                        bold: FontWeight.w500),
                    value: "o",
                    groupValue: isSelect,
                    onChanged: (value) {
                      setState(() {
                        isSelect = value.toString();
                      });
                    },
                    secondary: Image.asset('assets/images/Google.png'),
                  ),
                ),
              ),
              SizedBox1(h: 180.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'Address');
                },
                child: text1Methode(
                    'Payment Method', Color.fromRGBO(255, 255, 255, 1), 20.0,
                    bold: FontWeight.bold),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  fixedSize: Size(344, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
