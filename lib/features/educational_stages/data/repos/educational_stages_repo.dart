import 'package:drosak/core/datasources/local/db_constants.dart';
import 'package:drosak/core/datasources/local/sqflite_database.dart';
import 'package:drosak/features/educational_stages/data/models/educational_stage_item_model.dart';

class EducationalStagesRepo {
  SqfliteDatabase database;

  EducationalStagesRepo(this.database);

  Future<List<EducationalStageItemModel>> getAllEducations() async {
    final data = await database.getAll(DbConstants.educationalStageTableName);
    final result = data
        .map((e) => EducationalStageItemModel.fromMap(e))
        .toList();
    return result;
  }

  Future<int> insertNewEducationalStage(EducationalStageItemModel model) {
    final result = database.insert(
      DbConstants.educationalStageTableName,
      model.toMap(),
    );
    print(result);
    return result;
  }

  Future<int> updateEducationalStage(EducationalStageItemModel model) {
    final result = database.update(
      DbConstants.educationalStageTableName,
      model.toMap(),
      "${DbConstants.educationalStageId} = ?",
      [model.id],
    );
    print(result);
    return result;
  }

  Future<int> deleteEducationalStage(EducationalStageItemModel model) {
    final result = database.delete(
      DbConstants.educationalStageTableName,
      "${DbConstants.educationalStageId} = ?",
      [model.id],
    );
    print(result);
    return result;
  }
}
