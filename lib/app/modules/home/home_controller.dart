import 'package:blanko_podekex/app/common/models/pokemon_model.dart';
import 'package:blanko_podekex/app/common/repositories/pokemon_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  final PokemonRepository repository;
  HomeControllerBase(this.repository);

  @observable
  List<PokemonModel> listPokemonModel = [];

  @action
  Future<List<PokemonModel>> getPokemons() async {
    final result = await repository.getPokemons();

    final list = result['results'] as List<dynamic>;

    listPokemonModel = list.map((e) => PokemonModel.fromJson(e)).toList();

    return listPokemonModel;
  }
}
