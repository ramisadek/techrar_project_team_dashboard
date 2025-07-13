import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_navigation_model.freezed.dart';

@freezed
sealed class HomeNavigationModel with _$HomeNavigationModel {
  const factory HomeNavigationModel({
    required PageController pageController,
    required int currentPageSelected,
    required bool isAtDashboard,
  }) = _HomeNavigationModel;
}
