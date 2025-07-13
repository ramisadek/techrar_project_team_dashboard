

import 'package:flutter/material.dart';

import 'app_text_theme_contract.dart';

class LightAppTextColorTheme implements AppTextThemeContract{
  @override
  Color doneTaskStatusColor = Color(0xFF1B5E20);

  @override
  Color inProgressTaskStatusColor = Color(0xFF004B7D);

  @override
  Color testingTaskStatusColor = Color(0xFF664D03);

  @override
  Color todoTaskStatusColor = Color(0xFF000000);

}