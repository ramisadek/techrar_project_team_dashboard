import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'localization_controller.g.dart';

@Riverpod(keepAlive: true)
class LocalizationController extends _$LocalizationController {
  final _locale = const Locale('en');
  Locale get locale => _locale;
  @override
  Locale build() {
    return _locale;
  }

  void changeLocale(String newLocale) {
    state = Locale(newLocale);
  }
}
