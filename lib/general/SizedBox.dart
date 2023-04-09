import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/OnBoarding04.dart';
import '../screens/ProfilePreferences.dart';
import '../screens/SearchFilter.dart';

SizedBox SizedBox1({w, h}) {
  return SizedBox(
    height: h,
    width: w,
  );
}

Column Texts1Methods(
  text,
  color,
  size,
  text1,
  color1,
  size1,
) {
  return Column(
    children: [
      Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: size, color: color),
      ),
      SizedBox1(h: 10.0),
      Text(
        text1,
        style: TextStyle(fontSize: size1, color: color1),
      )
    ],
  );
}

Text text1Methode(text, color, size, {bold}) {
  return Text(
    text,
    style: TextStyle(
      fontWeight: bold,
      fontSize: size,
      color: color,
    ),
  );
}

GestureDetector DetectorMethod(
    BuildContext context, Screen, color, color1, text, textColor) {
  return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: ((context) => Screen)));
      },
      child: Container(
        width: 169.04,
        height: 63.25,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(29),
          boxShadow: [
            BoxShadow(
              color: color1,
              offset: Offset(5, 15),
              blurRadius: 10,
            ),
          ],
        ),
        child: Center(
          child: text1Methode(text, textColor, 18.0, bold: FontWeight.bold),
        ),
      ));
}

Positioned positionedMethod(left, top, widget) {
  return Positioned(left: left, top: top, child: widget);
}

Image imagesMethod(image, w, h) {
  return Image(
    image: AssetImage(image),
    width: w,
    height: h,
  );
}

Color colorsMethod(color) => color;

ElevatedButton ElevatedButtonMethod(
  BuildContext context,
  page,
  text,
) {
  return ElevatedButton(
      onPressed: (() {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: ((context) => page)));
      }),
      style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromRGBO(255, 152, 1, 1),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          side: const BorderSide(color: Colors.transparent)),
      child: SizedBox(
        width: 362.0,
        height: 70.0,
        child: Center(
          child: text1Methode(
            text,
            Colors.white,
            16.0,
          ),
        ),
      ));
}

Widget buildstoryitem() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: [
          Stack(children: [
            const SizedBox(
              width: 344,
              height: 120,
            ),
            positionedMethod(
              1.0,
              1.0,
              Container(
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/Banner01.png')),
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
            positionedMethod(
                13.0,
                24.0,
                Image(
                  image: AssetImage('assets/images/Text.png'),
                )),
            positionedMethod(
                182.0,
                14.0,
                Image(
                  image: AssetImage('assets/images/FoodImage.png'),
                  width: 110,
                  height: 110,
                ))
          ]),
        ],
      ),
    );
Widget buildstoryitem1(color, image, text, colortext) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: [
          Stack(children: [
            Container(
              width: 78,
              height: 113,
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(15)),
            ),
            positionedMethod(
                18.0,
                18.0,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(image: AssetImage(image)),
                    SizedBox1(h: 18.0),
                    text1Methode(text, colortext, 13.71, bold: FontWeight.bold)
                  ],
                ))
          ]),
        ],
      ),
    );
Widget buildstoryitemHomeV2(color, image, text, colortext) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: [
          Stack(children: [
            Container(
              width: 120,
              height: 55,
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(15)),
            ),
            positionedMethod(
                10.0,
                5.0,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(image: AssetImage(image)),
                    SizedBox1(w: 10.0),
                    text1Methode(text, colortext, 13.71, bold: FontWeight.bold)
                  ],
                ))
          ]),
        ],
      ),
    );
