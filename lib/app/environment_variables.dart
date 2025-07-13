import 'package:flutter_flavor/flutter_flavor.dart';

enum Countries { egypt, saudi, emirates }

class EnvironmentVariables {
  static String get country => FlavorConfig.instance.name ?? Countries.egypt.name;
  static String get countryCode => FlavorConfig.instance.variables["country_code"] ?? "eg";
  static String get baseUrl => FlavorConfig.instance.variables["baseUrl"];
  static String get domain => FlavorConfig.instance.variables["domain"];
  static String get apiUrl => FlavorConfig.instance.variables["baseUrl"] + "/api";
}
