import 'package:freezed_annotation/freezed_annotation.dart';

part 'risk_signal_model.freezed.dart';

@freezed
sealed class RiskSignalModel with _$RiskSignalModel {
  const RiskSignalModel._();

  const factory RiskSignalModel({
    required bool isVpn,
    required bool isEmulator,
    required bool isMacSpoofed,
    required bool isDnsSpoofed,
    required bool isProxySpoofed,
  }) = _RiskSignalModel;

  bool get isCompromised => isVpn || isEmulator || isMacSpoofed || isProxySpoofed || isDnsSpoofed;
}
