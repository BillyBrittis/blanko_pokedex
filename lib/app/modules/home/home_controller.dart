import 'package:blanko_podekex/app/common/repository/pokemon_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  final PokemonRepository repository;
  HomeControllerBase(this.repository);
}
