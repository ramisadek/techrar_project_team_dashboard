import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:techrar_project_team_dashboard/core/core/network/interceptors/network_guard_interceptor.dart';
import 'package:techrar_project_team_dashboard/core/core/security/network_guard.dart';
import 'package:techrar_project_team_dashboard/core/core/security/network_guard_provider.dart';
import 'package:dio_mock_interceptor/dio_mock_interceptor.dart';

part 'dio_network_guard_provider.g.dart';

@riverpod
Future<Dio> dioNetworkGuard(Ref ref) async {
  Dio dio = Dio();
  final NetworkGuard networkGuard = await ref.read(networkGuardProvider.future);
  dio.interceptors.add(NetworkGuardInterceptor(networkGuard: networkGuard, ref: ref));

  // This should be in a different provider but we are working only mocks in this example.
  dio.interceptors.add(MockInterceptor());

  return dio;
}
