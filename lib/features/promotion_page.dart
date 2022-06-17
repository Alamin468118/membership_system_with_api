import 'package:flutter/material.dart';

import '../home_screen.dart';
import '../widget/promotion/friends_offer.dart';
import '../widget/promotion/promotion_50_percent.dart';
import '../widget/promotion/promotion_general.dart';
import '../widget/promotion/special_offer.dart';

class PromotionPage extends StatelessWidget {
  const PromotionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Product promotion
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Row(
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
                    Text(
                      "Promotion",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow,
                        fontFamily: "Roboto",
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Promotion50percent(), //promotion 50%
              const SizedBox(
                height: 9,
              ),
              PromotionGeneral(), //Promotion general
              const SizedBox(
                height: 9,
              ),
              SpecialOffer(), //Special offer
              const SizedBox(
                height: 9,
              ),
              FriendOffer(), //Friend offer
            ],
          ),
        ),
      ),
    );
  }
}
