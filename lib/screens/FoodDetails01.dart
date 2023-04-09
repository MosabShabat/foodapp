import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../general/SizedBox.dart';
import '../widget/VerificationScreenMethod.dart';
import 'ExpandedContainer .dart';

class FoodDetails01 extends StatefulWidget {
  const FoodDetails01({super.key});

  @override
  State<FoodDetails01> createState() => _FoodDetails01State();
}

class _FoodDetails01State extends State<FoodDetails01> {
  int number = 0;
  bool isExpanded = false;

  bool isFavorite = false;
  void incrementNumber() {
    setState(() {
      number++;
    });
  }

  void decrementNumber() {
    setState(() {
      number--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 230, 193),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
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
          Row(
            children: [
              IconButton(
                icon: isFavorite
                    ? Icon(
                        Icons.favorite,
                        color: Colors.orange,
                      )
                    : Icon(
                        Icons.favorite_border,
                        color: Colors.orange,
                      ),
                onPressed: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
              ),
              SizedBox1(w: 20.0)
            ],
          )
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 3,
                    color: Color.fromARGB(255, 255, 230, 193),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 1.6,
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: ListView(
                      children: [
                        Column(
                          children: [
                            SizedBox1(h: 70.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: text1Methode('Pizza Hell',
                                      Color.fromRGBO(50, 49, 66, 1), 25.0,
                                      bold: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Container(
                                    width: 120,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.orange),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        IconButton(
                                          onPressed: decrementNumber,
                                          icon: Icon(Icons.remove,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          '$number',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white),
                                        ),
                                        IconButton(
                                          onPressed: incrementNumber,
                                          icon: Icon(Icons.add,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: text1Methode('24min •',
                                      Color.fromRGBO(142, 151, 166, 1), 12.71,
                                      bold: FontWeight.w500),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[700],
                                ),
                                SizedBox1(w: 10.0),
                                text1Methode('4.8',
                                    Color.fromRGBO(142, 151, 166, 1), 12.71,
                                    bold: FontWeight.w500),
                                SizedBox1(w: 10.0),
                                Icon(
                                  Icons.fire_extinguisher_outlined,
                                  color: Colors.yellow[700],
                                ),
                                SizedBox1(w: 10.0),
                                text1Methode('356 Kcal',
                                    Color.fromRGBO(142, 151, 166, 1), 12.71,
                                    bold: FontWeight.w500),
                              ],
                            ),
                            SizedBox1(h: 10.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Container(
                                      width: 60.0,
                                      height: 24.0,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 254, 251, 217),
                                          borderRadius:
                                              BorderRadius.circular(3.45)),
                                      child: Center(
                                        child: text1Methode(
                                            'Healthy',
                                            Color.fromARGB(255, 254, 229, 0),
                                            13.71,
                                            bold: FontWeight.bold),
                                      )),
                                )
                              ],
                            ),
                            SizedBox1(h: 10.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: text1Methode('Ingrediants',
                                      Color.fromRGBO(50, 49, 66, 1), 20.0,
                                      bold: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox1(h: 10.0),
                            IngrediantsRow(),
                            SizedBox1(h: 10.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: text1Methode('Description',
                                      Color.fromRGBO(50, 49, 66, 1), 20.0,
                                      bold: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox1(h: 10.0),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(
                                'Chicken Hell Is The Healthies Chicken For Gym'
                                'Guys And Girls. It Promote Healthy Life Style '
                                'And Make Your Energy Booster.',
                                maxLines: 3,
                                style: TextStyle(
                                    color: colorsMethod(
                                      Colors.grey,
                                    ),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox1(h: 30.0),
                            isExpanded
                                ? ExpandedContainer(onTap: () {
                                    setState(() {
                                      isExpanded = false;
                                    });
                                  })
                                : Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        text1Methode('\$12.99',
                                            Color.fromRGBO(50, 49, 66, 1), 35.0,
                                            bold: FontWeight.bold),
                                        GestureDetector(
                                          child: Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                10,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.7,
                                            decoration: BoxDecoration(
                                              color: Colors.orange,
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            child: Center(
                                              child: text1Methode(
                                                  'Add To Cart',
                                                  Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                  24.0,
                                                  bold: FontWeight.bold),
                                            ),
                                          ),
                                          onTap: () {
                                            setState(() {
                                              isExpanded = true;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                            SizedBox1(h: 30.0),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height / 8,
                  right: MediaQuery.of(context).size.width / 4,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/FoodImage2.png',
                            ),
                            fit: BoxFit.cover)),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
