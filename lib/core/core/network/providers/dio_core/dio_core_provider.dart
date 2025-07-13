import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:techrar_project_team_dashboard/app/environment_variables.dart';
import 'package:techrar_project_team_dashboard/core/core/network/dio_core.dart';
import 'package:techrar_project_team_dashboard/core/core/network/providers/dio_network_guard_provider/dio_network_guard_provider.dart';
import 'package:techrar_project_team_dashboard/core/models/network_models/dio_response.dart';
import 'package:techrar_project_team_dashboard/core/models/network_models/request_type_enum.dart';

part 'dio_core_provider.g.dart';

@riverpod
DioCore dioProvider(Ref ref) {
  final url = EnvironmentVariables.apiUrl;
  final dioProvider = ref.watch(dioNetworkGuardProvider.future);

  return _DioCore(dioProvider: dioProvider, url: url);
}

class _DioCore implements DioCore {
  final Future<Dio> _dioProvider;
  final String _url;

  _DioCore({required Future<Dio> dioProvider, required String url}) : _dioProvider = dioProvider, _url = url;

  @override
  Future<DioResponse> get({required String endPoint, Map<String, dynamic>? query}) async =>
      await _networkAdapter(endPoint: endPoint, requestType: RequestType.get, query: query);

  @override
  Future<DioResponse> post({
    required String endPoint,
    FormData? formData,
    Map<String, dynamic>? rowData,
    Map<String, dynamic>? query,
  }) async {
    assert(
      formData != null || rowData != null || query != null,
      'Please insert a form or row data in order in make the request. for endpoint: $endPoint',
    );
    return await _networkAdapter(
      endPoint: endPoint,
      requestType: RequestType.post,
      formData: formData,
      rowData: rowData,
      query: query,
    );
  }

  @override
  Future<DioResponse> patch({required String endPoint, FormData? formData, Map<String, dynamic>? rowData}) async {
    assert(formData != null || rowData != null, 'Please insert a form or row data in order in make the request.');
    return await _networkAdapter(
      endPoint: endPoint,
      requestType: RequestType.patch,
      formData: formData,
      rowData: rowData,
    );
  }

  @override
  Future<DioResponse> delete({required String endPoint, Map<String, dynamic>? query}) async =>
      await _networkAdapter(endPoint: endPoint, requestType: RequestType.delete, query: query);

  Future<DioResponse> _networkAdapter({
    required String endPoint,
    required RequestType requestType,
    FormData? formData,
    Map<String, dynamic>? rowData,
    Map<String, dynamic>? query,
  }) async {
    Response? response;

    DioResponse dioResponse = DioResponse.empty();

    try {
      response = await _networkRequest(
        dio: await _dioProvider,
        endPoint: endPoint,
        requestType: requestType,
        query: query,
        rowData: rowData,
        formData: formData,
      );

      dioResponse = DioResponse(response: response);
    } on DioException catch (dioException, stackTrace) {
      dioResponse = dioResponse.copyWith(dioException: dioException, stackTrace: stackTrace);
    } catch (exception, stackTrace) {
      dioResponse = dioResponse.copyWith(normalException: exception as Exception, stackTrace: stackTrace);
    }

    return dioResponse;
  }

  Future<Response> _networkRequest({
    required RequestType requestType,
    required Dio dio,
    required String endPoint,
    Map<String, dynamic>? query,
    FormData? formData,
    Map<String, dynamic>? rowData,
  }) async {
    Response response;
    switch (requestType) {
      case RequestType.get:
        response = await dio.get("$_url$endPoint", queryParameters: query);
        break;
      case RequestType.post:
        response = await dio.post("$_url$endPoint", queryParameters: query, data: formData ?? rowData);
        break;
      case RequestType.patch:
        response = await dio.patch("$_url$endPoint", data: formData ?? rowData);
        break;
      case RequestType.delete:
        response = await dio.delete("$_url$endPoint", data: formData);
        break;
    }
    return response;
  }
}
