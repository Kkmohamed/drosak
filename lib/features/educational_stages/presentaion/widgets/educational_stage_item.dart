import 'package:drosak/core/resources/app_colors.dart';
import 'package:drosak/core/resources/app_fonts.dart';
import 'package:drosak/core/resources/app_sizes.dart';
import 'package:drosak/features/educational_stages/data/models/educational_stage_item_model.dart';
import 'package:flutter/material.dart';

class EducationalStageItem extends StatelessWidget {
  const EducationalStageItem({
    super.key,
    required this.educationalStageItemModel,
  });

  final EducationalStageItemModel educationalStageItemModel;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -10,
            right: -10,
            child: CircleAvatar(
              backgroundColor: AppColors.primaryPurple,
              radius: AppSizes.r12,
              child: Text(
                "${educationalStageItemModel.id + 1}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: AppSizes.sp12,
                  fontWeight: FontWeight.w500,
                  fontFamily: AppFonts.geDinarOne,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: AppSizes.pw22,
              vertical: AppSizes.ph8,
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: AppColors.primaryPurple,
                  spreadRadius: -3,
                  blurStyle: BlurStyle.outer,
                ),
              ],
              border: Border.all(color: AppColors.primaryPurple, width: 1),
              borderRadius: BorderRadius.circular(AppSizes.r18),
            ),
            child: ListTile(
              title: Text(
                educationalStageItemModel.title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: AppSizes.sp16,
                  fontWeight: FontWeight.w500,
                  fontFamily: AppFonts.geDinarOne,
                ),
              ),
              subtitle: Text(
                textAlign: TextAlign.start,
                educationalStageItemModel.desc,
                style: TextStyle(
                  color: AppColors.subTitleColor,
                  fontSize: AppSizes.sp10,
                  fontWeight: FontWeight.w500,
                  fontFamily: AppFonts.geDinarOne,
                ),
              ),
              contentPadding: EdgeInsets.zero,
              trailing: CircleAvatar(
                radius: AppSizes.r32,
                backgroundImage: AssetImage(educationalStageItemModel.image),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
