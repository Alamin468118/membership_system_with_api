import 'package:flutter/material.dart';

class FriendOffer extends StatelessWidget {
  const FriendOffer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Friends offer
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height:
                          MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width * 0.47,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/promotion/friend.png",
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height:
                            MediaQuery.of(context).size.height * 0.20,
                        width:
                            MediaQuery.of(context).size.width * 0.34,
                        decoration: const BoxDecoration(),
                        child: Column(
                          children: [
                            const Text(
                              "50% OFF For selected item",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                fontFamily: "WorkSans",
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10),
                              child: Container(
                                height: 30,
                                width: 100,
                                child: const Text(
                                  "Claim now with 20points",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "WorkSans",
                                    color: Color.fromARGB(
                                        255, 182, 167, 1),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 25,
                              width: 250,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(
                                    255, 235, 44, 6),
                                borderRadius:
                                    BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  "Claim Now",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Roboto",
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

