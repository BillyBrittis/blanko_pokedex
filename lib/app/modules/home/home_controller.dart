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

  @observable
  String nextUrl = '';

  @observable
  bool searchAppear = false;

  @action
  changeSearchAppear() => searchAppear = !searchAppear;

  @action
  Future<List<PokemonModel>> getPokemons() async {
    final result = await repository.getPokemons();

    final list = result['results'] as List<dynamic>;

    listPokemonModel = list.map((e) => PokemonModel.fromJson(e)).toList();

    nextUrl = result['next'];

    return listPokemonModel;
  }

  @action
  Future<List<PokemonModel>> getPokemonsByUrl() async {
    final result = await repository.getNextPokemons(url: nextUrl);

    final list = result['results'] as List<dynamic>;

    for (int i = 0; i < list.length; i++) {
      listPokemonModel.add(PokemonModel.fromJson(list[i]));
    }

    if (result['next'] != null) {
      nextUrl = result['next'];
    } else {
      nextUrl = '';
    }

    return listPokemonModel;
  }

  @action
  Future<List<PokemonModel>> filterPokemon(String param) async {
    final result = await repository.getPokemonByNameID(param: param);

    listPokemonModel = [PokemonModel.fromJson(result)];

    return listPokemonModel;
  }
}
