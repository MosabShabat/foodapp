import 'package:flutter/material.dart';

import '../general/SizedBox.dart';
import '../general/info.dart';

class ChooseCard extends StatefulWidget {
  const ChooseCard({super.key});

  @override
  State<ChooseCard> createState() => _ChooseCardState();
}

//AddNewCard
class _ChooseCardState extends State<ChooseCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 245, 246, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorsMethod(Colors.transparent),
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
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 14.0, horizontal: 10.0),
            child: text1Methode('Payment', Colors.grey, 22.0),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    text1Methode(
                        'Choose Card', Color.fromRGBO(50, 49, 66, 1), 25.0,
                        bold: FontWeight.bold),
                  ],
                ),
              ),
              SizedBox1(h: 30.0),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'AddNewCard');
                      },
                      child: Container(
                        height: 100,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                              color: Color.fromRGBO(50, 49, 66, 1), width: 3),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.add,
                            size: 40,
                            color: Color.fromRGBO(50, 49, 66, 1),
                          ),
                        ),
                      ),
                    ),
                    SizedBox1(w: 20.0),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.45,
                      height: MediaQuery.of(context).size.height / 4,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) =>
                            cardType[index],
                        separatorBuilder: ((context, index) => const SizedBox(
                              width: 5,
                            )),
                        itemCount: cardType.length,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox1(h: 180.0),
              ElevatedButton(
                onPressed: () {},
                child: text1Methode(
                    'Use This Card', Color.fromRGBO(255, 255, 255, 1), 20.0,
                    bold: FontWeight.bold),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  fixedSize: Size(344, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
