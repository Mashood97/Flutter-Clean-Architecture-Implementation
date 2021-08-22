import '../app_wide_entities/task_entity.dart';
import '../repository_declaration/local_repository.dart';

//This use case will be used to add a new task.
class AddTaskUseCase {
  final LocalRepository? localRepository;

  AddTaskUseCase({this.localRepository});

  Future<void> call(TaskEntity task) {
    return localRepository!.addNewTask(task: task);
  }
}
