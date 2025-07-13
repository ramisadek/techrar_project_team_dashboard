import 'package:freezed_annotation/freezed_annotation.dart';

part 'riskified_model.freezed.dart';

@freezed
sealed class RiskifiedModel with _$RiskifiedModel {
  const RiskifiedModel._();

  const factory RiskifiedModel({
    required bool isVpnSpoofed,
    required bool isProxySpoofed,
  }) = _RiskifiedModel;

  bool get isCompromised => isVpnSpoofed || isProxySpoofed;
}
