import 'package:flutter/material.dart';

SizedBox header(image, color) {
  return SizedBox(
    width: double.infinity,
    height: 300,
    child: Stack(children: [
      Padding(
        padding: const EdgeInsets.only(top: 60, left: 100, right: 80),
        child: Stack(
          children: [
            Container(
              width: 220,
              height: 298,
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 8, bottom: 8, right: 2, left: 2),
                child: Container(
                  width: 150,
                  height: 382,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Positioned(
        left: 395,
        top: 310,
        child: Container(
          decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 152, 1, 1),
              borderRadius: BorderRadius.all(Radius.circular(70))),
          width: 25,
          height: 26,
        ),
      ),
      Positioned(
        left: -10,
        top: 272,
        child: Container(
          decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 152, 1, 1),
              borderRadius: BorderRadius.all(Radius.circular(70))),
          width: 25,
          height: 26,
        ),
      ),
      Positioned(
        left: 21,
        top: 73,
        child: Container(
          decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 152, 1, 1),
              borderRadius: BorderRadius.all(Radius.circular(70))),
          width: 25,
          height: 26,
        ),
      ),
      Positioned(
        left: 295,
        top: -3,
        child: Container(
          decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 152, 1, 1),
              borderRadius: BorderRadius.all(Radius.circular(70))),
          width: 25,
          height: 26,
        ),
      ),
    ]),
  );
}
