import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:techrar_project_team_dashboard/core/models/tasks/tasks_model.dart';
import 'package:techrar_project_team_dashboard/core/utils/theme/theme_controller.dart';
import 'package:techrar_project_team_dashboard/core/widgets/api_error_screen.dart';
import 'package:techrar_project_team_dashboard/core/widgets/cards/dashboard_college/dashboard_college_card.dart';
import 'package:techrar_project_team_dashboard/core/widgets/cards/tasks/task_card.dart';
import 'package:techrar_project_team_dashboard/features/team_dashboard/view_model/team_dashboard_view_model.dart';

class TeamDashboardScreen extends ConsumerWidget {
  const TeamDashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeControllerState = ref.watch(themeControllerProvider);

    return ref
        .watch(teamDashboardViewModelProvider)
        .when(
          error: (e, s) => ApiErrorScreen(errorMsg: e.toString()),
          loading: () => Center(child: CircularProgressIndicator()),
          data: (data) => SingleChildScrollView(
            child: Column(
              children: [
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.all(16),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 1,
                    childAspectRatio: 1.1,
                  ),
                  itemCount: data.collegesList.length,
                  itemBuilder: (context, index) {
                    final user = data.collegesList[index];
                    return DashboardCollegeCard(
                      name: user.name,
                      role: user.role,
                      avatarUrl: user.avatarUrl,
                      isOnline: user.isOnline,
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Recent Tasks", style: themeControllerState.currentOsTextTheme.headlineSmall),
                  ),
                ),
                SizedBox(height: 10),
                ListView.builder(
                  itemCount: data.recentTaskList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  itemBuilder: (context, index) {
                    final recentTask = data.recentTaskList[index];

                    return TaskCard(
                      taskModel: TaskModel(
                        title: recentTask.title,
                        assignedUser: recentTask.assignedUser,
                        dueDate: recentTask.dueDate,
                        taskStatus: recentTask.taskStatus,
                      ),
                      theme: themeControllerState,
                    );
                  },
                ),
                SizedBox(height: 100),
              ],
            ),
          ),
        );
  }
}
