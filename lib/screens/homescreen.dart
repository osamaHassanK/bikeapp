import 'package:Bikeapp/screens/components/bike_feature.dart';
import 'package:Bikeapp/screens/components/title_with_more_bbtn.dart';
import 'package:flutter/material.dart';
import 'package:Bikeapp/constraint.dart';
import 'package:Bikeapp/screens/customdrawer.dart';

import 'components/header_with_seachbox.dart';
import 'components/recomend_Bikes.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          elevation: 00,
          centerTitle: true,
          title: Text(""),
           backgroundColor: kPrimaryColor,
        ),
        body:       SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              HeaderWithSearchBox(size: size),
              TitleWithMoreBtn(title: "Recommended  ", press: () {}),
              RecomendsBikes(),
              TitleWithMoreBtn(title: "Top List  ", press: () {}),
              BikeFeatures(),
              SizedBox(height: kDefaultPadding),
            ],
          ),
        ),
      ),
      );
  }
}
