import 'package:blanko_podekex/app/core/data/http/http.dart';
import 'package:blanko_podekex/app/common/repositories/pokemon_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

import 'home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton(
      (i) => HomeController(
        PokemonRepositoryImp(
          HttpClientImp(),
        ),
      ),
    ),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HomePage()),
  ];
}
