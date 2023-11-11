import 'package:flutter/material.dart';

class AppController {
  // Singleton
  static final AppController instance = AppController._();
  AppController._();

  final themeSwitch = ValueNotifier<bool>(false);

  changeTheme(bool value) {
    themeSwitch.value = value;
  }
}
