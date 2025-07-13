import 'package:techrar_project_team_dashboard/core/core/network/models/response_model.dart';
import 'package:techrar_project_team_dashboard/core/models/tasks/tasks_model.dart';

abstract class TasksRepository {
  Future<ResponseModel<List<TaskModel>>> getRecentTasksList();
  Future<ResponseModel<List<TaskModel>>> getUserTasksList();
}