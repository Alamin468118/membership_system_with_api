// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../home_screen.dart';
import '../widget/feedback/first_tab.dart';
import '../widget/feedback/second_tab.dart';

class FeedbackInfo extends StatelessWidget {
  FeedbackInfo({Key? key}) : super(key: key);
  // TabController _tabController;

  //  @override
  // void initState() {
  //   _tabController = TabController(length: 2, vsync: this);
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _tabController.dispose();
  // }

  // enum _Tab { one, two }
  // _Tab _selectedTab = _Tab.one;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.insert_comment)),
              Tab(icon: Icon(Icons.feedback)),
            ],
          ),
          title: Center(
            child: Text(
              'Feedback',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            FirstTab(context),
            // second tab
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
              child: SingleChildScrollView(
                child: SecondTab(context),
              ),
            ),

            // Icon(Icons.directions_transit, size: 350),
          ],
        ),
      ),
    );
  }
}
