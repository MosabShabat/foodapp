import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'On-Boarding01.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), (() {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: ((context) => OnBoarding01())));
    }));
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Column(
              children: [
                Stack(children: [
                  Image.asset('assets/images/Group985.png'),
                  Positioned(
                    right: 10,
                    left: 50,
                    bottom: 30,
                    top: -10,
                    child: Image(
                      image: AssetImage('assets/images/curryrice1.png'),
                      width: 44,
                      height: 44,
                    ),
                  )
                ]),
              ],
            ))
          ],
        ),
      )),
    );
  }
}
