import 'package:drosak/core/resources/app_colors.dart';
import 'package:drosak/core/resources/app_fonts.dart';
import 'package:drosak/core/resources/app_sizes.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({super.key, required this.title, this.maxLines = 1});

  final String title;
  int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hint: Text(title),
        hintStyle: TextStyle(
          fontSize: AppSizes.sp14,
          fontFamily: AppFonts.geDinarOne,
          fontWeight: FontWeight.w500,
          color: AppColors.unselected,
        ),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Colors.black.withValues(alpha: .6),
          ),
          borderRadius: BorderRadius.circular(AppSizes.r12),
        ),
      ),
    );
  }
}
