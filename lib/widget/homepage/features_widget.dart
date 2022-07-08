import 'package:flutter/material.dart';

import '../../features/product.dart';
import '../../features/promotion_page.dart';
import '../../features/rewards.dart';
import '../../features/transaction.dart';

class FeaturesWidget extends StatelessWidget {
  const FeaturesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.137,
        width: MediaQuery.of(context).size.width * 0.89,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.zero,
        ),
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
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
                          0.069, // set height image transaction
                      width: MediaQuery.of(context).size.width * 0.13,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.zero,
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/featured_images/withdraw.png",
                          ),
                          fit: BoxFit.fill,
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
            // GestureDetector( // reason cancel module
            //   // products
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => const Product(),
            //       ),
            //     );
            //   },
            //   child: Container(
            //     child: Column(
            //       children: [
            //         Container(
            //           height: MediaQuery.of(context).size.height *
            //               0.069, //set height of image products
            //           width: MediaQuery.of(context).size.width * 0.13,
            //           decoration: const BoxDecoration(
            //             color: Colors.transparent,
            //             borderRadius: BorderRadius.zero,
            //             image: DecorationImage(
            //               image: AssetImage(
            //                   "assets/images/featured_images/shopping-basket.png"),
            //               fit: BoxFit.fill,
            //             ),
            //           ),
            //         ),
            //         const SizedBox(
            //           height: 2,
            //         ),
            //         const Text(
            //           "Products",
            //           style: TextStyle(
            //             fontSize: 12,
            //             fontFamily: "WorkSans",
            //             fontWeight: FontWeight.w600,
            //             color: Colors.black,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // GestureDetector(
            //   // rewards
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => Rewards(),
            //       ),
            //     );
            //   },
            //   child: Column(
            //     children: [
            //       Container(
            //         height: MediaQuery.of(context).size.height *
            //             0.069, // set height of image Rewards
            //         width: MediaQuery.of(context).size.width * 0.13,
            //         decoration: const BoxDecoration(
            //           color: Colors.transparent,
            //           borderRadius: BorderRadius.zero,
            //           image: DecorationImage(
            //             image: AssetImage(
            //                 "assets/images/featured_images/rewards.png"),
            //             fit: BoxFit.fill,
            //           ),
            //         ),
            //       ),
            //       const SizedBox(
            //         height: 2,
            //       ),
            //       Container(
            //         child: const Text(
            //           "Rewards",
            //           style: TextStyle(
            //             fontSize: 12,
            //             fontFamily: "Worksans",
            //             fontWeight: FontWeight.w600,
            //             color: Colors.black,
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
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
                        0.069, //set height of image promotion
                    width: MediaQuery.of(context).size.width * 0.13,
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
      ),
    );
  }
}
