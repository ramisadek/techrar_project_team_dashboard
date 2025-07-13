import 'package:techrar_project_team_dashboard/core/core/security/network_guard.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:techrar_project_team_dashboard/core/models/riskified/riskified_model.dart';

part 'riskified_network_guard.g.dart';

@riverpod
class Riskified extends _$Riskified with NetworkGuard {
  @override
  Future<RiskifiedModel> build() async {
    return await getRiskifiedReport();
  }

  Future<RiskifiedModel> getRiskifiedReport() {
    // TODO: implement isDnsSpoofed
    throw UnimplementedError();
  }

  @override
  Future<bool> isDnsSpoofed({required String domain}) {
    // TODO: implement isDnsSpoofed
    throw UnimplementedError();
  }

  @override
  Future<bool> isUsingProxy() async {
    // TODO: implement isDnsSpoofed
    throw UnimplementedError();
  }

  @override
  Future<bool> isUsingVpn() async {
    // TODO: implement isDnsSpoofed
    throw UnimplementedError();
  }

  @override
  Future<bool> isCompromised() {
    // TODO: implement isSpoofed
    throw UnimplementedError();
  }
}
