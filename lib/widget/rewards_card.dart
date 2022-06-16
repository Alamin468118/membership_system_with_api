import 'package:flutter/material.dart';

class RewardCard extends StatelessWidget {
  const RewardCard(
      {Key? key,
      required this.RewardsName,
      // required this.imagePath,
      required this.points,
      required this.price})
      : super(key: key);
  final String RewardsName;
  // final String imagePath;
  final int points;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: <Widget>[
              // Image.asset(
              //   imagePath,
              //   height: MediaQuery.of(context).size.height * 0.1,
              //   width: MediaQuery.of(context).size.width,
              // ),
              SizedBox(
                width: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    RewardsName,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("RM $price"),
                  Text("$points points"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
