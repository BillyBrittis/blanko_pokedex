import 'package:blanko_podekex/app/core/data/http/http.dart';
import 'package:blanko_podekex/app/modules/details/detail_module.dart';
import 'package:blanko_podekex/app/modules/home/home_controller.dart';
import 'package:blanko_podekex/app/common/repositories/pokemon_repository.dart';
import 'package:blanko_podekex/app/modules/splash_screen/splash_screen_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton(
      (i) => HomeController(
        PokemonRepositoryImp(
          HttpClientImp(),
        ),
      ),
    )
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: SplashScreenModule()),
    ModuleRoute('/home/', module: HomeModule()),
    ModuleRoute('/detail/', module: DetailModule()),
  ];
}
