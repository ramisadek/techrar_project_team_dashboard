import 'package:techrar_project_team_dashboard/core/models/tasks/badge_color_model.dart';
import 'package:techrar_project_team_dashboard/core/models/tasks/tasks_model.dart';
import 'package:techrar_project_team_dashboard/core/ui/theme/app_theme/color_theme/app_color_theme_contract.dart';
import 'package:techrar_project_team_dashboard/core/ui/theme/app_theme/text_color_theme/app_text_theme_contract.dart';

class BadgeStatusColorMapper {
  BadgeColorModel map({
    required TaskStatus taskStatus,
    required AppColorThemeContract appColorTheme,
    required AppTextThemeContract textAppColorTheme,
  }) {
    switch (taskStatus) {
      case TaskStatus.todo:
        return BadgeColorModel(
          badgeColor: appColorTheme.todoTaskStatusColor,
          textColor: textAppColorTheme.todoTaskStatusColor,
        );
      case TaskStatus.inProgress:
        return BadgeColorModel(
          badgeColor: appColorTheme.inProgressTaskStatusColor,
          textColor: textAppColorTheme.inProgressTaskStatusColor,
        );
      case TaskStatus.testing:
        return BadgeColorModel(
          badgeColor: appColorTheme.testingTaskStatusColor,
          textColor: textAppColorTheme.testingTaskStatusColor,
        );
      case TaskStatus.done:
        return BadgeColorModel(
          badgeColor: appColorTheme.doneTaskStatusColor,
          textColor: textAppColorTheme.doneTaskStatusColor,
        );
    }
  }
}
