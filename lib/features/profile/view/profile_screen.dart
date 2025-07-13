import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:techrar_project_team_dashboard/core/models/theme/theme_model.dart';
import 'package:techrar_project_team_dashboard/core/utils/theme/theme_controller.dart';
import 'package:techrar_project_team_dashboard/core/widgets/profile_circle.dart';
import 'package:techrar_project_team_dashboard/core/widgets/text_shape/text_info_widget.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeController = ref.read(themeControllerProvider.notifier);
    final themeControllerState = ref.watch(themeControllerProvider);
    final isDarkMode = themeControllerState.currentTheme == Themes.dark;

    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              ProfileCircle(
                avatarUrl:
                    "https://uxwing.com/wp-content/themes/uxwing/download/peoples-avatars/man-user-circle-icon.png",
                isOnline: true,
              ),
              SizedBox(height: 10),
              TextInfoWidget(themeControllerState: themeControllerState, title: "Name", info: "Rami ahmed"),
              TextInfoWidget(themeControllerState: themeControllerState, title: "Role", info: "Developer"),
              TextInfoWidget(themeControllerState: themeControllerState, title: "Status", info: "Online"),
              SizedBox(height: 30),
              Text(
                isDarkMode ? "Light Mode:" : "Dark Mode:",
                style: themeControllerState.currentOsTextTheme.titleMedium,
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.sunny),
                  CupertinoSwitch(value: isDarkMode, onChanged: (_) => themeController.switchThemes()),
                  Icon(Icons.nightlight_rounded),
                ],
              ),
              Spacer(),
              Align(
                alignment: Alignment.center,
                child: MaterialButton(
                  onPressed: () {
                    //TODO:: Implement log out function from profile view model here
                  },
                  color: themeControllerState.currentOsColorTheme.primary,
                  shape: BoxBorder.fromLTRB(left: BorderSide(color: themeControllerState.currentOsColorTheme.error)),
                  child: Text(
                    "Log Out",
                    style: themeControllerState.currentOsTextTheme.titleMedium?.copyWith(
                      color: themeControllerState.currentOsColorTheme.error,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
