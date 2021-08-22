import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/app_wide_entities/task_entity.dart';
import '../../domain/use_cases/add_task_usecase.dart';
import '../../domain/use_cases/delete_task_usecase.dart';
import '../../domain/use_cases/get_task_usecase.dart';

part 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  final AddTaskUseCase? addTaskUseCase;
  final DeleteTaskUseCase? deleteTaskUseCase;
  final GetAllTaskUseCase? getAllTaskUseCase;
  TaskCubit({
    this.addTaskUseCase,
    this.deleteTaskUseCase,
    this.getAllTaskUseCase,
  }) : super(TaskInitialState());

  Future<void> addNewTask({TaskEntity? entity}) async {
    try {
      await addTaskUseCase!.call(entity!);
    } catch (e) {
      emit(TaskFailureState());
    }
  }

  Future<void> deleteATask({TaskEntity? entity}) async {
    try {
      await deleteTaskUseCase!.call(entity!);
    } catch (e) {
      emit(TaskFailureState());
    }
  }

  Future<void> getAllTasks() async {
    try {
      await getAllTaskUseCase!.call();
    } catch (e) {
      emit(TaskFailureState());
    }
  }
}
