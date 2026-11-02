import 'package:drosak/features/onboarding/controller/onboarding_controller.dart';
import 'package:drosak/features/onboarding/models/onboarding_item_model.dart';
import 'package:drosak/features/onboarding/presentation/widgets/onboarding_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'onboarding_bottom_nav.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, OnboardingController controller, child) {
        return Column(
          children: [
            Expanded(
              child: PageView.builder(
                onPageChanged: controller.onPageChanged,
                controller: controller.pageController,
                itemCount: OnboardingItemModel.onboardingList.length,
                itemBuilder: (context, index) {
                  final model = OnboardingItemModel.onboardingList[index];
                  return OnboardingItem(onboardingItemModel: model);
                },
              ),
            ),
            OnboardingBottomNav(),
          ],
        );
      },
    );
  }
}
