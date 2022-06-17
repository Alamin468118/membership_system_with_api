import 'package:flutter/material.dart';
import 'package:membership_system_1/app_theme.dart';
import 'package:membership_system_1/home_screen.dart';
import 'package:membership_system_1/widget/calendar.dart';
import 'package:membership_system_1/widget/transaction_widget.dart';

import '../../data/rewardsData.dart';
import '../../models/rewardsModel.dart';
import '../gain_more_points_widget.dart';
import '../notification.dart';
import '../transaction_history_widget.dart';

class Transaction extends StatelessWidget {
  Transaction({Key? key}) : super(key: key);
  final List<RewardsData> _rewardsdata = rewardsdata;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // card, current balance, deposit, withdraw, history
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
                    width: 90,
                  ),
                  const Text(
                    "Account Balance",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  // InkWell(
                  //   onTap: () {
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => AppNotification()));
                  //   },
                  //   child: Icon(
                  //     Icons.notifications_active,
                  //     size: 30,
                  //     color: Colors.yellow.shade600,
                  //   ),
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
                              decoration: const BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                child: const Center(
                                  child: Text(
                                    "Current Balance",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "RM 200.00",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),

                        // Icon(
                        //   Icons.add_circle_outline_rounded,
                        //   size: 30,
                        //   color: Colors.white,
                        // ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.47,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Total Points",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "150",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          // Icon(
                          //   Icons.add_circle_outline_rounded,
                          //   size: 30,
                          //   color: Colors.white,
                          // ),
                        ],
                      ),
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
                    "Transaction History",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const TransactionHistory(),
              const SizedBox(
                height: 19,
              ),
              // Row(
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.only(
              //         left: 20,
              //       ),
              //     ),
              //     Text(
              //       "More Points Rewards",
              //       style: TextStyle(
              //         fontSize: 20,
              //         fontWeight: FontWeight.bold,
              //         color: Colors.blue,
              //       ),
              //     ),
              //   ],
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // GainMorePointWidget(rewardsdata: _rewardsdata),
            ],
          ),
        ),
      ),
    );
  }
}
