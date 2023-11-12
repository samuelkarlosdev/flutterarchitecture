import 'package:flutter/material.dart';
import 'package:flutter_architecture/app/interfaces/local_storage_interface.dart';
import 'package:flutter_architecture/app/models/appconfig_model.dart';
import 'package:flutter_architecture/app/services/shared_local_storage_service.dart';

class AppController {
  // Singleton
  static final AppController instance = AppController._();
  AppController._() {
    storage.get('isDark').then((value) {
      if (value != null) config.themeSwitch.value = value;
    });
  }

  final AppConfigModel config = AppConfigModel();
  bool get isDark => config.themeSwitch.value;
  ValueNotifier<bool> get themeSwitch => config.themeSwitch;

  final ILocalStorage storage = SharedLocalStorageService();

  changeTheme(bool value) {
    config.themeSwitch.value = value;
    storage.put('isDark', value);
  }
}
