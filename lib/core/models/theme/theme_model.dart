import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:techrar_project_team_dashboard/core/ui/theme/app_theme/color_theme/app_color_theme_contract.dart';
import 'package:techrar_project_team_dashboard/core/ui/theme/app_theme/text_color_theme/app_text_theme_contract.dart';

part 'theme_model.freezed.dart';

enum Themes { light, dark }

@freezed
sealed class ThemeModel with _$ThemeModel {
  const factory ThemeModel({
    required Themes currentTheme,
    required ColorScheme currentOsColorTheme,
    required TextTheme currentOsTextTheme,
    required AppColorThemeContract currentAppColorTheme,
    required AppTextThemeContract currentAppTextTheme,
  }) = _ThemeModel;
}
