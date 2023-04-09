import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../general/SizedBox.dart';
import '../general/info.dart';
import 'home_filled.dart';

class SearchFilter extends StatefulWidget {
  const SearchFilter({super.key});

  @override
  State<SearchFilter> createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  bool _isClicked = false;
  double height = 6.0;
  double _value = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 222, 222, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorsMethod(Colors.transparent),
        leading: GestureDetector(
          onTap: () {},
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
        ),
        actions: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 14.0, horizontal: 10.0),
            child: text1Methode('Search Filter', Colors.grey, 22.0),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: text1Methode(
                        'Category', Color.fromRGBO(50, 49, 66, 1), 25.0,
                        bold: FontWeight.bold),
                  ),
                ],
              ),
              Snackline(context),
              SizedBox1(h: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: text1Methode(
                        'Sort By', Color.fromRGBO(50, 49, 66, 1), 25.0,
                        bold: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyButton(text: "Recomended"),
                  SizedBox1(w: 100.0),
                  MyButton(text: "Fast Delivery"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox1(w: 12.0),
                  MyButton(text: "Most Popular"),
                ],
              ),
              SizedBox1(h: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: text1Methode(
                        'Price', Color.fromRGBO(50, 49, 66, 1), 25.0,
                        bold: FontWeight.bold),
                  ),
                ],
              ),
              Slider(
                activeColor: Colors.orange,
                inactiveColor: Color.fromARGB(255, 244, 191, 113),
                value: _value,
                min: 0,
                max: 5,
                divisions: 5,
                onChanged: (double value) {
                  setState(() {
                    _value = value;
                  });
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: text1Methode('\$0', Colors.grey, 14.0,
                        bold: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: text1Methode('\$25', Colors.grey, 14.0,
                        bold: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: text1Methode('\$50', Colors.grey, 14.0,
                        bold: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: text1Methode('\$100', Colors.grey, 14.0,
                        bold: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: text1Methode('\$500', Colors.grey, 14.0,
                        bold: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: text1Methode('\$1000', Colors.grey, 14.0,
                        bold: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox1(h: 30.0),
              ElevatedButton(
                  onPressed: (() {}),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(255, 152, 1, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      side: const BorderSide(color: Colors.transparent)),
                  child: SizedBox(
                    width: 350.0,
                    height: 60.0,
                    child: Center(
                      child: text1Methode(
                        'Apply',
                        Colors.white,
                        24.0,
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

class MyButton extends StatefulWidget {
  final String text;

  MyButton({required this.text});

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _isClicked = !_isClicked;
        });
      },
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0.0),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            return Color.fromRGBO(222, 222, 222, 1);
          },
        ),
      ),
      child: Text(
        widget.text,
        style: TextStyle(
            color: _isClicked ? Colors.orange : Colors.grey, fontSize: 18.0),
      ),
    );
  }
}
