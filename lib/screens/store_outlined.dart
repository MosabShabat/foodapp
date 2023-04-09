import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import '../general/SizedBox.dart';

class store_outlined extends StatefulWidget {
  const store_outlined({super.key});

  @override
  State<store_outlined> createState() => _store_outlinedState();
}

class _store_outlinedState extends State<store_outlined> {
  int counter = 0;
  bool _showText = false;

  void incrementNumber() {
    setState(() {
      counter++;
    });
  }

  void decrementNumber() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 245, 246, 1),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    text1Methode(
                        'Added Items', Color.fromRGBO(50, 49, 66, 1), 35.0,
                        bold: FontWeight.bold),
                  ],
                ),
              ),
              SizedBox1(h: 30.0),
              myListTile(
                title: 'Chicken Hell',
                subtitle: '\$12.99',
                text: '\$38.97',
                imagePath: 'assets/images/FoodImage2.png',
              ),
              myListTile(
                title: 'Chicken Hell',
                subtitle: '\$19.99',
                text: '\$19.99',
                imagePath: 'assets/images/FoodImage4.png',
              ),
              SizedBox1(h: 100.0),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(context, 'CartV1');
                  });
                },
                child: text1Methode(
                    'Go To Cart', Color.fromRGBO(255, 255, 255, 1), 20.0,
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
          ),
        ],
      ),
    );
  }

  Widget myListTile({
    title,
    subtitle,
    text,
    imagePath,
  }) {
    int count = 0;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Card(
        child: ListTile(
          leading: Image.asset(imagePath),
          title: text1Methode(title, Color.fromRGBO(50, 49, 66, 1), 20.0,
              bold: FontWeight.bold),
          subtitle: text1Methode(subtitle, Color.fromRGBO(50, 49, 66, 1), 16.0,
              bold: FontWeight.w600),
          trailing: SizedBox(
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        border: Border.all(
                          color: Color.fromRGBO(50, 49, 66, 1),
                        ),
                      ),
                      child: Center(
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                counter--;
                              });
                            },
                            child: Icon(
                              Icons.remove,
                              color: Color.fromRGBO(50, 49, 66, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        '$counter',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(50, 49, 66, 1),
                        ),
                      ),
                    ),
                    //decrementNumber
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(50, 49, 66, 1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              counter++;
                            });
                          },
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox1(h: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    text1Methode(text, Color.fromRGBO(50, 49, 66, 1), 18.0,
                        bold: FontWeight.bold),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
