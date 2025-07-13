import 'package:flutter/services.dart';
import 'package:techrar_project_team_dashboard/app/environment_variables.dart';
import 'package:techrar_project_team_dashboard/core/core/security/network_guard.dart';
import 'package:techrar_project_team_dashboard/core/models/risk_signal/risk_signal_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'local_network_guard.g.dart';

@riverpod
class SpoofingDetector extends _$SpoofingDetector with NetworkGuard {
  static const MethodChannel _channel = MethodChannel('spoofing_detector');

  @override
  Future<RiskSignalModel> build() async {
    return await getSpoofingReport();
  }

  @override
  Future<bool> isUsingVpn() async {
    try {
      return await _channel.invokeMethod('isUsingVpn');
    } catch (_) {
      return false;
    }
  }

  static Future<bool> isEmulator() async {
    try {
      return await _channel.invokeMethod('isEmulator');
    } catch (e,s) {
      print(e);
      print(s);
      return false;
    }
  }

  Future<bool> isMacSpoofed() async {
    try {
      return await _channel.invokeMethod('isMacSpoofed');
    } catch (_) {
      return false;
    }
  }

  @override
  Future<bool> isUsingProxy() async {
    try {
      return await _channel.invokeMethod('isUsingProxy');
    } catch (_) {
      return false;
    }
  }

  @override
  Future<bool> isDnsSpoofed({required String domain}) async {
    try {
      return await _channel.invokeMethod('isDnsSpoofed', {'domain': domain});
    } catch (_) {
      return false;
    }
  }

  Future<RiskSignalModel> getSpoofingReport() async {
    final vpn = await isUsingVpn();
    final emulator = await isEmulator();
    print("---------> $emulator");
    final macSpoofed = await isMacSpoofed();
    final dnsSpoofed = await isDnsSpoofed(domain: EnvironmentVariables.domain);
    final proxySpoofed = await isUsingProxy();

    // return _mockSpoofing();

    return RiskSignalModel(
      isVpn: vpn,
      isEmulator: emulator,
      isMacSpoofed: macSpoofed,
      isProxySpoofed: proxySpoofed,
      isDnsSpoofed: dnsSpoofed,
    );
  }

  _mockSpoofing() {
    return RiskSignalModel(isVpn: true, isEmulator: true, isMacSpoofed: true, isProxySpoofed: true, isDnsSpoofed: true);
  }

  @override
  Future<bool> isCompromised() async {
    final riskSignalModel = await getSpoofingReport();
    return riskSignalModel.isCompromised;
  }
}
