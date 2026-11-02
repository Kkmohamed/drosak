import 'package:drosak/features/onboarding/models/onboarding_item_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/resources/app_fonts.dart';
import '../../../../core/resources/app_sizes.dart';
import '../../../../core/widgets/vertical_spacing.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({super.key, required this.onboardingItemModel});

  final OnboardingItemModel onboardingItemModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          onboardingItemModel.image,
          height: AppSizes.h200,
          width: AppSizes.w300,
        ),
        VerticalSpacing(50),
        Text(
          textAlign: TextAlign.center,
          onboardingItemModel.title,
          style: TextStyle(
            fontFamily: AppFonts.aaGalaxy,
            fontSize: AppSizes.sp20,
          ),
        ),
      ],
    );
  }
}
