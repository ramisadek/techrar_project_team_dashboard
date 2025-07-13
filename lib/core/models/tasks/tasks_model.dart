import 'package:freezed_annotation/freezed_annotation.dart';

part 'tasks_model.freezed.dart';
part 'tasks_model.g.dart';

enum TaskStatus { todo, inProgress, testing, done }

@freezed
sealed class TaskModel with _$TaskModel {
  const factory TaskModel({
    required String title,
    required String assignedUser,
    required DateTime dueDate,
    required TaskStatus taskStatus,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) => _$TaskModelFromJson(json);

}
