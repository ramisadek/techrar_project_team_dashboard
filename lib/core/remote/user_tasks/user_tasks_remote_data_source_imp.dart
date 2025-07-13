import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:techrar_project_team_dashboard/core/core/network/dio_core.dart';
import 'package:techrar_project_team_dashboard/core/core/network/endpoints.dart';
import 'package:techrar_project_team_dashboard/core/core/network/models/response_model.dart';
import 'package:techrar_project_team_dashboard/core/core/network/providers/dio_core/dio_core_provider.dart';
import 'package:techrar_project_team_dashboard/core/models/network_models/dio_response.dart';
import 'package:techrar_project_team_dashboard/core/remote/user_tasks/user_tasks_remote_data_source.dart';

import 'models/user_tasks_network_model.dart';

part 'user_tasks_remote_data_source_imp.g.dart';

@riverpod
UserTasksRemoteDataSource userTasksRemoteDataSource(Ref ref) {
  final DioCore dio = ref.read(dioProviderProvider);

  return _UserTasksRemoteDataSourceImp(dio: dio);
}

class _UserTasksRemoteDataSourceImp implements UserTasksRemoteDataSource {
  final DioCore _dio;

  _UserTasksRemoteDataSourceImp({required DioCore dio}) : _dio = dio;

  @override
  Future<ResponseModel<UserTasksListNetworkModel>> getUserTasks() async {

    /// in order to not break the logic of the BaseUrl and the other mocks..
    /// I am using a mocking instead of the URL in the task with the same 200 Objects for the heavy filtering task
    String endpoint = EndPoints.userTasks.url;
    DioResponse response = await _dio.get(endPoint: endpoint);

    if (response.isContainError == false) {
      // This line is for mocking only
      Map<String, dynamic> data = jsonDecode(response.response.data);

      UserTasksListNetworkModel networkModel = UserTasksListNetworkModel.fromJson(data);
      print('=========> ${networkModel.tasksList.length}');
      return ResponseModel(data: networkModel, errorMsg: "");
    }

    return ResponseModel(
      data: UserTasksListNetworkModel(tasksList: []),
      errorMsg: response.dioException != null
          ? response.dioException!.error.toString()
          : response.normalException != null
          ? response.normalException!.toString()
          : "",
    );
  }
}
