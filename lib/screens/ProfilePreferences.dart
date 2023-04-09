import 'package:flutter/material.dart';
import 'package:foodapp/screens/person_outline.dart';

import '../general/SizedBox.dart';
import 'AccountInformation.dart';
import 'AddNewAddress.dart';
import 'InviteYourFriends.dart';

class ProfilePreferences extends StatefulWidget {
  const ProfilePreferences({super.key});

  @override
  State<ProfilePreferences> createState() => _ProfilePreferencesState();
}

class _ProfilePreferencesState extends State<ProfilePreferences> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 222, 222, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorsMethod(Colors.transparent),
        leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: ((context) => person_outline())));
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
            child: text1Methode('Preferences', Colors.grey, 22.0),
          )
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          Column(
            //AccountInformation
            children: [
              SizedBox1(h: 30.0),
              GestureDetectorListTile(
                context,
                AccountInformation(),
                Icons.person,
                'Account Information',
                'Change your Account information',
                '',
              ),
              SizedBox1(h: 20.0),
              GestureDetectorListTile(
                context,
                ProfilePreferences(),
                Icons.visibility,
                'Password',
                'Change your Password',
                '',
              ),
              SizedBox1(h: 20.0),
              GestureDetectorListTile(
                context,
                AddNewAddress(),
                Icons.location_on,
                'Delivery Locations',
                'Edit Or Change Your Daily',
                'Delivery Locations',
              ),
              SizedBox1(h: 20.0),
              GestureDetectorListTile(
                context,
                ProfilePreferences(),
                Icons.card_giftcard,
                'Payment Methods',
                'Add Your Credit / Credit Cards',
                '',
              ),
              SizedBox1(h: 20.0),
              GestureDetectorListTile(
                context,
                InviteYourFriends(),
                Icons.drive_file_rename_outline,
                'Invite Your Friends',
                'Get \$3 For Each Invitation!',
                '',
              ),
            ],
          )
        ],
      ),
    );
  }
}
