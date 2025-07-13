import 'package:freezed_annotation/freezed_annotation.dart';

part 'recent_tasks_network_model.freezed.dart';
part 'recent_tasks_network_model.g.dart';

enum TaskNetworkStatus {
  @JsonValue("todo")
  todo,
  @JsonValue("in_progress")
  inProgress,
  @JsonValue("testing")
  testing,
  @JsonValue("done")
  done,
}

@freezed
sealed class TasksListNetworkModel with _$TasksListNetworkModel {
  const TasksListNetworkModel._();
  const factory TasksListNetworkModel({@Default([]) @JsonKey(name: 'data') List<TaskNetworkModel> tasksList}) =
      _TasksListNetworkModel;

  factory TasksListNetworkModel.fromJson(Map<String, dynamic> json) => _$TasksListNetworkModelFromJson(json);

  bool get isEmpty => this == TasksListNetworkModel.empty();
  bool get isNotEmpty => this != TasksListNetworkModel.empty();

  factory TasksListNetworkModel.empty() {
    return TasksListNetworkModel(tasksList: []);
  }
}

@freezed
sealed class TaskNetworkModel with _$TaskNetworkModel {
  const TaskNetworkModel._();
  const factory TaskNetworkModel({
    @Default("") String title,
    @Default("") String assignedUser,
    DateTime? dueDate,
    @JsonKey(name: 'task_status') required TaskNetworkStatus taskEnum,
  }) = _TaskNetworkModel;

  factory TaskNetworkModel.fromJson(Map<String, dynamic> json) => _$TaskNetworkModelFromJson(json);

  bool get isEmpty => this == TaskNetworkModel.empty();
  bool get isNotEmpty => this != TaskNetworkModel.empty();

  factory TaskNetworkModel.empty() {
    return TaskNetworkModel(title: '', assignedUser: '', dueDate: DateTime.now(), taskEnum: TaskNetworkStatus.todo);
  }
}
