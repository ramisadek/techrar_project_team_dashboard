import 'package:flutter/material.dart';

import 'app_color_theme_contract.dart';

class LightAppColorTheme implements AppColorThemeContract {
  @override
  Color todoTaskStatusColor = Color(0xFFE0E0E0);
  @override
  Color inProgressTaskStatusColor = Color(0xFFCCE5FF);
  @override
  Color testingTaskStatusColor = Color(0xFFFFF3CD);
  @override
  Color doneTaskStatusColor = Color(0xFFD0F0C0);
}
