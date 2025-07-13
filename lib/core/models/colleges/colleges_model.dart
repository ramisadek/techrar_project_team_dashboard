import 'package:freezed_annotation/freezed_annotation.dart';

part 'colleges_model.freezed.dart';

@freezed
sealed class CollegesModel with _$CollegesModel {
  const factory CollegesModel({
    required String name,
    required String role,
    required String avatarUrl,
    required bool isOnline,
  }) = _CollegesModel;
}
