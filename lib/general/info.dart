import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../screens/store_outlined.dart';
import 'SizedBox.dart';

final List<Widget> items = [
  buildstoryitem(),
  buildstoryitem(),
  buildstoryitem()
];
final List<Widget> itemsHomeV2 = [
  buildstoryitemHomeV2(Color.fromRGBO(255, 222, 138, 1),
      'assets/images/Pizza.png', 'Pizza', Color.fromRGBO(214, 153, 0, 1)),
  buildstoryitemHomeV2(Color.fromARGB(255, 241, 122, 95),
      'assets/images/Hotdog.png', 'Asian', Color.fromRGBO(251, 71, 29, 1)),
  buildstoryitemHomeV2(Color.fromRGBO(227, 163, 88, 1),
      'assets/images/Doughnut.png', 'Donat', Color.fromRGBO(226, 139, 20, 1)),
  buildstoryitemHomeV2(Color.fromRGBO(255, 222, 138, 1),
      'assets/images/Icecream.png', 'Ice', Color.fromRGBO(214, 153, 0, 1)),
  buildstoryitemHomeV2(Color.fromARGB(255, 250, 210, 111),
      'assets/images/Pizza.png', 'Pizza', Color.fromRGBO(214, 153, 0, 1)),
];
final List<Widget> items1 = [
  buildstoryitem1(Color.fromRGBO(255, 222, 138, 1), 'assets/images/Pizza.png',
      'Pizza', Color.fromRGBO(214, 153, 0, 1)),
  buildstoryitem1(Color.fromARGB(255, 241, 122, 95), 'assets/images/Hotdog.png',
      'Asian', Color.fromRGBO(251, 71, 29, 1)),
  buildstoryitem1(Color.fromRGBO(227, 163, 88, 1), 'assets/images/Doughnut.png',
      'Donat', Color.fromRGBO(226, 139, 20, 1)),
  buildstoryitem1(Color.fromRGBO(255, 222, 138, 1),
      'assets/images/Icecream.png', 'Ice', Color.fromRGBO(214, 153, 0, 1)),
  buildstoryitem1(Color.fromARGB(255, 250, 210, 111), 'assets/images/Pizza.png',
      'Pizza', Color.fromRGBO(214, 153, 0, 1)),
];
final List<Widget> items2 = [
  buildstoryitem2(
      'assets/images/FoodImage1.png',
      Color.fromARGB(255, 240, 226, 178),
      'Healthy',
      Color.fromARGB(255, 248, 209, 82),
      'Chicken Hell',
      '24min •',
      '4.8',
      '\$12.99'),
  buildstoryitem2(
      'assets/images/FoodImage2.png',
      Color.fromARGB(255, 232, 168, 154),
      'Trending',
      Color.fromARGB(255, 253, 83, 45),
      'Swe Dish',
      '34min •',
      '4.9',
      '\$19.99'),
  buildstoryitem2(
      'assets/images/FoodImage4.png',
      Color.fromARGB(255, 240, 226, 178),
      'Healthy',
      Color.fromARGB(255, 248, 209, 82),
      'Chicken Hell',
      '24min •',
      '4.8',
      '\$12.99'),
  buildstoryitem2(
      'assets/images/FoodImage5.png',
      Color.fromARGB(255, 232, 168, 154),
      'Trending',
      Color.fromARGB(255, 253, 83, 45),
      'Swe Dish',
      '34min •',
      '4.9',
      '\$19.99'),
];
final List<Widget> items3 = [
  buildstoryitem3(
    'assets/images/ResturentImage.png',
    Color.fromARGB(255, 240, 226, 178),
    'Healthy',
    Color.fromARGB(255, 248, 209, 82),
    'The Chicken King',
    '24min •',
    '4.8',
  ),
  buildstoryitem3(
    'assets/images/ResturentImage1.png',
    Color.fromARGB(255, 232, 168, 154),
    'Trending',
    Color.fromARGB(255, 253, 83, 45),
    'Swe Dish',
    '34min •',
    '4.9',
  ),
  buildstoryitem3(
    'assets/images/ResturentImage.png',
    Color.fromARGB(255, 240, 226, 178),
    'Healthy',
    Color.fromARGB(255, 248, 209, 82),
    'The Chicken King',
    '24min •',
    '4.8',
  ),
  buildstoryitem3(
    'assets/images/ResturentImage1.png',
    Color.fromARGB(255, 232, 168, 154),
    'Trending',
    Color.fromARGB(255, 253, 83, 45),
    'Swe Dish',
    '34min •',
    '4.9',
  ),
];
final List<Widget> notificationsDelivery1 = [
  notificationsDelivery(
    'assets/images/FoodImage.png',
    'Chicken Hell',
    'On The Way',
    Color.fromRGBO(50, 49, 66, 1),
    '3:09 PM',
  ),
  notificationsDelivery(
    'assets/images/FoodImage1.png',
    'Swe Dish',
    'Delivered',
    Color.fromRGBO(50, 49, 66, 1),
    'Yesterday',
  ),
  notificationsDelivery(
    'assets/images/FoodImage2.png',
    'Fish Hell Veg',
    'Cancelled',
    Color.fromRGBO(255, 0, 0, 1),
    'Yesterday',
  ),
  notificationsDelivery(
    'assets/images/FoodImage3.png',
    'Chicken Hell',
    'Delivered',
    Color.fromRGBO(50, 49, 66, 1),
    '3 Days Ago',
  ),
  notificationsDelivery(
    'assets/images/FoodImage4.png',
    'Chicken Hell',
    'Delivered',
    Color.fromRGBO(50, 49, 66, 1),
    '8 Days Ago',
  ),
];
final List<Widget> cardType = [
  cardContainer(250.0, 200.0, '••••', '0411', 'Mastercard', 'Platinum',
      'assets/images/CreditCard.png'),
  cardContainer(
      250.0, 200.0, '••••', '2205', 'Visa', 'Gold', 'assets/images/Paypal.png'),
  cardContainer(250.0, 200.0, '••••', '5487', 'Mastercard', 'Platinum',
      'assets/images/Google.png'),
];

