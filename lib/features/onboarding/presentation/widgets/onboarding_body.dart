import 'package:drosak/core/resources/app_colors.dart';
import 'package:drosak/core/resources/app_sizes.dart';
import 'package:drosak/features/onboarding/models/onboarding_item_model.dart';
import 'package:drosak/features/onboarding/presentation/widgets/onboarding_item.dart';
import 'package:flutter/material.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            itemBuilder: (context, index) {
              final model = OnboardingItemModel.onboardingList[index];
              return OnboardingItem(onboardingItemModel: model);
            },
          ),
        ),
        Container(
          width: double.infinity,
          height: AppSizes.h40,
          color: AppColors.primaryPurple,
        ),
      ],
    );
  }
}
