import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../general/SizedBox.dart';
import '../general/info.dart';

class SearchV1 extends StatefulWidget {
  const SearchV1({super.key});

  @override
  State<SearchV1> createState() => _SearchV1State();
}

class _SearchV1State extends State<SearchV1> {
  bool _isContainer1Clicked = false;
  late Widget _middleContainer = Container();
  void _updateMiddleContainerColor() {
    setState(() {
      _middleContainer = (_isContainer1Clicked
          ? Row(
              children: [
                buildstoryitem2(
                    'assets/images/FoodImage2.png',
                    Color.fromARGB(255, 240, 226, 178),
                    'Healthy',
                    Color.fromARGB(255, 248, 209, 82),
                    'Chicken Hell',
                    '24min •',
                    '4.8',
                    '\$12.99'),
              ],
            )
          : buildstoryitem3(
              'assets/images/ResturentImage.png',
              Color.fromARGB(255, 240, 226, 178),
              'Healthy',
              Color.fromARGB(255, 248, 209, 82),
              'The Chicken King',
              '24min •',
              '4.8',
            )) as Widget;
    });
  }

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
              child: Center(
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Color.fromRGBO(50, 49, 66, 1),
                ),
              )),
        ),
        actions: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 14.0, horizontal: 10.0),
            child: text1Methode('Search', Colors.grey, 22.0),
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
              MainRow(context),
              SizedBox1(h: 30.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _isContainer1Clicked = true;
                            _updateMiddleContainerColor();
                          });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(16),
                                topLeft: Radius.circular(16)),
                            border: Border.all(
                              color: _isContainer1Clicked
                                  ? Colors.orange
                                  : Colors.orange,
                              width: 2,
                            ),
                            color: _isContainer1Clicked
                                ? Colors.orange
                                : Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              'Food',
                              style: TextStyle(
                                color: _isContainer1Clicked
                                    ? Colors.white
                                    : Colors.orange,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _isContainer1Clicked = false;
                            _updateMiddleContainerColor();
                          });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(16),
                                topRight: Radius.circular(16)),
                            border: Border.all(
                              color: _isContainer1Clicked
                                  ? Colors.orange
                                  : Colors.orange,
                              width: 2,
                            ),
                            color: _isContainer1Clicked
                                ? Colors.white
                                : Colors.orange,
                          ),
                          child: Center(
                            child: Text(
                              'Resturent',
                              style: TextStyle(
                                color: _isContainer1Clicked
                                    ? Colors.orange
                                    : Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox1(h: 30.0),
              Row(
                children: [
                  SizedBox1(w: 20.0),
                  text1Methode('01 Result Found', Colors.grey, 16.0)
                ],
              ),
              SizedBox1(h: 30.0),
              Center(
                child: _middleContainer,
              )
            ],
          )
        ],
      ),
    );
  }
}
