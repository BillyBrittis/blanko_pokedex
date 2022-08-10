import 'package:blanko_podekex/app/core/data/api/api.dart';
import 'package:blanko_podekex/app/core/data/http/http.dart';

abstract class PokemonRepository {
  Future<dynamic> getPokemons();
  Future<dynamic> getNextPokemons({required String url});
  Future<dynamic> getPokemonByNameID({required String param});
}

class PokemonRepositoryImp implements PokemonRepository {
  final HttpClient httpClient;
  PokemonRepositoryImp(this.httpClient);

  @override
  Future<dynamic> getPokemons() async {
    try {
      final httpResponse = await httpClient.request(
        '${Api.mainURL}?limit=30',
        method: 'get',
      );

      return httpResponse;
    } catch (e) {
      throw "Falha ao buscar dados.";
    }
  }

  @override
  Future<dynamic> getPokemonByNameID({required String param}) async {
    try {
      final httpResponse = await httpClient.request(
        Api.mainURL + param,
        method: 'get',
      );

      return httpResponse;
    } catch (e) {
      throw "Falha ao buscar dados.";
    }
  }

  @override
  Future<dynamic> getNextPokemons({required String url}) async {
    try {
      if (url.isNotEmpty) {
        final httpResponse = await httpClient.request(
          url,
          method: 'get',
        );
        return httpResponse;
      }
    } catch (e) {
      throw "Falha ao buscar dados.";
    }
  }
}
