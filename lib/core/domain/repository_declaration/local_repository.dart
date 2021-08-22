import '../app_wide_entities/task_entity.dart';

//This will be the interface of local repo, we will implement it inside data repository and
//Every usecase needs a object of local repository.
abstract class LocalRepository {
  Future<void> addNewTask({TaskEntity? task});
  Future<void> deleteATask({TaskEntity? deleteTask});
  Future<List<TaskEntity>> getAllTask();
}
