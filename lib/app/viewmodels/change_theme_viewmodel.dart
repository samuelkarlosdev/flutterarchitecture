// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_architecture/app/interfaces/local_storage_interface.dart';
import 'package:flutter_architecture/app/models/appconfig_model.dart';

class ChangeThemeViewModel {
  final ILocalStorage storage;
  final AppConfigModel config = AppConfigModel();

  // Injeção de dependência
  ChangeThemeViewModel({required this.storage});

  Future init() async {
    await storage.get('isDark').then((value) {
      if (value != null) config.themeSwitch.value = value;
    });
  }

  changeTheme(bool value) {
    config.themeSwitch.value = value;
    storage.put('isDark', value);
  }
}