Widget buildstoryitem2(image, backgruondcolorContainer, textContainer,
        colortextContainer, destext, textmin, textstar, Price) =>
    Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(children: [
        Container(
          width: 161,
          height: 320,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
        ),
        positionedMethod(
            130.0,
            10.0,
            Icon(
              Icons.favorite_border,
            )),
        positionedMethod(
            10.0,
            18.0,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(image: AssetImage(image)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        width: 60.0,
                        height: 24.0,
                        decoration: BoxDecoration(
                            color: backgruondcolorContainer,
                            borderRadius: BorderRadius.circular(3.45)),
                        child: Center(
                          child: text1Methode(
                              textContainer, colortextContainer, 13.71,
                              bold: FontWeight.bold),
                        ))
                  ],
                ),
                SizedBox1(h: 10.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      text1Methode(
                          destext, Color.fromRGBO(50, 49, 66, 1), 16.71,
                          bold: FontWeight.bold),
                    ],
                  ),
                ),
                SizedBox1(h: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    text1Methode(
                      textmin,
                      Color.fromRGBO(142, 151, 166, 1),
                      12.71,
                    ),
                    SizedBox1(w: 10.0),
                    Icon(
                      Icons.star,
                      color: Colors.yellow[700],
                    ),
                    SizedBox1(w: 10.0),
                    text1Methode(
                      textstar,
                      Color.fromRGBO(142, 151, 166, 1),
                      12.71,
                    ),
                  ],
                ),
                SizedBox1(h: 10.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      text1Methode(Price, Color.fromRGBO(50, 49, 66, 1), 12.71,
                          bold: FontWeight.bold),
                      SizedBox1(w: 40.0),
                      Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.38),
                              color: colorsMethod(
                                Color.fromRGBO(50, 49, 66, 1),
                              )),
                          child: Icon(Icons.add, color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ))
      ]),
    );

Widget buildstoryitem3(image, backgruondcolorContainer, textContainer,
        colortextContainer, destext, textmin, textstar) =>
    Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(children: [
        Container(
          width: 326,
          height: 250,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(24.72)),
        ),
        positionedMethod(
          -25.0,
          -1.0,
          Image(image: AssetImage(image)),
        ),
        positionedMethod(
            1.0,
            150.0,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                          width: 60.0,
                          height: 24.0,
                          decoration: BoxDecoration(
                              color: backgruondcolorContainer,
                              borderRadius: BorderRadius.circular(3.45)),
                          child: Center(
                            child: text1Methode(
                                textContainer, colortextContainer, 13.71,
                                bold: FontWeight.bold),
                          )),
                    )
                  ],
                ),
                SizedBox1(h: 4.0),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: text1Methode(
                          destext, Color.fromRGBO(50, 49, 66, 1), 16.71,
                          bold: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox1(h: 4.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: text1Methode(
                        textmin,
                        Color.fromRGBO(142, 151, 166, 1),
                        12.71,
                      ),
                    ),
                    SizedBox1(w: 10.0),
                    Icon(
                      Icons.star,
                      color: Colors.yellow[700],
                    ),
                    SizedBox1(w: 10.0),
                    text1Methode(
                      textstar,
                      Color.fromRGBO(142, 151, 166, 1),
                      12.71,
                    ),
                    SizedBox1(w: 40.0),
                    Container(
                        width: 33,
                        height: 33,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.5),
                            color: colorsMethod(
                              Color.fromARGB(255, 163, 161, 179),
                            )),
                        child: Icon(Icons.bookmark, color: Colors.amber)),
                  ],
                ),
              ],
            ))
      ]),
    );
final _formKey = GlobalKey<FormState>();
Row MainRow(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        width: MediaQuery.of(context).size.width / 1.3,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              textFormField(
                  maxHeight: 60.0,
                  maxWidth: 270.0,
                  keyboardType: TextInputType.name,
                  circular: 24.0,
                  circular1: 24.0,
                  fillColor: Colors.white,
                  filled: true,
                  obscureText1: false,
                  maxLines: 1,
                  minLines: 1,
                  outbordercolor: Colors.transparent,
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  borderColor: Colors.orange,
                  hintfontSize: 16.0,
                  hintfontWeight: FontWeight.w500,
                  hintStylecolor: Colors.grey,
                  borderwidth: 2.0,
                  BorderStyle: BorderStyle.solid),
            ],
          ),
        ),
      ),
      SizedBox1(w: 8.0),
      GestureDetector(
        onTap: () {},
        child: Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: colorsMethod(Color.fromRGBO(252, 152, 1, 1))),
            child: Icon(
              Icons.menu,
              color: Color.fromRGBO(50, 49, 66, 1),
            )),
      )
    ],
  );
}

Padding notificationsDelivery(image, title, subtitle, subtitleColor, time) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12.0)),
      child: ListTile(
        leading: Image.asset(image),
        title: text1Methode(title, Color.fromRGBO(50, 49, 66, 1), 19.0,
            bold: FontWeight.bold),
        subtitle:
            text1Methode(subtitle, subtitleColor, 12.0, bold: FontWeight.w500),
        trailing: Column(
          children: [
            SizedBox1(h: 40.0),
            text1Methode(time, Colors.grey, 12.0, bold: FontWeight.w500),
          ],
        ),
      ),
    ),
  );
}

