import 'package:drosak/core/resources/app_sizes.dart';
import 'package:drosak/core/resources/app_strings.dart';
import 'package:drosak/core/widgets/custom_button.dart';
import 'package:drosak/core/widgets/vertical_spacing.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_text_form_field.dart';

class ModalBottomSheet extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
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
  }
}
