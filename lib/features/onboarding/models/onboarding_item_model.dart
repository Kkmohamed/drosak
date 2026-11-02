import 'package:drosak/core/resources/app_images.dart';
import 'package:drosak/core/resources/app_strings.dart';

class OnboardingItemModel {
  final String image;
  final String title;

  const OnboardingItemModel({required this.image, required this.title});

  static List<OnboardingItemModel> onboardingList = [
    OnboardingItemModel(
      image: AppImages.onboarding1,
      title: AppStrings.onboardingText1,
    ),
    OnboardingItemModel(
      image: AppImages.onboarding2,
      title: AppStrings.onboardingText2,
    ),
    OnboardingItemModel(
      image: AppImages.onboarding3,
      title: AppStrings.onboardingText3,
    ),
    OnboardingItemModel(
      image: AppImages.onboarding4,
      title: AppStrings.onboardingText4,
    ),
    OnboardingItemModel(
      image: AppImages.onboarding5,
      title: AppStrings.onboardingText5,
    ),
  ];
}
