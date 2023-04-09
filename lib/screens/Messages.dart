import 'package:flutter/material.dart';

import '../general/SizedBox.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 245, 246, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorsMethod(Colors.transparent),
        toolbarHeight: 80,
        leadingWidth: 250,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.popAndPushNamed(context, 'person_outline');
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: 30,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: colorsMethod(Colors.white)),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 15,
                          color: Color.fromRGBO(50, 49, 66, 1),
                        ),
                      )),
                ),
              ),
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                  'assets/images/Ellipse2.png',
                ),
              ),
              SizedBox1(w: 10.0),
              Column(
                children: [
                  SizedBox1(h: 10.0),
                  text1Methode('Natia', Colors.orange, 24.0,
                      bold: FontWeight.bold),
                  text1Methode('Online', Colors.grey, 14.0,
                      bold: FontWeight.bold)
                ],
              )
            ],
          ),
        ),
        actions: [
          Row(
            children: [
              Icon(
                Icons.call,
                color: Colors.orange,
              ),
              SizedBox1(w: 10.0),
              Icon(
                Icons.video_call,
                color: Colors.orange,
              ),
              SizedBox1(w: 20.0),
            ],
          )
        ],
      ),
      body: Center(
        child: text1Methode('Messages here', Colors.orange, 24.0,
            bold: FontWeight.bold),
      ),
    );
  }
}
//ProfilePreferences