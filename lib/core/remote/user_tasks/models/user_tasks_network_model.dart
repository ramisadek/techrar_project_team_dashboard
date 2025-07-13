import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_tasks_network_model.freezed.dart';
part 'user_tasks_network_model.g.dart';

enum UserTaskNetworkStatus {
  @JsonValue("todo")
  todo,
  @JsonValue("in_progress")
  inProgress,
  @JsonValue("test")
  testing,
  @JsonValue("done")
  done,
}

@freezed
sealed class UserTasksListNetworkModel with _$UserTasksListNetworkModel {
  const UserTasksListNetworkModel._();
  const factory UserTasksListNetworkModel({@Default([]) @JsonKey(name: 'data') List<UserTaskNetworkModel> tasksList}) =
      _UserTasksListNetworkModel;

  factory UserTasksListNetworkModel.fromJson(Map<String, dynamic> json) => _$UserTasksListNetworkModelFromJson(json);

  bool get isEmpty => this == UserTasksListNetworkModel.empty();
  bool get isNotEmpty => this != UserTasksListNetworkModel.empty();

  factory UserTasksListNetworkModel.empty() {
    return UserTasksListNetworkModel(tasksList: []);
  }
}

@freezed
sealed class UserTaskNetworkModel with _$UserTaskNetworkModel {
  const UserTaskNetworkModel._();
  const factory UserTaskNetworkModel({
    required int userId,
    required int id,
    @Default("") String title,
    @Default("") String assignedUser,
    DateTime? dueDate,
    @JsonKey(name: 'task_status') required UserTaskNetworkStatus taskEnum,
  }) = _UserTaskNetworkModel;

  factory UserTaskNetworkModel.fromJson(Map<String, dynamic> json) => _$UserTaskNetworkModelFromJson(json);

  bool get isEmpty => this == UserTaskNetworkModel.empty();
  bool get isNotEmpty => this != UserTaskNetworkModel.empty();

  factory UserTaskNetworkModel.empty() {
    return UserTaskNetworkModel(
      userId: 0,
      id: 0,
      title: '',
      assignedUser: '',
      dueDate: DateTime.now(),
      taskEnum: UserTaskNetworkStatus.todo,
    );
  }
}
