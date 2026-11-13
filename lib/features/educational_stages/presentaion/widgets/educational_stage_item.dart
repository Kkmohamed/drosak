import 'package:drosak/core/resources/app_colors.dart';
import 'package:drosak/core/resources/app_fonts.dart';
import 'package:drosak/core/resources/app_images.dart';
import 'package:drosak/core/resources/app_sizes.dart';
import 'package:flutter/material.dart';

class EducationalStageItem extends StatelessWidget {
  const EducationalStageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.pw22,
          vertical: AppSizes.ph8,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primaryPurple, width: 1),
          borderRadius: BorderRadius.circular(AppSizes.r18),
        ),
        child: ListTile(
          title: Text(
            "الصف الأول الإعدادي",
            style: TextStyle(
              color: Colors.white,
              fontSize: AppSizes.sp16,
              fontWeight: FontWeight.w500,
              fontFamily: AppFonts.geDinarOne,
            ),
          ),
          subtitle: Text(
            textAlign: TextAlign.start,
            "تلك الصف هو الصف الاعدادي وفي ثلاث طلاب مثلاتلك الصف هو الصف الاعدادي وفي ثلاث طلاب مثلاتلك الصف هو الصف الاعدادي وفي ثلاث طلاب مثلا",
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
            backgroundImage: AssetImage(AppImages.defaultImage),
          ),
        ),
      ),
    );
  }
}
