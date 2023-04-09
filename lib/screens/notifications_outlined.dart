import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../general/SizedBox.dart';
import '../general/info.dart';

class notifications_outlined extends StatefulWidget {
  const notifications_outlined({super.key});

  @override
  State<notifications_outlined> createState() => _notifications_outlinedState();
}

class _notifications_outlinedState extends State<notifications_outlined> {
  @override
  bool _isContainer1Clicked = false;
  late Widget _middleContainer = Container();
  void _updateMiddleContainerColor() {
    setState(() {
      _middleContainer = (_isContainer1Clicked
          ? notificationsDeliveryColumn(context)
          : notificationsNewsUpdates1()) as Widget;
    });
  }

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
                              'Delivery',
                              //notificationsDelivery
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
                              'News & Updates',
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
