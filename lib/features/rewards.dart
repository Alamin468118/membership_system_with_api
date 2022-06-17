import 'package:flutter/material.dart';
import 'package:membership_system_1/models/rewardsModel.dart';

import '../../data/rewardsData.dart';
import '../../home_screen.dart';
import '../widget/rewards/gain_more_points_widget.dart';

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
              const Padding(
                padding: EdgeInsets.all(
                  5,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 120,
                  ),
                  const Text(
                    "Rewards",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // const SizedBox(
                  //   width: 130,
                  // ),
                  // Icon(
                  //   Icons.notifications_active,
                  //   size: 30,
                  //   color: Colors.yellow.shade600,
                  // ),
                ],
              ),
              const SizedBox(
                height: 9,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 18, 76, 134),
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
                              decoration: const BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                child: Center(
                                  child: Row(
                                    children: const [
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
              const SizedBox(
                height: 19,
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                  ),
                  Text(
                    "More Rewards",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              GainMorePointWidget(rewardsdata: _rewardsdata),
            ],
          ),
        ),
      ),
    );
  }
}
