import 'dart:async';

import 'app_database.dart';

import '../../../domain/app_wide_entities/task_entity.dart';
import 'local_data_source.dart';

//This is all where we will handle db work.

class LocalDataSourceImpl implements LocalDataSource {
  final AppDatabase? appDatabase;
  LocalDataSourceImpl({this.appDatabase});
  @override
  Future<void> addNewTask({TaskEntity? task}) async {
    await appDatabase!.taskDao!.insertTask(task!);
  }

  @override
  Future<void> deleteATask({TaskEntity? deleteTask}) async {
    await appDatabase!.taskDao!.deleteTask(deleteTask!);
  }

  @override
  Future<List<TaskEntity>> getAllTask() async {
    final _taskList = await appDatabase!.taskDao!.getAllTasks();
    return _taskList;
  }
}
