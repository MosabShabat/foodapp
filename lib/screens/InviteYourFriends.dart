import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../general/SizedBox.dart';
import 'ProfilePreferences.dart';

class InviteYourFriends extends StatefulWidget {
  const InviteYourFriends({super.key});

  @override
  State<InviteYourFriends> createState() => _InviteYourFriendsState();
}

class _InviteYourFriendsState extends State<InviteYourFriends> {
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
            child: text1Methode('Invite Your Friends', Colors.grey, 22.0),
          )
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/images/Illustration3.png')),
              SizedBox1(h: 30.0),
              text1Methode(
                  'Refer A Friend', Color.fromRGBO(50, 49, 66, 1), 24.0,
                  bold: FontWeight.bold),
              SizedBox1(h: 15.0),
              text1Methode('Share Your Promo Code & Get \$3',
                  Color.fromRGBO(172, 173, 185, 1), 17.0,
                  bold: FontWeight.w400),
              SizedBox1(h: 8.0),
              text1Methode(
                  'For Each Friend', Color.fromRGBO(172, 173, 185, 1), 17.0,
                  bold: FontWeight.w400),
              SizedBox1(h: 80.0),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'FoodDetails01');
                  },
                  child: Container(
                    width: 344.0,
                    height: 59.0,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 224, 177),
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(color: Colors.orange, width: 2)),
                    child: ListTile(
                      title: text1Methode('EatlyPartnerMR', Colors.orange, 17.0,
                          bold: FontWeight.w500),
                      trailing: Icon(
                        Icons.copy,
                        color: Colors.orange,
                      ),
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
