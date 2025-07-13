import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:techrar_project_team_dashboard/core/models/tasks/tasks_model.dart';

part 'user_tasks_state.freezed.dart';

@freezed
sealed class UserTasksState with _$UserTasksState{
  const factory UserTasksState({
    required List<TaskModel> userTasksList,
    required bool isFiltered
  }) = _UserTasksState;
}
