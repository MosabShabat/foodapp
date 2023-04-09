import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:foodapp/general/info.dart';

import '../general/SizedBox.dart';

class favorite_border extends StatefulWidget {
  const favorite_border({super.key});

  @override
  State<favorite_border> createState() => _favorite_borderState();
}

class _favorite_borderState extends State<favorite_border> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 222, 222, 1),
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: colorsMethod(Colors.transparent),
        leadingWidth: 160,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 16,
                    color: Colors.orange,
                  ),
                  SizedBox1(w: 10.0),
                  text1Methode('Location', Colors.black, 13.0,
                      bold: FontWeight.bold)
                ],
              ),
              SizedBox1(h: 8.0),
              Row(
                children: [
                  text1Methode('California, USA ', Colors.grey, 13.0,
                      bold: FontWeight.bold),
                  SizedBox1(w: 4.0),
                  Icon(
                    Icons.arrow_downward,
                    size: 16,
                    color: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image(
                image: AssetImage(
                  'assets/images/Photo.png',
                ),
                width: 42,
                height: 42,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          Column(
            children: [
              MainRow(context),
              SnacklineColumn(context),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: text1Methode(
                        'Most Favourite', Color.fromRGBO(50, 49, 66, 1), 25.0,
                        bold: FontWeight.bold),
                  ),
                ],
              ),
              MostPopularData(context),
              MostPopularData(context),
            ],
          )
        ],
      ),
    );
  }
}
