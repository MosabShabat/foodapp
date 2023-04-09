import 'package:flutter/material.dart';

import 'package:foodapp/general/SizedBox.dart';
import 'package:foodapp/screens/Messages.dart';
import 'package:foodapp/screens/On-Boarding01.dart';

import 'ProfilePreferences.dart';

class person_outline extends StatefulWidget {
  const person_outline({super.key});

  @override
  State<person_outline> createState() => _person_outlineState();
}

class _person_outlineState extends State<person_outline> {
  double _value = 3.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    'assets/images/Ellipse194.png',
                  ),
                ),
                Positioned(
                    top: 70,
                    left: 80,
                    child: Container(
                      width: 18,
                      height: 18,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(9)),
                    )),
                Positioned(
                    top: 73,
                    left: 83,
                    child: Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(8)),
                    )),
              ],
            ),
            SizedBox1(h: 10.0),
            text1Methode('Joseph Ren', Colors.black, 26.0,
                bold: FontWeight.bold),
            text1Methode('@JosephR', Colors.grey, 16.0, bold: FontWeight.bold),
            SizedBox1(h: 30.0),
            GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: ((context) => Messages())));
                },
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                      child: Icon(
                    Icons.message_outlined,
                    color: Colors.white,
                  )),
                )),
            SizedBox1(h: 30.0),
            GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => ProfilePreferences())));
                },
                child: Center(
                    child: ListTile(
                  leading: Icon(
                    Icons.settings_outlined,
                    color: Colors.orange,
                  ),
                  title: text1Methode('Preferences', Colors.black, 18.0,
                      bold: FontWeight.w400),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: Colors.grey,
                  ),
                ))),
            SizedBox1(h: 10.0),
            GestureDetector(
                onTap: () {},
                child: Center(
                    child: ListTile(
                  leading: Icon(
                    Icons.lock_open_outlined,
                    color: Colors.orange,
                  ),
                  title: text1Methode('Account Security', Colors.black, 18.0,
                      bold: FontWeight.w400),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Slider(
                            activeColor: Colors.orange,
                            inactiveColor: Color.fromARGB(255, 244, 191, 113),
                            value: _value,
                            min: 0,
                            max: 3,
                            divisions: 3,
                            onChanged: (double value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
                        ],
                      ),
                      text1Methode('Excellent', Colors.grey, 16.0,
                          bold: FontWeight.w400),
                    ],
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: Colors.grey,
                  ),
                ))),
            SizedBox1(h: 10.0),
            GestureDetector(
                onTap: () {},
                child: Center(
                    child: ListTile(
                  leading: Icon(
                    Icons.help_outline,
                    color: Colors.orange,
                  ),
                  title: text1Methode('Customer Support', Colors.black, 18.0,
                      bold: FontWeight.w400),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: Colors.grey,
                  ),
                ))),
            SizedBox1(h: 10.0),
            GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => OnBoarding01())));
                },
                child: Center(
                    child: ListTile(
                  leading: Icon(
                    Icons.logout_outlined,
                    color: Colors.orange,
                  ),
                  title: text1Methode('Logout', Colors.black, 18.0,
                      bold: FontWeight.w400),
                ))),
          ],
        ),
      ),
    );
  }
}
