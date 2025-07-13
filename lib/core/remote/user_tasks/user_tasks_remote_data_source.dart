import 'package:techrar_project_team_dashboard/core/core/network/models/response_model.dart';

import 'models/user_tasks_network_model.dart';

abstract class UserTasksRemoteDataSource {
  Future<ResponseModel<UserTasksListNetworkModel>> getUserTasks();
}