import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:techrar_project_team_dashboard/core/models/tasks/tasks_model.dart';
import 'package:techrar_project_team_dashboard/core/utils/theme/theme_controller.dart';
import 'package:techrar_project_team_dashboard/core/widgets/api_error_screen.dart';
import 'package:techrar_project_team_dashboard/core/widgets/cards/tasks/task_card.dart';
import 'package:techrar_project_team_dashboard/features/user_tasks/view_model/user_tasks_view_model.dart';

class UserTasksScreen extends ConsumerWidget {
  const UserTasksScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeControllerState = ref.watch(themeControllerProvider);
    final userTasksViewModel = ref.read(userTasksViewModelProvider.notifier);

    return ref
        .watch(userTasksViewModelProvider)
        .when(
          error: (e, s) => ApiErrorScreen(errorMsg: e.toString()),
          loading: () => Center(child: CircularProgressIndicator()),
          data: (data) => SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tasks: #${data.userTasksList.length}",
                        style: themeControllerState.currentOsTextTheme.titleMedium,
                      ),
                      IconButton(
                        onPressed: () => userTasksViewModel.filterIncompleteTasks(),
                        icon: Icon(data.isFiltered? Icons.filter_alt_off_outlined : Icons.filter_alt),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                      itemCount: data.userTasksList.length,
                      padding: EdgeInsets.only(bottom: 100),
                      itemBuilder: (context, index) {
                        final userTask = data.userTasksList[index];

                        return TaskCard(
                          taskModel: TaskModel(
                            title: userTask.title,
                            assignedUser: userTask.assignedUser,
                            dueDate: userTask.dueDate,
                            taskStatus: userTask.taskStatus,
                          ),
                          theme: themeControllerState,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
  }
}
