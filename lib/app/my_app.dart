import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:techrar_project_team_dashboard/I10n/localization_controller.dart';
import 'package:techrar_project_team_dashboard/core/utils/theme/theme_controller.dart';
import 'package:techrar_project_team_dashboard/features/splash_screen.dart';


class MyApp extends ConsumerWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeControllerState = ref.watch(themeControllerProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // localizationsDelegates: AppLocalizations.localizationsDelegates,
      // supportedLocales: AppLocalizations.supportedLocales,
      locale: ref.watch(localizationControllerProvider),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: themeControllerState.currentOsColorTheme,
        textTheme: themeControllerState.currentOsTextTheme,
      ),
      home: const SplashScreen(),
    );
  }
}
