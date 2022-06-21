import 'package:flutter/material.dart';

import '../../home_screen.dart';
import '../rebate/elite_rebate.dart';
import '../rebate/gold_rebate.dart';
import '../rebate/platinum_rebate.dart';
import '../rebate/ten_percent_rebate.dart';

class MembershipRebate extends StatelessWidget {
  const MembershipRebate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(10),
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
                        (Icons.arrow_back_ios),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 90,
                  ),
                  const Text(
                    "Membership Rebate",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const TenPercentMembershipRebate(),
              const SizedBox(
                height: 20,
              ),
              const EliteMembershipRebate(),
              const SizedBox(
                height: 20,
              ),
              const GoldMembershipRebate(),
              const SizedBox(
                height: 20,
              ),
              const PlatinumMembershipRebate(),
            ],
          ),
        ),
      ),
    );
  }
}
