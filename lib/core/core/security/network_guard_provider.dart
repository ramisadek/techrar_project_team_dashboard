import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'local_spoofing/local_network_guard.dart';
import 'network_guard.dart';

part 'network_guard_provider.g.dart';

@riverpod
Future<NetworkGuard> networkGuard(Ref ref) async {
  return SpoofingDetector();
}
