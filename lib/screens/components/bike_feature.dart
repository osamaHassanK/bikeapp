

import 'package:flutter/cupertino.dart';

import '../../constraint.dart';

class BikeFeatures extends StatelessWidget {
  const BikeFeatures({
    Key, key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          TopList(
            image: "assets/image/bikeui.jpg",
            press: () {},
          ),
          TopList(
            image: "assets/image/Royal-Enfield-Meteor-350.jpg",
            press: () {},
          ),
          TopList(
            image: "assets/image/Yamaha-Tenere-700.jpg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class TopList extends StatelessWidget {
  const TopList({
    Key, key,
    required this.image,
    required this.press,
  }) : super(key: key);
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){},
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
