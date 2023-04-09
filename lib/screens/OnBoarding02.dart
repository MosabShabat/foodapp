import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodapp/screens/OnBoarding03.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../general/SizedBox.dart';
import '../widget/StackMethod.dart';
import 'OnBoarding04.dart';

class OnBoarding02 extends StatefulWidget {
  const OnBoarding02({super.key});

  @override
  State<OnBoarding02> createState() => _OnBoarding02State();
}

class _OnBoarding02State extends State<OnBoarding02> {
  final _controller = PageController();
  final List<Widget> _items = [
    header('assets/images/slashio.png', Color.fromRGBO(255, 152, 1, 1)),
    header('assets/images/slashio.png', Color.fromRGBO(255, 152, 1, 1)),
    header('assets/images/slashio.png', Color.fromRGBO(255, 152, 1, 1)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          SafeArea(
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                  child: PageView.builder(
                    controller: _controller,
                    itemCount: _items.length,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Center(
                          child: Column(
                        children: [
                          Expanded(
                            child: _items[index],
                          ),
                        ],
                      ));
                    },
                  ),
                ),
                SizedBox1(h: 20.0),
                SmoothPageIndicator(
                    controller: _controller,
                    count: _items.length,
                    axisDirection: Axis.horizontal,
                    effect: ScrollingDotsEffect(
                      activeDotScale: 1.3,
                      fixedCenter: true,
                      activeDotColor: Color.fromRGBO(68, 66, 81, 1),
                      dotHeight: 10,
                      dotColor: Color.fromRGBO(215, 217, 219, 1),
                      dotWidth: 10,
                    )),
                SizedBox1(h: 10.0),
                Texts1Methods(
                    'Pick The Food',
                    Color.fromRGBO(68, 66, 81, 1),
                    20.0,
                    'Fastest operation to provide food\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tby the fence.',
                    Color.fromRGBO(149, 155, 164, 1),
                    12.0),
                SizedBox1(h: 20.5),
                GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => OnBoarding03())));
                    },
                    child: imagesMethod(
                        'assets/images/Group982.png', 85.87, 102.31)),
                SizedBox1(h: 0.0),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => OnBoarding04())));
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                      color: Color.fromRGBO(68, 66, 81, 1),
                    ),
                  ),
                ),
                SizedBox1(h: 20.5),
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 60,
                      color: Colors.white,
                    ),
                    Positioned(
                      left: 10,
                      top: 0,
                      child: Image(
                        image: AssetImage('assets/images/chilipepper1.png'),
                        width: 53,
                        height: 53,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
