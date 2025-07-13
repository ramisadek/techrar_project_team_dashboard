import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
import 'package:techrar_project_team_dashboard/app/environment_variables.dart';
import 'package:techrar_project_team_dashboard/app/main_configs.dart';
import 'package:techrar_project_team_dashboard/core/utils/theme/theme_controller.dart';
import 'package:techrar_project_team_dashboard/core/widgets/sheets/add_new_task_sheet.dart';
import 'package:techrar_project_team_dashboard/features/home_navigation/view_model/home_navigation_view_model.dart';
import 'package:techrar_project_team_dashboard/features/profile/view/profile_screen.dart';
import 'package:techrar_project_team_dashboard/features/team_dashboard/view/team_dashboard_screen.dart';
import 'package:techrar_project_team_dashboard/features/user_tasks/view/user_tasks_screen.dart';

class HomeNavigationScreen extends ConsumerWidget {
  HomeNavigationScreen({super.key});

  final List<Widget> screens = [TeamDashboardScreen(), UserTasksScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    MainConfigs.blockingUser(ref: ref, context: context);
    final homeNavigationViewModel = ref.read(homeNavigationViewModelProvider.notifier);
    final homeNavigationState = ref.watch(homeNavigationViewModelProvider);
    final themeState = ref.watch(themeControllerProvider);

    return Scaffold(
      extendBody: true,
      // If you want this app bar to "only" appears on the dashboard screen then remove it from here and put it in dashboard screen
      appBar: AppBar(
        title: Text("Techrar-${EnvironmentVariables.country}"),
        actions: [Icon(Icons.notifications_active)],
      ),
      body: PageView(controller: homeNavigationState.pageController, children: screens),
      bottomNavigationBar: StylishBottomBar(
        option: AnimatedBarOptions(
          iconSize: 28,
          barAnimation: BarAnimation.blink,
          iconStyle: IconStyle.animated,
          opacity: 0.3,
        ),
        items: [
          BottomBarItem(
            icon: const Icon(Icons.dashboard_outlined),
            title: const Text('Dashboard'),
            backgroundColor: themeState.currentOsColorTheme.primary,
            selectedIcon: const Icon(Icons.dashboard),
          ),
          BottomBarItem(
            icon: const Icon(Icons.task_alt),
            title: const Text('Tasks'),
            backgroundColor: themeState.currentOsColorTheme.inversePrimary,
            selectedIcon: const Icon(Icons.task),
          ),
          BottomBarItem(
            icon: const Icon(Icons.account_circle_outlined),
            title: const Text('Profile'),
            backgroundColor: themeState.currentOsColorTheme.onTertiaryContainer,
            selectedIcon: const Icon(Icons.account_circle),
          ),
        ],
        fabLocation: homeNavigationState.isAtDashboard ? StylishBarFabLocation.end : null,
        hasNotch: homeNavigationState.isAtDashboard,
        notchStyle: NotchStyle.circle,
        currentIndex: homeNavigationState.currentPageSelected,
        onTap: (index) {
          homeNavigationViewModel.jumpToPage(index);
        },
      ),
      floatingActionButtonLocation: homeNavigationState.isAtDashboard ? FloatingActionButtonLocation.endDocked : null,
      floatingActionButton: homeNavigationState.isAtDashboard
          ? FloatingActionButton(
              shape: CircleBorder(),
              onPressed: () {
                showAddNewTaskBottomSheet(context);
              },
              backgroundColor: Colors.white,
              child: Icon(Icons.add_task, color: themeState.currentOsColorTheme.primary, size: 26),
            )
          : null,
    );
  }
}
