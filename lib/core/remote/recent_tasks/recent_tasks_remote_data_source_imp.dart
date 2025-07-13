import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:techrar_project_team_dashboard/core/core/network/dio_core.dart';
import 'package:techrar_project_team_dashboard/core/core/network/endpoints.dart';
import 'package:techrar_project_team_dashboard/core/core/network/models/response_model.dart';
import 'package:techrar_project_team_dashboard/core/core/network/providers/dio_core/dio_core_provider.dart';
import 'package:techrar_project_team_dashboard/core/models/network_models/dio_response.dart';
import 'package:techrar_project_team_dashboard/core/remote/recent_tasks/models/recent_tasks_network_model.dart';
import 'package:techrar_project_team_dashboard/core/remote/recent_tasks/recent_tasks_remote_data_source.dart';

part 'recent_tasks_remote_data_source_imp.g.dart';

@riverpod
RecentTasksRemoteDataSource recentTasksRemoteDataSource(Ref ref) {
  final DioCore dio = ref.read(dioProviderProvider);

  return _RecentTasksRemoteDataSourceImp(dio: dio);
}

class _RecentTasksRemoteDataSourceImp implements RecentTasksRemoteDataSource {
  final DioCore _dio;

  _RecentTasksRemoteDataSourceImp({required DioCore dio}) : _dio = dio;

  @override
  Future<ResponseModel<TasksListNetworkModel>> getRecentTasks() async {
    String endpoint = EndPoints.recentTasks.url;
    DioResponse response = await _dio.get(endPoint: endpoint);

    if (response.isContainError == false) {
      // This line is for mocking only
      Map<String, dynamic> data = jsonDecode(response.response.data);

      TasksListNetworkModel networkModel = TasksListNetworkModel.fromJson(data);
      print('=========> ${networkModel.tasksList.length}');
      return ResponseModel(data: networkModel, errorMsg: "");
    }

    return ResponseModel(
      data: TasksListNetworkModel(tasksList: []),
      errorMsg: response.dioException != null
          ? response.dioException!.error.toString()
          : response.normalException != null
          ? response.normalException!.toString()
          : "",
    );
  }
}
