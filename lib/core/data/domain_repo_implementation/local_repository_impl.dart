import '../sources/local_source/local_data_source.dart';
import '../../domain/app_wide_entities/task_entity.dart';
import '../../domain/repository_declaration/local_repository.dart';

class LocalRepositoryImplementation implements LocalRepository {
  //Here we will initialize the local data source and pass to constructor of implementaion of repo.
  final LocalDataSource? localDataSource;

  LocalRepositoryImplementation({
    this.localDataSource,
  });

  @override
  Future<void> addNewTask({TaskEntity? task}) =>
      localDataSource!.addNewTask(task: task);

  @override
  Future<void> deleteATask({TaskEntity? deleteTask}) =>
      localDataSource!.deleteATask(deleteTask: deleteTask);

  @override
  Future<List<TaskEntity>> getAllTask() => localDataSource!.getAllTask();
}
