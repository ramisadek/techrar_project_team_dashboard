import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:techrar_project_team_dashboard/core/models/colleges/colleges_model.dart';
import 'package:techrar_project_team_dashboard/core/models/tasks/tasks_model.dart';

part 'team_dashboard_state.freezed.dart';

@freezed
sealed class TeamDashboardState with _$TeamDashboardState{
  const factory TeamDashboardState({
    required List<CollegesModel> collegesList,
    required List<TaskModel> recentTaskList,
  }) = _TeamDashboardState;
}
