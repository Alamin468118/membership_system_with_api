import 'package:flutter/material.dart';
import 'package:membership_system_1/features/notification.dart';
import 'package:membership_system_1/features/promotion_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:membership_system_1/widget/homepage/promotion_slider.dart';

import 'widget/homepage/left_sidebar_drawer.dart';
import 'widget/homepage/features_widget.dart';

import 'widget/homepage/member_card.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String token = "";

  final List<String> imageList = [
    "assets/images/promotion/50%_promotion.png",
    "assets/images/promotion/promotion.jpg",
    "assets/images/promotion/sale_promotion.jpg",
  ];

  // shared preference and API
  void getCred() {
    // fetch token from shared preference
    // SharedPreferences.getInstance().then((prefs) {
    //   print(prefs.getString('token'));
    // });
    Future<SharedPreferences> prefs = SharedPreferences.getInstance();
    WidgetsFlutterBinding.ensureInitialized();
    prefs.then((prefs) {
      token = prefs.getString('token')!;
      print(token);
    });
    // prefs.get(key: 'token').then((value) {
    //   print(value);
    //   token = value;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        title: const Text(
          "MEMBERSHIP APPS",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_active,
              color: Colors.yellow,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AppNotification()));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                // Row(
                //   // will do drawer widget here
                //   // Display membership app and menu icon
                //   children: [
                //     Icon(
                //       Icons.menu,
                //       size: 30,
                //       color: Colors.black,
                //     ),
                //     SizedBox(
                //       width: 90,
                //     ),
                //     Text(
                //       "MEMBERSHIP APP",
                //       style: TextStyle(
                //         fontSize: 20,
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),
                //   ],
                // ),

                const SizedBox(
                  height: 10,
                ),

                const MemberCard(),
                const SizedBox(
                  height: 10,
                ),
                const FeaturesWidget(),
                const SizedBox(
                  height: 20,
                ),

                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 5,
                      ),
                    ),
                    Row(
                      children: const [
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
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PromotionPage()));
                      },
                      child: Text(
                        "See All",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade300,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 20,
                      color: Colors.blue.shade300,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.only(
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
      drawer: const LeftSideBarDrawer(),
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   HomeScreen({Key? key}) : super(key: key);

//   final List<String> imageList = [
//     "assets/images/promotion/50%_promotion.png",
//     "assets/images/promotion/promotion.jpg",
//     "assets/images/promotion/sale_promotion.jpg",
//   ];

//   String token = "";
  
  
//   // shared preference and API
//   void getCred() {
//     // fetch token from shared preference
//     // SharedPreferences.getInstance().then((prefs) {
//     //   print(prefs.getString('token'));
//     // });
//     Future<SharedPreferences> prefs = SharedPreferences.getInstance();
//     WidgetsFlutterBinding.ensureInitialized();
//     prefs.then((prefs) {
//       token = prefs.getString('token')!;
//       print(token);
       
//     });
//     // prefs.get(key: 'token').then((value) {
//     //   print(value);
//     //   token = value;
//     // });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         iconTheme: IconThemeData(color: Colors.black),
//         centerTitle: true,
//         title: Text(
//           "MEMBERSHIP APPS",
//           style: TextStyle(
//             color: Colors.black,
//           ),
//         ),
//         backgroundColor: Colors.white,
//         actions: [
//           IconButton(
//             icon: Icon(
//               Icons.notifications_active,
//               color: Colors.yellow,
//             ),
//             onPressed: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => AppNotification()));
//             },
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: SafeArea(
//           child: Container(
//             padding: EdgeInsets.symmetric(horizontal: 10),
//             child: Column(
//               children: <Widget>[
//                 Padding(
//                   padding: EdgeInsets.only(top: 10),
//                 ),
//                 // Row(
//                 //   // will do drawer widget here
//                 //   // Display membership app and menu icon
//                 //   children: [
//                 //     Icon(
//                 //       Icons.menu,
//                 //       size: 30,
//                 //       color: Colors.black,
//                 //     ),
//                 //     SizedBox(
//                 //       width: 90,
//                 //     ),
//                 //     Text(
//                 //       "MEMBERSHIP APP",
//                 //       style: TextStyle(
//                 //         fontSize: 20,
//                 //         fontWeight: FontWeight.bold,
//                 //       ),
//                 //     ),
//                 //   ],
//                 // ),

//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text("Your Token : $token",
//                     style: TextStyle(
//                       fontSize: 20,
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold,
//                     )),
//                 MemberCard(),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 FeaturesWidget(),
//                 SizedBox(
//                   height: 20,
//                 ),

//                 Row(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.only(
//                         top: 5,
//                       ),
//                     ),
//                     Row(
//                       children: [
//                         Text(
//                           "Promotion",
//                           style: TextStyle(
//                             fontSize: 17,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.blue,
//                           ),
//                         ),
//                       ],
//                     ),
//                     Spacer(),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => PromotionPage()));
//                       },
//                       child: Text(
//                         "See All",
//                         style: TextStyle(
//                           fontSize: 17,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.blue.shade300,
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Icon(
//                       Icons.arrow_forward_ios_sharp,
//                       size: 20,
//                       color: Colors.blue.shade300,
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Container(
//                   padding: EdgeInsets.only(
//                     top: 10,
//                   ),
//                   child: PromotionSlider(
//                     imageList: imageList,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//       drawer: LeftSideBarDrawer(),
//     );
//   }
// }
