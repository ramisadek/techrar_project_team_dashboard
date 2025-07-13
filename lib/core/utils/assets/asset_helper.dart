import 'package:techrar_project_team_dashboard/app/environment_variables.dart';

class AssetHelper {
  static final _fallbackFolder = EnvironmentVariables.countryCode;

  static String getAssetPath({required String fileName, required String fileExtension}) {
    final fallbackPath = 'assets/$_fallbackFolder/$fileName.$fileExtension';

    return fallbackPath;
  }
}
