import 'package:drosak/core/resources/app_colors.dart';
import 'package:drosak/core/resources/app_sizes.dart';
import 'package:drosak/core/resources/app_strings.dart';
import 'package:drosak/core/widgets/custom_button.dart';
import 'package:drosak/core/widgets/vertical_spacing.dart';
import 'package:drosak/features/educational_stages/presentaion/widgets/educational_stage_list_view.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/custom_app_bar.dart';
import '../../../core/widgets/custom_text_form_field.dart';

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
              return Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSizes.pw12,
                      vertical: AppSizes.ph20,
                    ),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppSizes.r12),
                        topRight: Radius.circular(AppSizes.r12),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: CustomTextFormField(
                                title: AppStrings.educationalStageName,
                                maxLines: 1,
                              ),
                            ),
                            IconButton(
                              color: Colors.white,
                              onPressed: () {},
                              icon: Icon(Icons.image),
                            ),
                          ],
                        ),
                        VerticalSpacing(16),
                        CustomTextFormField(
                          title: AppStrings.educationalStageDesc,
                          maxLines: 3,
                        ),
                        VerticalSpacing(16),
                        CustomButton(onPressed: () {}, title: AppStrings.add),
                      ],
                    ),
                  ),
                ),
              );
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
