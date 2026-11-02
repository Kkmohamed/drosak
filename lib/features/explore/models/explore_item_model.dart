import 'package:drosak/core/resources/app_images.dart';
import 'package:drosak/core/resources/app_strings.dart';

class ExploreItemModel {
  final String title;
  final String image;

  const ExploreItemModel({required this.title, required this.image});

  static List<ExploreItemModel> exploreList = [
    ExploreItemModel(title: AppStrings.groups, image: AppImages.onboarding2),
    ExploreItemModel(
      title: AppStrings.educationalStages,
      image: AppImages.onboarding1,
    ),
    ExploreItemModel(
      title: AppStrings.attendance,
      image: AppImages.onboarding3,
    ),
    ExploreItemModel(title: AppStrings.students, image: AppImages.onboarding4),
    ExploreItemModel(title: AppStrings.payments, image: AppImages.onboarding5),
  ];
}
