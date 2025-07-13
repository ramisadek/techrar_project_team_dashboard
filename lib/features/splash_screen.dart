import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:techrar_project_team_dashboard/app/main_configs.dart';
import 'package:techrar_project_team_dashboard/core/utils/assets/asset_icons.dart';

import 'home_navigation/view/home_navigation_screen.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends ConsumerState<SplashScreen> {
  _initApp() async {
    await _setThemeToDeviceTheme(ref: ref);
    _navTo();
  }

  _setThemeToDeviceTheme({required WidgetRef ref}) async {
    await Future.delayed(Duration.zero);
    MainConfigs.setThemeToDeviceTheme(ref: ref, context: context);
  }

  _navTo() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeNavigationScreen()));
  }

  @override
  void initState() {
    super.initState();
    _initApp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Image.asset(AssetIcons.flag)));
  }
}
