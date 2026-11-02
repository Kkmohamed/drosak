import 'package:dots_indicator/dots_indicator.dart';
import 'package:drosak/core/datasources/local/preferences_manager.dart';
import 'package:drosak/core/datasources/local/prefs_keys.dart';
import 'package:drosak/core/navigation/app_routes.dart';
import 'package:drosak/core/resources/app_colors.dart';
import 'package:drosak/core/resources/app_fonts.dart';
import 'package:drosak/core/resources/app_sizes.dart';
import 'package:drosak/core/resources/app_strings.dart';
import 'package:drosak/features/onboarding/controller/onboarding_controller.dart';
import 'package:drosak/features/onboarding/models/onboarding_item_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OnboardingBottomNav extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, OnboardingController controller, child) => Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.pw8,
          vertical: AppSizes.ph8,
        ),
        width: double.infinity,
        height: AppSizes.h40,
        color: AppColors.primaryPurple,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Visibility(
              visible: !controller.isLastPage,
              child: InkWell(
                onTap: () {
                  navigateToNextScreen(context);
                  markOnboardingCompleted();
                },
                child: Text(
                  AppStrings.skip,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: AppSizes.sp16,
                    fontFamily: AppFonts.geDinarOne,
                  ),
                ),
              ),
            ),
            DotsIndicator(
              position: controller.currentPage.toDouble(),
              decorator: DotsDecorator(
                activeColor: Colors.white,
                color: Colors.white.withValues(alpha: .3),
              ),
              dotsCount: OnboardingItemModel.onboardingList.length,
            ),
            InkWell(
              onTap: () {
                if (!controller.isLastPage)
                  controller.goToNextPage();
                else {
                  navigateToNextScreen(context);
                  markOnboardingCompleted();
                }
              },
              child: Text(
                AppStrings.next,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: AppSizes.sp16,
                  fontFamily: AppFonts.geDinarOne,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void navigateToNextScreen(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoutes.exploreRoute);
  }

  void markOnboardingCompleted() {
    PreferencesManager().setBool(PrefsKeys.onboardingCompleted, true);
  }
}
