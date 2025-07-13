import 'package:dio/dio.dart';
import 'package:techrar_project_team_dashboard/core/models/network_models/dio_response.dart';

abstract class DioCore {
  Future<DioResponse> get({
    required String endPoint,
    Map<String, dynamic>? query,
  });

  Future<DioResponse> post({
    required String endPoint,
    FormData? formData,
    Map<String, dynamic>? rowData,
    Map<String, dynamic>? query,
  });

  Future<DioResponse> patch({
    required String endPoint,
    FormData? formData,
    Map<String, dynamic>? rowData,
  });

  Future<DioResponse> delete({
    required String endPoint,
    Map<String, dynamic>? query,
  });
}
