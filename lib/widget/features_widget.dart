import 'package:flutter/material.dart';

import '../features/product.dart';
import '../features/promotion_page.dart';
import '../features/rewards.dart';
import '../features/transaction.dart';

class FeaturesWidget extends StatelessWidget {
  const FeaturesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.137,
      width: MediaQuery.of(context).size.width * 0.89,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.zero,
      ),
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 4,
        children: <Widget>[
          GestureDetector(
            // Transaction
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Transaction(),
                ),
              );
            },
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height *
                        0.079, // set height image deposit
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.zero,
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/featured_images/withdraw.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Text(
                    "Transaction",
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: "WorkSans",
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            // products
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Product(),
                ),
              );
            },
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height *
                        0.079, //set height of image products
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.zero,
                      image: DecorationImage(
                        image: AssetImage(
                            "assets/images/featured_images/shopping-basket.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Text(
                    "Products",
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: "WorkSans",
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            // rewards
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Rewards(),
                ),
              );
            },
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height *
                      0.079, // set height of image Rewards
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.zero,
                    image: DecorationImage(
                      image: AssetImage(
                          "assets/images/featured_images/rewards.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Container(
                  child: const Text(
                    "Rewards",
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Worksans",
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            // promotion
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PromotionPage(),
                ),
              );
            },
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height *
                      0.079, //set height of image promotion
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.zero,
                    image: DecorationImage(
                      image: AssetImage(
                          "assets/images/featured_images/coupon.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                const Text(
                  "Promotion",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "WorkSans",
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
