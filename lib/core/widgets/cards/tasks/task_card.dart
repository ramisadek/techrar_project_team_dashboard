import 'package:flutter/material.dart';
import 'package:techrar_project_team_dashboard/core/models/tasks/badge_color_model.dart';
import 'package:techrar_project_team_dashboard/core/models/tasks/tasks_model.dart';
import 'package:techrar_project_team_dashboard/core/models/theme/theme_model.dart';
import 'package:techrar_project_team_dashboard/core/ui/helper_functions.dart';
import 'package:techrar_project_team_dashboard/core/ui/mappers/tasks/badge_status_color_mapper.dart';
import 'package:techrar_project_team_dashboard/core/widgets/cards/card_banner/card_banner_wrapper.dart';
import 'package:techrar_project_team_dashboard/core/widgets/text_shape/text_info_widget.dart';

class TaskCard extends StatelessWidget {
  final TaskModel taskModel;
  final ThemeModel theme;
  const TaskCard({required this.taskModel, required this.theme, super.key});

  @override
  Widget build(BuildContext context) {
    final BadgeColorModel badgeColors = _getBadgeColors(taskStatus: taskModel.taskStatus);
    final titleColor = theme.currentOsColorTheme.scrim;
    final infoColor = theme.currentOsColorTheme.scrim;
    final dueDateFormated = HelperFunctions.formatDateToCustomStyle(taskModel.dueDate);

    return CardBannerWrapper(
      badgeColor: badgeColors.badgeColor,
      titleColor: badgeColors.textColor,
      title: taskModel.taskStatus.name,
      widget: Card(
        color: badgeColors.badgeColor.withOpacity(0.5),
        child: Container(
          padding: EdgeInsetsGeometry.only(left: 16, bottom: 16, top: 5),
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.55,
                child: Text(taskModel.title, style: theme.currentOsTextTheme.titleLarge),
              ),
              TextInfoWidget(
                title: "Assigned To",
                info: taskModel.assignedUser,
                themeControllerState: theme,
                titleColor: titleColor,
                infoColor: infoColor,
              ),
              TextInfoWidget(
                title: "Due Date: ",
                info: dueDateFormated,
                themeControllerState: theme,
                titleColor: titleColor,
                infoColor: infoColor,
              ),
            ],
          ),
        ),
      ),
    );
  }

  BadgeColorModel _getBadgeColors({required TaskStatus taskStatus}) {
    final BadgeStatusColorMapper badgeStatusColor = BadgeStatusColorMapper();
    return badgeStatusColor.map(
      taskStatus: taskStatus,
      appColorTheme: theme.currentAppColorTheme,
      textAppColorTheme: theme.currentAppTextTheme,
    );
  }
}
