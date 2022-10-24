import 'package:flutter/material.dart';

import '../../constraint.dart';


class RecomendsBikes extends StatelessWidget {
  const RecomendsBikes({
    Key, key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecomendBikeCard(
            image: "assets/image/Royal-Enfield-Meteor-350.jpg",
            title: "Royal Enfield",
            country: "Pakistan",
            press: () {
              // Navigator.push(
              //   context, MaterialPageRoute(builder: (context) => DetailsScreen(),),
              // );
            },
          ),
          RecomendBikeCard(
            image: "assets/image/Yamaha-Tenere-700.jpg",
            title: "Yamaha Tenere",
            country: "Karachi",
            press: () {
           //   Navigator.push(
                //context,
               // MaterialPageRoute(
             //     builder: (context) => DetailsScreen(),
           //     ),
         //     );
            },
          ),
          RecomendBikeCard(
            image: "assets/image/bikeui.jpg",
            title: "Yamaha",
            country: "Sindh",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecomendBikeCard extends StatelessWidget {
  const RecomendBikeCard({
    Key, key,
    required this.image,
    required this.title,
    required this.country,
    required this.press,
  }) : super(key: key);

  final String image, title, country;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: (){},
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
