import '../app_wide_entities/task_entity.dart';
import '../repository_declaration/local_repository.dart';

//This use case will be used to delete a  task.
class DeleteTaskUseCase {
  final LocalRepository? localRepository;

  DeleteTaskUseCase({this.localRepository});

  Future<void> call(TaskEntity task) {
    return localRepository!.deleteATask(deleteTask: task);
  }
}
