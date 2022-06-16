import 'package:flutter/material.dart';
import 'package:membership_system_1/models/rewardsModel.dart';
import 'package:membership_system_1/widget/rewards_card.dart';

import '../../data/rewardsData.dart';
import '../../home_screen.dart';

class Rewards extends StatelessWidget {
  Rewards({Key? key}) : super(key: key);
  final List<RewardsData> _rewardsdata = rewardsdata;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(
                  5,
                ),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Text(
                    "Rewards",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Icon(
                    Icons.notifications_active,
                    size: 30,
                    color: Colors.yellow.shade600,
                  ),
                ],
              ),
              SizedBox(
                height: 9,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width * 0.30,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                child: Center(
                                  child: Row(
                                    children: [
                                      Text(
                                        "Points Balance",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        " 150",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // ignore: prefer_const_constructors
              // Calendar(title: "Pick a date"),
              // TransactionWidget(),
              SizedBox(
                height: 19,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                  ),
                  Text(
                    "More Points Rewards",
                    style: TextStyle(
                      fontSize: 20,
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
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _rewardsdata.length,
                  itemBuilder: (BuildContext context, int index) {
                    return RewardCard(
                      RewardsName: _rewardsdata[index].RewardsName,
                      // imagePath: _rewardsdata[index].imagePath,
                      points: _rewardsdata[index].points,
                      price: _rewardsdata[index].price,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
