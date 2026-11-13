import 'package:drosak/core/resources/app_images.dart';
import 'package:drosak/core/widgets/vertical_spacing.dart';
import 'package:drosak/features/educational_stages/data/models/educational_stage_item_model.dart';
import 'package:drosak/features/educational_stages/presentaion/widgets/educational_stage_item.dart';
import 'package:flutter/material.dart';

class EducationalStageListView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      clipBehavior: Clip.none,
      itemBuilder: (context, index) => EducationalStageItem(
        educationalStageItemModel: EducationalStageItemModel(
          id: index,
          title: "الصف الأول الإعدادي",
          desc: "تلك الصف هو الصف الاعدادي وفي ثلاث طلاب مثلاتلك الصف هو الصف الاعدادي وفي ثلاث طلاب مثلاتلك الصف هو الصف الاعدادي وفي ثلاث طلاب مثلا",
          image: AppImages.defaultImage,
        ),
      ),
      separatorBuilder: (context, index) => VerticalSpacing(16),
      itemCount: 10,
    );
  }
}
