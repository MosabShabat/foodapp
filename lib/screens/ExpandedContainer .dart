import 'package:flutter/material.dart';

import '../general/SizedBox.dart';

class ExpandedContainer extends StatelessWidget {
  final VoidCallback onTap;
  const ExpandedContainer({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 10,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color.fromRGBO(50, 49, 66, 1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: GestureDetector(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(
                    Icons.shopping_bag,
                    color: Colors.white,
                  ),
                ),
              ),
              text1Methode(
                  'Added To Cart', Color.fromRGBO(255, 255, 255, 1), 24.0,
                  bold: FontWeight.bold),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(65, 64, 83, 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: text1Methode(
                        '\$12.99', Color.fromRGBO(255, 255, 255, 1), 20.0,
                        bold: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
