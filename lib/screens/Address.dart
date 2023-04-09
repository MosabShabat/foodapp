import 'package:flutter/material.dart';

import '../general/SizedBox.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  String? isSelectDeliver;

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
            child: text1Methode('Address', Colors.grey, 22.0),
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
                        'Deliver To', Color.fromRGBO(50, 49, 66, 1), 25.0,
                        bold: FontWeight.bold),
                  ],
                ),
              ),
              SizedBox1(h: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox1(h: 20.0),
                      RadioListTile(
                        activeColor: Color.fromRGBO(50, 49, 66, 1),
                        title: text1Methode(
                            'Home', Color.fromRGBO(50, 49, 66, 1), 18.0,
                            bold: FontWeight.w500),
                        subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text1Methode(
                                'Horizenal Road Stree 1178', Colors.grey, 14.0,
                                bold: FontWeight.w400),
                            text1Methode('California, USA', Colors.grey, 14.0,
                                bold: FontWeight.w400),
                          ],
                        ),
                        value: "m",
                        groupValue: isSelectDeliver,
                        onChanged: (value) {
                          setState(() {
                            isSelectDeliver = value.toString();
                          });
                        },
                        secondary: Image.asset('assets/images/Location.png'),
                      ),
                      SizedBox1(h: 20.0),
                    ],
                  ),
                ),
              ),
              SizedBox1(h: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox1(h: 20.0),
                      RadioListTile(
                        activeColor: Color.fromRGBO(50, 49, 66, 1),
                        title: text1Methode(
                            'Office', Color.fromRGBO(50, 49, 66, 1), 18.0,
                            bold: FontWeight.w500),
                        subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text1Methode(
                                'Parallel Road Stree 897', Colors.grey, 14.0,
                                bold: FontWeight.w400),
                            text1Methode('California, USA', Colors.grey, 14.0,
                                bold: FontWeight.w400),
                          ],
                        ),
                        value: "f",
                        groupValue: isSelectDeliver,
                        onChanged: (value) {
                          setState(() {
                            isSelectDeliver = value.toString();
                          });
                        },
                        secondary: Image.asset('assets/images/Location.png'),
                      ),
                      SizedBox1(h: 20.0),
                    ],
                  ),
                ),
              ),
              SizedBox1(h: 150.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'ChooseCard');
                },
                child: text1Methode(
                    'Use This Address', Color.fromRGBO(255, 255, 255, 1), 20.0,
                    bold: FontWeight.bold),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  fixedSize: Size(344, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox1(h: 10.0),
              TextButton(
                onPressed: () {},
                child: text1Methode('+ Add New Address', Colors.grey, 14.0,
                    bold: FontWeight.w400),
              )
            ],
            //ChooseCard
          )
        ],
      ),
    );
  }
}
