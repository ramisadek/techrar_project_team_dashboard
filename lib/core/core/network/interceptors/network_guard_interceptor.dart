import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:techrar_project_team_dashboard/core/core/security/network_guard.dart';
import 'package:techrar_project_team_dashboard/core/core/security/user_blocking_provider.dart';

class NetworkGuardInterceptor extends Interceptor {
  NetworkGuard networkGuard;
  final Ref ref;
  NetworkGuardInterceptor({required this.networkGuard, required this.ref});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      final isCompromised = await networkGuard.isCompromised();

      if (isCompromised) {
        DioException dioException = DioException(
          requestOptions: options,
          type: DioExceptionType.badResponse,
          error: "Request blocked: Spoofing detected (VPN, Proxy, Emulator, DNS, or MAC).",
        );

        ref.read(errorStateProvider.notifier).state = dioException;
        return handler.reject(dioException, true);
      }

      handler.next(options);
    } catch (e) {
      handler.next(options);
    }
  }
}
