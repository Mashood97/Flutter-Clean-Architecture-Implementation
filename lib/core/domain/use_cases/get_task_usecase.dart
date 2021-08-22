import '../app_wide_entities/task_entity.dart';
import '../repository_declaration/local_repository.dart';

//This use case will be used to get all tasks.
class GetAllTaskUseCase {
  final LocalRepository? localRepository;

  GetAllTaskUseCase({this.localRepository});

  Future<List<TaskEntity>> call() {
    return localRepository!.getAllTask();
  }
}
