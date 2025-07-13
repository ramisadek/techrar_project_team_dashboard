import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'colleges_network_model.freezed.dart';
part 'colleges_network_model.g.dart';

@freezed
sealed class CollegesListNetworkModel with _$CollegesListNetworkModel {
  const CollegesListNetworkModel._();
  const factory CollegesListNetworkModel({
    @Default([]) @JsonKey(name: 'data') List<CollegesNetworkModel> collegesList,
  }) = _CollegesListNetworkModel;

  factory CollegesListNetworkModel.fromJson(Map<String, dynamic> json) => _$CollegesListNetworkModelFromJson(json);

  bool get isEmpty => this == CollegesListNetworkModel.empty();
  bool get isNotEmpty => this != CollegesListNetworkModel.empty();

  factory CollegesListNetworkModel.empty() {
    return CollegesListNetworkModel(collegesList: []);
  }
}

@freezed
sealed class CollegesNetworkModel with _$CollegesNetworkModel {
  const CollegesNetworkModel._();
  const factory CollegesNetworkModel({
    @Default("") String name,
    @Default("") String role,
    @Default("") String avatarUrl,
    @Default(false) bool isOnline,
  }) = _CollegesNetworkModel;

  factory CollegesNetworkModel.fromJson(Map<String, dynamic> json) => _$CollegesNetworkModelFromJson(json);

  bool get isEmpty => this == CollegesNetworkModel.empty();
  bool get isNotEmpty => this != CollegesNetworkModel.empty();

  factory CollegesNetworkModel.empty() {
    return CollegesNetworkModel(name: '', role: '', avatarUrl: '', isOnline: false);
  }
}
