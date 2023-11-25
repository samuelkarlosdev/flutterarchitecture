import 'package:flutter_architecture/app/app_controller.dart';
import 'package:flutter_architecture/app/core/interfaces/local_storage_interface.dart';
import 'package:flutter_architecture/app/modules/home/home_module.dart';
import 'package:flutter_architecture/app/modules/login/login_module.dart';
import 'package:flutter_architecture/app/core/services/shared_local_storage_service.dart';
import 'package:flutter_architecture/app/core/viewmodels/change_theme_viewmodel.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton(AppController.new);
    i.add(ChangeThemeViewModel.new);
    i.add<ILocalStorage>(SharedLocalStorageService.new);
  }

  @override
  void routes(r) {
    r.module('/', module: LoginModule());
    r.module('/home', module: HomeModule());
  }
}
