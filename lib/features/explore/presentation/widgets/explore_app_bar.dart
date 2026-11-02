import 'package:drosak/core/resources/app_colors.dart';
import 'package:drosak/core/resources/app_fonts.dart';
import 'package:drosak/core/resources/app_sizes.dart';
import 'package:drosak/core/resources/app_strings.dart';
import 'package:flutter/material.dart';

class ExploreAppBar extends StatelessWidget implements PreferredSizeWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      actions: [
        Text(
          AppStrings.exploreApp,
          style: TextStyle(
            fontSize: AppSizes.sp20,
            fontFamily: AppFonts.geDinarOne,
            color: AppColors.primaryPurple,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
