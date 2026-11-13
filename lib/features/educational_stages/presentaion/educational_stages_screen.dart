import 'package:drosak/core/resources/app_colors.dart';
import 'package:drosak/core/resources/app_sizes.dart';
import 'package:drosak/core/resources/app_strings.dart';
import 'package:drosak/features/educational_stages/presentaion/widgets/educational_stage_list_view.dart';
import 'package:drosak/features/educational_stages/presentaion/widgets/modal_bottom_sheet.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/custom_app_bar.dart';

class EducationalStagesScreen extends StatelessWidget {
  const EducationalStagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppStrings.educationalStages,
        onPressedSearch: () {},
        onPressedAdd: () {
          showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: AppColors.gray,
            context: context,
            builder: (context) {
              return ModalBottomSheet();
            },
          );
        },
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.pw16,
          vertical: AppSizes.ph16,
        ),
        child: EducationalStageListView(),
      ),
    );
  }
}
