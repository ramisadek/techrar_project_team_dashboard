import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:techrar_project_team_dashboard/core/core/security/user_blocking_provider.dart';
import 'package:techrar_project_team_dashboard/core/utils/theme/theme_controller.dart';
import 'package:techrar_project_team_dashboard/core/widgets/blocking_ui/blocking_screen.dart';

class MainConfigs {
  static rotation() async {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }

  static setThemeToDeviceTheme({required WidgetRef ref, required BuildContext context}) {
    ref.read(themeControllerProvider.notifier).setThemeToDeviceTheme(context);
  }

  static blockingUser({required WidgetRef ref, required BuildContext context}) {
    ref.listen<Exception?>(errorStateProvider, (previous, next) {
      if (next != null) {
        ref.read(errorStateProvider.notifier).state = null;
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => BlockedScreen()));
      }
    });
  }
}
