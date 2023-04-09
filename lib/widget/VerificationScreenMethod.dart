import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../general/SizedBox.dart';

Row VerificationScreenMethod(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SizedBox(
        height: 68,
        width: 68,
        child: TextFormField(
          cursorColor: Colors.white,
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
          style: TextStyle(color: Colors.white),
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
          decoration: InputDecoration(
            filled: true,
            fillColor: Color.fromRGBO(255, 152, 1, 1),
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(24)),
                borderSide: BorderSide(
                    color: Color.fromRGBO(255, 152, 1, 1),
                    width: 2,
                    style: BorderStyle.solid)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24.0),
              borderSide: BorderSide(
                color: colorsMethod(
                  Color.fromRGBO(255, 152, 1, 1),
                ),
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 68,
        width: 68,
        child: TextFormField(
          cursorColor: Colors.white,
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
          style: TextStyle(color: Colors.white),
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
          decoration: InputDecoration(
            filled: true,
            fillColor: Color.fromRGBO(255, 152, 1, 1),
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(24)),
                borderSide: BorderSide(
                    color: Color.fromRGBO(255, 152, 1, 1),
                    width: 2,
                    style: BorderStyle.solid)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24.0),
              borderSide: BorderSide(
                color: colorsMethod(
                  Color.fromRGBO(255, 152, 1, 1),
                ),
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 68,
        width: 68,
        child: TextFormField(
          cursorColor: Colors.white,
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
          style: TextStyle(color: Colors.white),
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
          decoration: InputDecoration(
            filled: true,
            fillColor: Color.fromRGBO(255, 152, 1, 1),
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(24)),
                borderSide: BorderSide(
                    color: Color.fromRGBO(255, 152, 1, 1),
                    width: 2,
                    style: BorderStyle.solid)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24.0),
              borderSide: BorderSide(
                color: colorsMethod(
                  Color.fromRGBO(255, 152, 1, 1),
                ),
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 68,
        width: 68,
        child: TextFormField(
          cursorColor: Colors.white,
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
          style: TextStyle(color: Colors.white),
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
          decoration: InputDecoration(
            filled: true,
            fillColor: Color.fromRGBO(255, 152, 1, 1),
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(24)),
                borderSide: BorderSide(
                    color: Color.fromRGBO(255, 152, 1, 1),
                    width: 2,
                    style: BorderStyle.solid)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24.0),
              borderSide: BorderSide(
                color: colorsMethod(
                  Color.fromRGBO(255, 152, 1, 1),
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

Padding IngrediantsRow() {
  return Padding(
    padding: const EdgeInsets.only(left: 0.0, right: 100),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
              color: Color.fromRGBO(226, 137, 176, 1),
              borderRadius: BorderRadius.circular(12)),
          child: Center(
            child: Image.asset('assets/images/Redonion.png'),
          ),
        ),
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
              color: Color.fromRGBO(255, 149, 52, 1),
              borderRadius: BorderRadius.circular(12)),
          child: Center(
            child: Image.asset('assets/images/Carrot.png'),
          ),
        ),
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
              color: Color.fromRGBO(255, 58, 26, 1),
              borderRadius: BorderRadius.circular(12)),
          child: Center(
            child: Image.asset('assets/images/Tomato.png'),
          ),
        ),
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
              color: Color.fromRGBO(78, 174, 32, 1),
              borderRadius: BorderRadius.circular(12)),
          child: Center(
            child: Image.asset('assets/images/Сucumber.png'),
          ),
        ),
      ],
    ),
  );
}
