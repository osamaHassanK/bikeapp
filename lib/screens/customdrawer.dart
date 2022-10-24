import 'package:flutter/material.dart';

import '../constraint.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Container(
          //   height: 270,
          //   width: 500,
          //   decoration: BoxDecoration(
          //       image: DecorationImage(
          //           image:AssetImage("assets/image/bikeui.jpg"),fit: BoxFit.cover)),
          // ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50,left: 20,bottom: 50),
                child: Text("Biker App",style:Theme.of(context).textTheme.headline5?.copyWith(fontSize: 30,
                    fontWeight: FontWeight.bold,color: kPrimaryColor),),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              iconColor: kPrimaryColor,
              title: Text("Reset Progress", style: TextStyle(fontSize: 18)),
              leading: Icon(Icons.restart_alt_sharp, size: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              iconColor: kPrimaryColor,
              title: Text("Share with friends", style: TextStyle(fontSize: 18)),
              leading: Icon(Icons.share, size: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              iconColor: kPrimaryColor,
              title: Text("Rate Us", style: TextStyle(fontSize: 18)),
              leading: Icon(Icons.star_rate, size: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              iconColor: kPrimaryColor,
              title: Text("Feedback", style: TextStyle(fontSize: 18)),
              leading: Icon(Icons.comment, size: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              iconColor: kPrimaryColor,
              title: Text("Privacy Policy", style: TextStyle(fontSize: 18)),
              leading: Icon(Icons.privacy_tip_outlined, size: 25),
            ),
          ),
        ],
      ),
    );
  }
}
