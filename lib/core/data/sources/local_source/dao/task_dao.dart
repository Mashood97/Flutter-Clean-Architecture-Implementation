import 'package:floor/floor.dart';

import '../../../../../helpers/constant/constant_app.dart';
import '../../../../domain/app_wide_entities/task_entity.dart';

@dao
abstract class TaskDao {
  @Query('SELECT * FROM $kTaskTblName')
  Future<List<TaskEntity>> getAllTasks();

  @insert
  Future<void> insertTask(TaskEntity? tasks);

  @delete
  Future<void> deleteTask(TaskEntity? deletedTask);
}
