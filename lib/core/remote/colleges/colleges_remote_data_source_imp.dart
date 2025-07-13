import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:techrar_project_team_dashboard/core/core/network/dio_core.dart';
import 'package:techrar_project_team_dashboard/core/core/network/endpoints.dart';
import 'package:techrar_project_team_dashboard/core/core/network/models/response_model.dart';
import 'package:techrar_project_team_dashboard/core/core/network/providers/dio_core/dio_core_provider.dart';
import 'package:techrar_project_team_dashboard/core/models/network_models/dio_response.dart';
import 'package:techrar_project_team_dashboard/core/remote/colleges/models/colleges_network_model.dart';

import 'colleges_remote_data_source.dart';

part 'colleges_remote_data_source_imp.g.dart';

@riverpod
CollegesRemoteDataSource collegesRemoteDataSource(Ref ref) {
  final DioCore dio = ref.read(dioProviderProvider);

  return _CollegesRemoteDataSourceImp(dio: dio);
}

class _CollegesRemoteDataSourceImp implements CollegesRemoteDataSource {
  final DioCore _dio;

  _CollegesRemoteDataSourceImp({required DioCore dio}) : _dio = dio;

  @override
  Future<ResponseModel<CollegesListNetworkModel>> getColleges() async {
    String endpoint = EndPoints.colleges.url;
    DioResponse response = await _dio.get(endPoint: endpoint);

    if (response.isContainError == false) {
      // This line is for mocking only
      Map<String, dynamic> data = jsonDecode(response.response.data);

      CollegesListNetworkModel networkModel = CollegesListNetworkModel.fromJson(data);
      print('=========> ${networkModel.collegesList.length}');
      return ResponseModel(data: networkModel, errorMsg: "");
    }

    return ResponseModel(
      data: CollegesListNetworkModel(collegesList: []),
      errorMsg: response.dioException != null
          ? response.dioException!.error.toString()
          : response.normalException != null
          ? response.normalException!.toString()
          : "",
    );
  }
}
