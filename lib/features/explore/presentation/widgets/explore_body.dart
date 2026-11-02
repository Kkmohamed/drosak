import 'package:drosak/core/resources/app_sizes.dart';
import 'package:drosak/features/explore/models/explore_item_model.dart';
import 'package:flutter/material.dart';

import 'explore_item.dart';

class ExploreBody extends StatelessWidget {
  const ExploreBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.pw16),
        child: GridView.builder(
          itemCount: ExploreItemModel.exploreList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: AppSizes.pw40,
            mainAxisSpacing: AppSizes.ph40,
            childAspectRatio: 1.27,
          ),
          itemBuilder: (BuildContext context, int index) {
            final model = ExploreItemModel.exploreList[index];
            return ExploreItem(model: model);
          },
        ),
      ),
    );
  }
}
