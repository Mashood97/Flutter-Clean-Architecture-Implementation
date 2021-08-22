import '../../domain/app_wide_entities/task_entity.dart';

//We didnt pass id as it will be auto generated by the local data source.
class TaskModel extends TaskEntity {
  TaskModel({
    final String? taskName,
    final String? time,
  }) : super(
          taskName: taskName!,
          time: time!,
        );

//This is where we define from json and to json methods.

  static TaskModel fromJson(Map<String, dynamic> json) {
    return TaskModel(
      taskName: json['taskName'],
      time: json['time'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "taskName": taskName,
      "time": time,
    };
  }
}
