import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';

import '../general/SizedBox.dart';

class CartV1 extends StatefulWidget {
  const CartV1({super.key});

  @override
  State<CartV1> createState() => _CartV1State();
}

class _CartV1State extends State<CartV1> {
  int counter = 0;
  bool _showText = false;

  void incrementNumber() {
    setState(() {
      counter++;
    });
  }

  void decrementNumber() {
    setState(() {
      counter--;
    });
  }

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
            child: text1Methode('Cart', Colors.grey, 22.0),
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
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    text1Methode(
                        'Added Items', Color.fromRGBO(50, 49, 66, 1), 35.0,
                        bold: FontWeight.bold),
                  ],
                ),
              ),
              SizedBox1(h: 30.0),
              myListTile(
                title: 'Chicken Hell',
                subtitle: '\$12.99',
                text: '\$38.97',
                imagePath: 'assets/images/FoodImage2.png',
              ),
              myListTile(
                title: 'Chicken Hell',
                subtitle: '\$19.99',
                text: '\$19.99',
                imagePath: 'assets/images/FoodImage4.png',
              ),
              SizedBox1(h: 100.0),
              Center(
                child: _showText
                    ? Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
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
                                    prefixIcon: Icon(
                                        Icons.confirmation_number_outlined),
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
                                  child: text1Methode('Apply',
                                      Color.fromRGBO(255, 255, 255, 1), 20.0,
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                text1Methode('Subtotal',
                                    Color.fromRGBO(50, 49, 66, 1), 17.0,
                                    bold: FontWeight.w500),
                                text1Methode('\$58.96',
                                    Color.fromRGBO(50, 49, 66, 1), 17.0,
                                    bold: FontWeight.w500),
                              ],
                            ),
                          ),
                          //PaymentMethod
                          SizedBox1(h: 10.0),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: FDottedLine(
                              color: Colors.grey,
                              width: MediaQuery.of(context).size.width,
                              strokeWidth: 2.0,
                              dottedLength: 10.0,
                              space: 2.0,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                text1Methode('Delivery',
                                    Color.fromRGBO(50, 49, 66, 1), 17.0,
                                    bold: FontWeight.w500),
                                text1Methode('\$3.59',
                                    Color.fromRGBO(50, 49, 66, 1), 17.0,
                                    bold: FontWeight.w500),
                              ],
                            ),
                          ),
                          SizedBox1(h: 10.0),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                text1Methode('Total',
                                    Color.fromRGBO(50, 49, 66, 1), 22.0,
                                    bold: FontWeight.bold),
                                text1Methode('\$62.55',
                                    Color.fromRGBO(50, 49, 66, 1), 22.0,
                                    bold: FontWeight.bold),
                              ],
                            ),
                          ),
                          SizedBox1(h: 30.0),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'PaymentMethod');
                            },
                            child: text1Methode('Review Payment',
                                Color.fromRGBO(255, 255, 255, 1), 20.0,
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
                    : ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _showText = true;
                          });
                        },
                        child: text1Methode('Go To Cart',
                            Color.fromRGBO(255, 255, 255, 1), 20.0,
                            bold: FontWeight.bold),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          fixedSize: Size(344, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget myListTile({
    title,
    subtitle,
    text,
    imagePath,
  }) {
    return Dismissible(
      key: UniqueKey(),
      background: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(
            Icons.delete,
            color: Colors.white,
          ),
        ),
      ),
      onDismissed: (direction) {},
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: SizedBox(
          width: double.infinity,
          child: Card(
            color: Colors.white,
            child: ListTile(
              leading: Image.asset(imagePath),
              title: text1Methode(title, Color.fromRGBO(50, 49, 66, 1), 20.0,
                  bold: FontWeight.bold),
              subtitle: text1Methode(
                  subtitle, Color.fromRGBO(50, 49, 66, 1), 16.0,
                  bold: FontWeight.w600),
              trailing: SizedBox(
                width: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            border: Border.all(
                              color: Color.fromRGBO(50, 49, 66, 1),
                            ),
                          ),
                          child: Center(
                            child: Center(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    counter--;
                                  });
                                },
                                child: Icon(
                                  Icons.remove,
                                  color: Color.fromRGBO(50, 49, 66, 1),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            '$counter',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(50, 49, 66, 1),
                            ),
                          ),
                        ),
                        //decrementNumber
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(50, 49, 66, 1),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  counter++;
                                });
                              },
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox1(h: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        text1Methode(text, Color.fromRGBO(50, 49, 66, 1), 18.0,
                            bold: FontWeight.bold),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
