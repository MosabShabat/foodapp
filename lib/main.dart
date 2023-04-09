import 'package:flutter/material.dart';
import 'package:foodapp/screens/AddNewCard.dart';
import 'package:foodapp/screens/Address.dart';
import 'package:foodapp/screens/SearchFilter.dart';
import 'package:foodapp/screens/SearchV1.dart';

import 'screens/CartV1.dart';
import 'screens/CheckOut.dart';
import 'screens/ChooseCard.dart';
import 'screens/FoodDetails01.dart';
import 'screens/On-Boarding01.dart';
import 'screens/PaymentMethod.dart';
import 'screens/ProfilePreferences.dart';
import 'screens/person_outline.dart';
import 'screens/splashScreen.dart';
import 'screens/store_outlined.dart';

void main() {
  runApp(const MyApp());
}

//FoodDetails01
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'manrope'),
      home: splashScreen(),
      routes: {
        'splashScreen': (context) => splashScreen(),
        'CartV1': (context) => CartV1(),
        'PaymentMethod': (context) => PaymentMethod(),
        'store_outlined': (context) => store_outlined(),
        'Address': (context) => Address(),
        'ChooseCard': (context) => ChooseCard(),
        'AddNewCard': (context) => AddNewCard(),
        'CheckOut': (context) => CheckOut(),
        'person_outline': (context) => person_outline(),
        'FoodDetails01': (context) => FoodDetails01(),
        'OnBoarding01': (context) => OnBoarding01(),

        //OnBoarding01
      },
    );
  }
}
//AddNewAddress