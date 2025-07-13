import 'package:flutter/material.dart';

import 'app_text_theme_contract.dart';

class DarkAppTextColorTheme implements AppTextThemeContract {
  @override
  Color doneTaskStatusColor = Color(0xFFFFFFFF);

  @override
  Color inProgressTaskStatusColor = Color(0xFFFFFFFF);

  @override
  Color testingTaskStatusColor = Color(0xFFFFFFFF);

  @override
  Color todoTaskStatusColor = Color(0xFFFFFFFF);
}
