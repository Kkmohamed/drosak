import 'package:drosak/core/resources/app_colors.dart';
import 'package:drosak/core/resources/app_fonts.dart';
import 'package:drosak/core/resources/app_sizes.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.onPressedSearch,
    required this.onPressedAdd,
  });

  final String title;
  final void Function() onPressedSearch;
  final void Function() onPressedAdd;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: AppBar(
        backgroundColor: AppColors.primaryPurple,
        automaticallyImplyLeading: false,
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontFamily: AppFonts.geDinarOne,
            fontSize: AppSizes.sp16,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
            onPressed: onPressedAdd,
            icon: Icon(
              Icons.add_circle_outline_rounded,
              color: Colors.white,
              size: AppSizes.w24,
            ),
          ),
          IconButton(
            onPressed: onPressedSearch,
            icon: Icon(Icons.search, color: Colors.white, size: AppSizes.w24),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
