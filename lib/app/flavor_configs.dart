import 'package:flutter/material.dart';

import 'package:flutter_flavor/flutter_flavor.dart';

class FlavorConfigs {
  static egypt() {
    FlavorConfig(
      name: "Egypt",
      color: Colors.black,
      location: BannerLocation.bottomStart,
      variables: {"country_code": "eg", "baseUrl": "https://techrar.eg", "domain": "techrar.eg"},
    );
  }

  static saudi() {
    FlavorConfig(
      name: "Saudi",
      color: Colors.green,
      location: BannerLocation.bottomStart,
      variables: {"country_code": "sa", "baseUrl": "https://techrar.sa", "domain": "techrar.sa"},
    );
  }

  static emirates() {
    FlavorConfig(
      name: "Emirates",
      color: Colors.red,
      location: BannerLocation.bottomStart,
      variables: {"country_code": "ea", "baseUrl": "https://techrar.ea", "domain": "techrar.ea"},
    );
  }
}
