import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:techrar_project_team_dashboard/core/core/network/models/response_model.dart';
import 'package:techrar_project_team_dashboard/core/data/tasks/tasks_repository.dart';
import 'package:techrar_project_team_dashboard/core/models/tasks/tasks_model.dart';
import 'package:techrar_project_team_dashboard/core/remote/recent_tasks/mappers/recent_tasks_network_list_mapper.dart';
import 'package:techrar_project_team_dashboard/core/remote/recent_tasks/recent_tasks_remote_data_source.dart';
import 'package:techrar_project_team_dashboard/core/remote/recent_tasks/recent_tasks_remote_data_source_imp.dart';
import 'package:techrar_project_team_dashboard/core/remote/user_tasks/mappers/user_tasks_network_list_mapper.dart';
import 'package:techrar_project_team_dashboard/core/remote/user_tasks/user_tasks_remote_data_source.dart';
import 'package:techrar_project_team_dashboard/core/remote/user_tasks/user_tasks_remote_data_source_imp.dart';

part 'tasks_repository_imp.g.dart';

@riverpod
TasksRepository tasksRepository(Ref ref) {
  final recentTasksRemoteDataSource = ref.read(recentTasksRemoteDataSourceProvider);
  final userTasksRemoteDataSource = ref.read(userTasksRemoteDataSourceProvider);

  return _TasksRepositoryImp(
    recentTasksRemoteDataSource: recentTasksRemoteDataSource,
    userTasksRemoteDataSource: userTasksRemoteDataSource,
  );
}

class _TasksRepositoryImp implements TasksRepository {
  final RecentTasksRemoteDataSource _recentTasksRemoteDataSource;
  final UserTasksRemoteDataSource _userTasksRemoteDataSource;

  _TasksRepositoryImp({
    required RecentTasksRemoteDataSource recentTasksRemoteDataSource,
    required UserTasksRemoteDataSource userTasksRemoteDataSource,
  }) : _recentTasksRemoteDataSource = recentTasksRemoteDataSource,
       _userTasksRemoteDataSource = userTasksRemoteDataSource;
  @override
  Future<ResponseModel<List<TaskModel>>> getRecentTasksList() async {
    final response = await _recentTasksRemoteDataSource.getRecentTasks();
    final modelList = RecentTasksNetworkListMapper.convertNetworkList(response.data);

    return ResponseModel(data: modelList, errorMsg: response.errorMsg);
  }

  @override
  Future<ResponseModel<List<TaskModel>>> getUserTasksList() async {
    final response = await _userTasksRemoteDataSource.getUserTasks();
    final modelList = UserTasksNetworkListMapper.convertNetworkList(response.data);

    return ResponseModel(data: modelList, errorMsg: response.errorMsg);
  }
}
