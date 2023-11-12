import 'package:flutter/material.dart';
import 'package:flutter_architecture/app/interfaces/local_storage_interface.dart';
import 'package:flutter_architecture/app/models/appconfig_model.dart';
import 'package:flutter_architecture/app/services/shared_local_storage_service.dart';
import 'package:flutter_architecture/app/viewmodels/change_theme_viewmodel.dart';

class AppController {
  // Singleton
  static final AppController instance = AppController._();
  AppController._() {
    changeThemeViewModel.init();
  }

  final ChangeThemeViewModel changeThemeViewModel =
      ChangeThemeViewModel(storage: SharedLocalStorageService());

  bool get isDark => changeThemeViewModel.config.themeSwitch.value;
  ValueNotifier<bool> get themeSwitch =>
      changeThemeViewModel.config.themeSwitch;
}