Padding notificationsNewsUpdates(title, subtitle1, subtitle2, time) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12.0)),
      child: ListTile(
        title: text1Methode(title, Color.fromRGBO(50, 49, 66, 1), 19.0,
            bold: FontWeight.bold),
        subtitle: Column(
          children: [
            SizedBox1(h: 10.0),
            Row(
              children: [
                text1Methode(subtitle1, Colors.grey, 12.0,
                    bold: FontWeight.w500),
              ],
            ),
            SizedBox1(h: 4.0),
            Row(
              children: [
                text1Methode(subtitle2, Colors.grey, 12.0,
                    bold: FontWeight.w500),
              ],
            ),
          ],
        ),
        trailing: Column(
          children: [
            SizedBox1(h: 40.0),
            text1Methode(time, Colors.grey, 12.0, bold: FontWeight.w500),
          ],
        ),
      ),
    ),
  );
}

Column notificationsNewsUpdates1() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox1(w: 20.0),
          text1Methode('Points', Color.fromRGBO(50, 49, 66, 1), 25.0,
              bold: FontWeight.bold),
        ],
      ),
      SizedBox1(h: 10.0),
      notificationsNewsUpdates(
        'You Earned 70 Points',
        'Earn 100 Points And  Get 50% Off Under',
        '\$100 Items.',
        '3:09 PM',
      ),
      SizedBox1(h: 10.0),
      notificationsNewsUpdates(
        'You Earned 20 Points',
        'Earn 100 Points And  Get 50% Off Under',
        '\$100 Items.',
        'Yesterday',
      ),
      SizedBox1(h: 30.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox1(w: 20.0),
          text1Methode('Updates', Color.fromRGBO(50, 49, 66, 1), 25.0,
              bold: FontWeight.bold),
        ],
      ),
      SizedBox1(h: 10.0),
      notificationsNewsUpdates(
        'Your App Is Fully Updated',
        'Eatly App Version 7.89v Updated ',
        'Successfully.',
        'Yesterday',
      ),
    ],
  );
}

GestureDetector GestureDetectorListTile(
    BuildContext context, page, icon, title, subtitle1, subtitle2) {
  return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: ((context) => page)));
      },
      child: Center(
          child: ListTile(
        leading: Icon(
          icon,
          color: Colors.orange,
          size: 40,
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox1(h: 15.0),
            text1Methode(title, Colors.black, 18.0, bold: FontWeight.w700),
          ],
        ),
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text1Methode(subtitle1, Colors.grey, 13.0, bold: FontWeight.w400),
            text1Methode(subtitle2, Colors.grey, 13.0, bold: FontWeight.w400),
          ],
        ),
      )));
}

TextFormField textFormField(
    {controller,
    keyboardType,
    fillColor,
    filled,
    circular,
    cursorHeight1,
    outbordercolor,
    borderwidth,
    BorderStyle,
    focusedBordercolor,
    focusedBorderwidth,
    focusedBordercircular,
    lable,
    prefixIcon,
    borderColor,
    suffixIcon,
    lablefontSize,
    fontWeight,
    textcolor,
    hintText,
    maxLines,
    circular1,
    minLines,
    obscureText1,
    hintStylecolor,
    maxWidth,
    maxHeight,
    hintfontSize,
    hintfontWeight}) {
  print(keyboardType.toString());
  return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText1,
      maxLines: maxLines,
      minLines: minLines,
      textInputAction: TextInputAction.next,
      onTap: () {},
      cursorHeight: cursorHeight1,
      decoration: InputDecoration(
        fillColor: fillColor,
        filled: filled,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(circular),
            borderSide: BorderSide(
                color: outbordercolor, width: borderwidth, style: BorderStyle)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor, width: 2),
          borderRadius: BorderRadius.circular(circular1),
        ),
        label: lable,
        hintText: hintText,
        hintStyle: TextStyle(
          color: hintStylecolor,
          fontSize: hintfontSize,
          fontWeight: hintfontWeight,
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        labelStyle: TextStyle(
          fontSize: lablefontSize,
          fontWeight: fontWeight,
          color: textcolor,
        ),
        constraints: BoxConstraints(
          maxWidth: maxWidth,
          maxHeight: maxHeight,
        ),
      ));
}
//maxWidth,maxWidth,



/*
ProfilePreferences(),
Icons.person,
'Account Information',
'Change your Account information',
'',
*/