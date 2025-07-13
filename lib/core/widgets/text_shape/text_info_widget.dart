import 'package:flutter/material.dart';
import 'package:techrar_project_team_dashboard/core/models/theme/theme_model.dart';

class TextInfoWidget extends StatelessWidget {
  final ThemeModel themeControllerState;
  final String title;
  final String info;
  final Color? titleColor;
  final Color? infoColor;
  const TextInfoWidget({
    required this.themeControllerState,
    required this.title,
    required this.info,
    this.infoColor,
    this.titleColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '$title: ',
        style: themeControllerState.currentOsTextTheme.bodyLarge?.copyWith(
          fontWeight: FontWeight.bold,
          color: titleColor,
        ),
        children: <TextSpan>[
          TextSpan(
            text: info,
            style: themeControllerState.currentOsTextTheme.bodyLarge?.copyWith(color: infoColor),
          ),
        ],
      ),
    );
  }
}
