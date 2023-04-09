import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../general/SizedBox.dart';
import '../general/info.dart';

class home_filled extends StatefulWidget {
  const home_filled({super.key});

  @override
  State<home_filled> createState() => _home_filledState();
}

class _home_filledState extends State<home_filled> {
  final _formKey = GlobalKey<FormState>();
  final _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 222, 222, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorsMethod(Colors.transparent),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: colorsMethod(Colors.white)),
              child: Icon(
                Icons.notes,
                color: Color.fromRGBO(50, 49, 66, 1),
              )),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image(
                image: AssetImage(
                  'assets/images/Photo.png',
                ),
                width: 56,
                height: 57,
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
              SizedBox1(h: 30.0),
              MainRow(context),
              EtaingRow(context),
              SizedBox1(h: 20.0),
              smoothpageIndicator(),
              SizedBox1(h: 20.0),
              Snackline(context),
              SizedBox1(h: 20.0),
              MostPopularText(),
              SizedBox1(h: 25.0),
              MostPopularData(context),
              NearbyResturentsText(),
              NearbyResturentsData(context),
            ],
          )
        ],
      ),
    );
  }
}
