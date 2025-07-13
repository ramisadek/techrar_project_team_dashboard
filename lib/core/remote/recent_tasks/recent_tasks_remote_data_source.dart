import 'package:techrar_project_team_dashboard/core/core/network/models/response_model.dart';
import 'package:techrar_project_team_dashboard/core/remote/recent_tasks/models/recent_tasks_network_model.dart';

abstract class RecentTasksRemoteDataSource {
  Future<ResponseModel<TasksListNetworkModel>> getRecentTasks();
}