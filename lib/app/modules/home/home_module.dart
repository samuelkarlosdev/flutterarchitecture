import 'package:flutter_architecture/app/core/interfaces/client_http_interface.dart';
import 'package:flutter_architecture/app/core/services/client_http_service.dart';
import 'package:flutter_architecture/app/modules/home/home_controller.dart';
import 'package:flutter_architecture/app/modules/home/home_page.dart';
import 'package:flutter_architecture/app/modules/home/repositories/json_placeholder_repository.dart';
import 'package:flutter_architecture/app/modules/home/repositories/json_placeholder_repository_interface.dart';
import 'package:flutter_architecture/app/modules/home/viewmodels/json_placeholder_viewmodel.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  void binds(i) {
    i.add(HomeController.new);
    i.add(JsonPlaceholderViewModel.new);
    i.add<IJsonPlaceholder>(JsonPlaceholderRepository.new);
    i.add<IClientHttp>(ClientHttpService.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const HomePage());
  }
}
