import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:techrar_project_team_dashboard/core/core/network/models/response_model.dart';
import 'package:techrar_project_team_dashboard/core/data/colleges/colleges_repository.dart';
import 'package:techrar_project_team_dashboard/core/data/colleges/colleges_repository_imp.dart';
import 'package:techrar_project_team_dashboard/core/data/tasks/tasks_repository.dart';
import 'package:techrar_project_team_dashboard/core/data/tasks/tasks_repository_imp.dart';
import 'package:techrar_project_team_dashboard/core/models/colleges/colleges_model.dart';
import 'package:techrar_project_team_dashboard/core/models/tasks/tasks_model.dart';
import 'package:techrar_project_team_dashboard/features/team_dashboard/view_model/team_dashboard_state.dart';

part 'team_dashboard_view_model.g.dart';

@riverpod
class TeamDashboardViewModel extends _$TeamDashboardViewModel {
  CollegesRepository get _collegesRepository => ref.read(collegesRepositoryProvider);
  TasksRepository get _tasksRepository => ref.read(tasksRepositoryProvider);

  @override
  FutureOr<TeamDashboardState> build() async {
    return TeamDashboardState(collegesList: await getCollegesList(), recentTaskList: await getRecentTaskList());
  }

  Future<List<TaskModel>> getRecentTaskList() async {
    ResponseModel<List<TaskModel>> response = await _tasksRepository.getRecentTasksList();

    if (response.errorMsg.isNotEmpty) {
      throw AsyncError(response.errorMsg, StackTrace.empty);
    }

    return response.data;
  }

  Future<List<CollegesModel>> getCollegesList() async {
    ResponseModel<List<CollegesModel>> response = await _collegesRepository.getCollegesList();

    if (response.errorMsg.isNotEmpty) {
      throw AsyncError(response.errorMsg, StackTrace.empty);
    }

    return response.data;
  }
}
