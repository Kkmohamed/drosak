import 'package:drosak/core/resources/app_colors.dart';
import 'package:drosak/core/resources/app_fonts.dart';
import 'package:drosak/core/resources/app_sizes.dart';
import 'package:drosak/core/widgets/vertical_spacing.dart';
import 'package:drosak/features/explore/models/explore_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExploreItem extends StatelessWidget {
  const new({super.key, required this.model});

  final ExploreItemModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSizes.pw6),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurStyle: BlurStyle.outer,
            color: AppColors.primaryPurple,
            spreadRadius: 1,
            offset: Offset(0, 0),
            blurRadius: 10,
          ),
        ],
        borderRadius: BorderRadius.circular(AppSizes.r18),
        border: Border.all(width: 1, color: AppColors.primaryPurple),
        color: Colors.transparent,
      ),
      child: Column(
        children: [
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.pw6),
              height: AppSizes.h26,
              decoration: BoxDecoration(
                color: AppColors.primaryPurple,
                borderRadius: BorderRadius.circular(AppSizes.r12),
              ),
              width: double.infinity,
              child: Text(
                model.title,
                style: TextStyle(
                  fontSize: AppSizes.sp16,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontFamily: AppFonts.geDinarOne,
                ),
              ),
            ),
          ),
          VerticalSpacing(6),
          Expanded(child: SvgPicture.asset(model.image)),
        ],
      ),
    );
  }
}
