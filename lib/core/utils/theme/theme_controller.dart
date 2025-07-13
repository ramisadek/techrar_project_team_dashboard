import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:techrar_project_team_dashboard/core/models/theme/theme_model.dart';
import 'package:techrar_project_team_dashboard/core/ui/theme/app_theme/color_theme/dark_app_color_theme.dart';
import 'package:techrar_project_team_dashboard/core/ui/theme/app_theme/color_theme/light_app_color_theme.dart';
import 'package:techrar_project_team_dashboard/core/ui/theme/app_theme/text_color_theme/dark_app_text_theme.dart';
import 'package:techrar_project_team_dashboard/core/ui/theme/app_theme/text_color_theme/light_app_text_theme.dart';
import 'package:techrar_project_team_dashboard/core/ui/theme/os_theme/dark_color_theme.dart';
import 'package:techrar_project_team_dashboard/core/ui/theme/os_theme/dark_text_theme.dart';
import 'package:techrar_project_team_dashboard/core/ui/theme/os_theme/light_color_theme.dart';
import 'package:techrar_project_team_dashboard/core/ui/theme/os_theme/light_text_theme.dart';

part 'theme_controller.g.dart';

@Riverpod(keepAlive: true)
class ThemeController extends _$ThemeController {
  @override
  ThemeModel build() {
    return ThemeModel(
      currentTheme: Themes.light,
      currentOsColorTheme: LightColorTheme.colorTheme,
      currentOsTextTheme: LightTextTheme.textTheme,
      currentAppColorTheme: LightAppColorTheme(),
      currentAppTextTheme: LightAppTextColorTheme(),
    );
  }

  Brightness _getDeviceTheme(BuildContext context) {
    return MediaQuery.of(context).platformBrightness;
  }

  setThemeToDeviceTheme(BuildContext context) {
    final Brightness currentDeviceTheme = _getDeviceTheme(context);
    if (currentDeviceTheme == Brightness.light) {
      _setLightTheme();
    } else {
      _setDarkTheme();
    }
  }

  switchThemes() {
    if (state.currentTheme == Themes.light) {
      _setDarkTheme();
    } else {
      _setLightTheme();
    }
  }

  _setLightTheme() {
    state = state.copyWith(
      currentTheme: Themes.light,
      currentOsTextTheme: LightTextTheme.textTheme,
      currentOsColorTheme: LightColorTheme.colorTheme,
      currentAppColorTheme: LightAppColorTheme(),
      currentAppTextTheme: LightAppTextColorTheme(),
    );
  }

  _setDarkTheme() {
    state = state.copyWith(
      currentTheme: Themes.dark,
      currentOsTextTheme: DarkTextTheme.textTheme,
      currentOsColorTheme: DarkColorTheme.colorTheme,
      currentAppColorTheme: DarkAppColorTheme(),
      currentAppTextTheme: DarkAppTextColorTheme(),
    );
  }
}
