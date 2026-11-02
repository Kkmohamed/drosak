import 'package:drosak/core/resources/app_strings.dart';
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
        onPressedAdd: () {},
      ),
      body: Center(
        child: Text(
          "educational stages Screen",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
