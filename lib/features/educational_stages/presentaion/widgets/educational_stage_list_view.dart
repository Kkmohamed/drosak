import 'package:drosak/core/widgets/vertical_spacing.dart';
import 'package:drosak/features/educational_stages/presentaion/widgets/educational_stage_item.dart';
import 'package:flutter/material.dart';

class EducationalStageListView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => EducationalStageItem(),
      separatorBuilder: (context, index) => VerticalSpacing(16),
      itemCount: 10,
    );
  }
}
