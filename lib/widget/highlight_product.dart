import 'package:flutter/material.dart';
import 'package:membership_system_1/data/categoryData.dart';

import 'highlight_card.dart';
import '../models/categoryModel.dart';

class HighlightProduct extends StatelessWidget {
  HighlightProduct({Key? key}) : super(key: key);

  final List<Category> _categories = categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index) {
          return HighlightCard(
            categoryName: _categories[index].categoryName,
            imagePath: _categories[index].imagePath,
            noOfItem: _categories[index].noOfItem,
          );
        },
      ),
    );
  }
}
