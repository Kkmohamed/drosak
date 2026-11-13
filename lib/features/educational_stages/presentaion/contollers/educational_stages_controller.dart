import 'package:drosak/features/educational_stages/data/repos/educational_stages_repo.dart';
import 'package:flutter/material.dart';

import '../../data/models/educational_stage_item_model.dart';

class EducationalStagesController extends ChangeNotifier {
  final EducationalStagesRepo repo;
  bool isEmpty = false;
  List<EducationalStageItemModel> educationalStages = [];

  EducationalStagesController(this.repo) {
    getAllEducations();
  }

  getAllEducations() async {
    educationalStages = await repo.getAllEducations();
    if (educationalStages.isEmpty) {
      isEmpty = true;
    } else {
      isEmpty = false;
    }
    notifyListeners();
  }

  insertNewEducationalStage(EducationalStageItemModel model) async {
    await repo.insertNewEducationalStage(model);
    getAllEducations();
  }

  updateEducationalStage(EducationalStageItemModel model) async {
    await repo.updateEducationalStage(model);
    getAllEducations();
  }

  deleteEducationalStage(EducationalStageItemModel model) async {
    await repo.deleteEducationalStage(model);
    getAllEducations();
  }
}
