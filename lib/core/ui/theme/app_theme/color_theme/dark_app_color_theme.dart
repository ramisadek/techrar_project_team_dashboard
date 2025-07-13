import 'package:flutter/material.dart';
import 'app_color_theme_contract.dart';

class DarkAppColorTheme implements AppColorThemeContract {
  @override
  Color inProgressTaskStatusColor = Color(0xFF1565C0);

  @override
  Color testingTaskStatusColor = Color(0xFF997000);

  @override
  Color doneTaskStatusColor = Color(0xFF2E7D32);

  @override
  Color todoTaskStatusColor = Color(0xFF424242);
}
