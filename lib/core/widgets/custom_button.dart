import 'package:drosak/core/resources/app_colors.dart';
import 'package:drosak/core/resources/app_sizes.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.title});

  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: AppSizes.w140,
        height: AppSizes.h40,
        decoration: BoxDecoration(
          color: AppColors.primaryPurple,
          borderRadius: BorderRadius.circular(AppSizes.r12),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: AppSizes.sp16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
