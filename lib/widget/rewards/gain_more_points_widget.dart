import 'package:flutter/material.dart';

import '../../models/rewardsModel.dart';
import 'rewards_card.dart';

class GainMorePointWidget extends StatelessWidget {
  const GainMorePointWidget({
    Key? key,
    required List<RewardsData> rewardsdata,
  })  : _rewardsdata = rewardsdata,
        super(key: key);

  final List<RewardsData> _rewardsdata;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      width: MediaQuery.of(context).size.width * 0.79,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _rewardsdata.length,
        itemBuilder: (BuildContext context, int index) {
          return RewardCard(
            //rewards card because purchase to earn points
            rewardsName: _rewardsdata[index].rewardsName,
            imagePath: _rewardsdata[index].imagePath,
            points: _rewardsdata[index].points,
            price: _rewardsdata[index].price,
          );
        },
      ),
    );
  }
}
