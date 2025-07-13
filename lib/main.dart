import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:techrar_project_team_dashboard/app/environment_variables.dart';
import 'app/flavor_configs.dart';
import 'app/main_configs.dart';
import 'app/my_app.dart';

void main() async {
  MainConfigs.rotation();

  /// instead of this we will make 3 main files for each country and run the main file from the Run/Debug configuration
  /// so i made this for simplify the demo
  Countries currentCountry = Countries.egypt;

  switch (currentCountry) {
    case Countries.egypt:
      FlavorConfigs.egypt();
    case Countries.saudi:
      FlavorConfigs.saudi();
    case Countries.emirates:
      FlavorConfigs.emirates();
  }

  runApp(const ProviderScope(child: MyApp()));
}