final _controller = PageController(initialPage: 0);
SizedBox EtaingRow(BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width / 1.1,
    height: MediaQuery.of(context).size.height / 5,
    child: PageView.builder(
      controller: _controller,
      itemCount: items.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return Center(
            child: Column(
          children: [
            Expanded(
              child: items[index],
            ),
          ],
        ));
      },
    ),
  );
}

SmoothPageIndicator smoothpageIndicator() {
  return SmoothPageIndicator(
      controller: _controller,
      count: items.length,
      effect: ExpandingDotsEffect(
        activeDotColor: Color.fromRGBO(252, 152, 1, 1),
        dotHeight: 7,
        dotColor: Color.fromARGB(255, 170, 168, 192),
        dotWidth: 20,
      ));
}

SizedBox Snackline(BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width / 1.1,
    height: MediaQuery.of(context).size.height / 5,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => items1[index],
      separatorBuilder: ((context, index) => const SizedBox(
            width: 5,
          )),
      itemCount: 5,
    ),
  );
}

Row MostPopularText() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: text1Methode('Most Popular', Color.fromRGBO(50, 49, 66, 1), 25.0,
            bold: FontWeight.bold),
      ),
    ],
  );
}

SizedBox MostPopularData(BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height / 2,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => items2[index],
      separatorBuilder: ((context, index) => const SizedBox(
            width: 5,
          )),
      itemCount: items2.length,
    ),
  );
}

Row NearbyResturentsText() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: text1Methode(
            'Nearby Resturents', Color.fromRGBO(50, 49, 66, 1), 25.0,
            bold: FontWeight.bold),
      ),
    ],
  );
}

SizedBox NearbyResturentsData(BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width / 1.1,
    height: MediaQuery.of(context).size.height / 2.4,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => items3[index],
      separatorBuilder: ((context, index) => const SizedBox(
            width: 5,
          )),
      itemCount: 4,
    ),
  );
}

SizedBox SnacklineColumn(BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width / 1.1,
    height: MediaQuery.of(context).size.height / 5,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => itemsHomeV2[index],
      separatorBuilder: ((context, index) => const SizedBox(
            width: 5,
          )),
      itemCount: 5,
    ),
  );
}

SizedBox notificationsDeliveryColumn(BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width / 1.1,
    height: MediaQuery.of(context).size.height / 1.5,
    child: ListView.separated(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => Column(
        children: [
          notificationsDelivery1[index],
          SizedBox1(h: 20.0),
        ],
      ),
      separatorBuilder: ((context, index) => const SizedBox(
            width: 5,
          )),
      itemCount: 5,
    ),
  );
}

Container cardContainer(
    width, height, mainTitle, mainNumber, cardName, cardType, cardImage) {
  return Container(
    //250.0,200.0,
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: Color.fromRGBO(50, 49, 66, 1),
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 60.0,
          decoration: const BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.card_giftcard,
                  color: Colors.white,
                ),
                text1Methode(mainTitle, Color.fromRGBO(255, 255, 255, 1), 24.0,
                    bold: FontWeight.bold),
                text1Methode(mainNumber, Color.fromRGBO(255, 255, 255, 1), 24.0,
                    bold: FontWeight.bold),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text1Methode(
                          cardName, Color.fromRGBO(255, 255, 255, 1), 18.0,
                          bold: FontWeight.bold),
                      text1Methode(cardType, Colors.grey, 14.0,
                          bold: FontWeight.bold),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Image.asset(cardImage),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Container addCardContainer(
    width, height, mainMenu, mainNumber, cardName, cardType, cardImage) {
  return Container(
    //250.0,200.0,
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: Color.fromRGBO(50, 49, 66, 1),
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 60.0,
          decoration: const BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.card_giftcard,
                  color: Colors.white,
                ),
                text1Methode(mainMenu, Color.fromRGBO(255, 255, 255, 1), 24.0,
                    bold: FontWeight.bold),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                SizedBox1(h: 20.0),
                Row(
                  children: [
                    text1Methode(
                        mainNumber, Color.fromRGBO(255, 255, 255, 1), 18.0,
                        bold: FontWeight.bold),
                  ],
                ),
                SizedBox1(h: 20.0),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text1Methode(cardType, Colors.grey, 14.0,
                              bold: FontWeight.bold),
                          SizedBox1(h: 5.0),
                          text1Methode(
                              cardName, Color.fromRGBO(255, 255, 255, 1), 18.0,
                              bold: FontWeight.bold),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Image.asset(cardImage),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}


/*
'••••',
'0411',
'Mastercard',
'Platinum',
'assets/images/CreditCard.png'
 */