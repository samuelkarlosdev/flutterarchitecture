import 'package:flutter_architecture/app/app_controller.dart';
import 'package:flutter_architecture/app/interfaces/client_http_interface.dart';
import 'package:flutter_architecture/app/interfaces/local_storage_interface.dart';
import 'package:flutter_architecture/app/pages/home/home_controller.dart';
import 'package:flutter_architecture/app/repositories/json_placeholder_repository.dart';
import 'package:flutter_architecture/app/repositories/json_placeholder_repository_interface.dart';
import 'package:flutter_architecture/app/services/client_http_service.dart';
import 'package:flutter_architecture/app/services/shared_local_storage_service.dart';
import 'package:flutter_architecture/app/viewmodels/change_theme_viewmodel.dart';
import 'package:flutter_architecture/app/viewmodels/json_placeholder_viewmodel.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.add(HomeController.new);
    i.add(JsonPlaceholderViewModel.new);
    i.add<IJsonPlaceholder>(JsonPlaceholderRepository.new);
    i.add<IClientHttp>(ClientHttpService.new);
    i.addLazySingleton(AppController.new);
    i.add(ChangeThemeViewModel.new);
    i.add<ILocalStorage>(SharedLocalStorageService.new);
  }

  @override
  void routes(r) {}
}
