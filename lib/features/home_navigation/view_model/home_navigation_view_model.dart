import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:techrar_project_team_dashboard/core/models/home_navigation/home_navigation_model.dart';

part 'home_navigation_view_model.g.dart';

@riverpod
class HomeNavigationViewModel extends _$HomeNavigationViewModel {
  @override
  HomeNavigationModel build() {
    return HomeNavigationModel(currentPageSelected: 0, pageController: PageController(), isAtDashboard: true);
  }

  jumpToPage(int index) {
    state = state.copyWith(currentPageSelected: index, isAtDashboard: index == 0 ? true : false);
    state.pageController.jumpToPage(index);
  }
}
