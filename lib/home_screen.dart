import 'package:flutter/material.dart';
import 'package:membership_system_1/widget/promotion_slider.dart';

import 'widget/features_widget.dart';
import 'widget/highlight_product.dart';
import 'widget/member_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<String> imageList = [
    "assets/images/promotion/50%_promotion.png",
    "assets/images/promotion/promotion.jpg",
    "assets/images/promotion/sale_promotion.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Row(
                  // will do drawer widget here
                  // Display membership app and menu icon
                  children: [
                    Icon(
                      Icons.menu,
                      size: 30,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Text(
                      "MEMBERSHIP APP",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                MemberCard(),
                SizedBox(
                  height: 10,
                ),
                FeaturesWidget(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Offers available",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: HighlightProduct(),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 5,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Promotion",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "See All",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade300,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 20,
                      color: Colors.blue.shade300,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 10,
                  ),
                  child: PromotionSlider(
                    imageList: imageList,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
