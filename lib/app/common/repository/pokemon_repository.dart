import 'package:blanko_podekex/app/core/data/api/api.dart';
import 'package:blanko_podekex/app/core/data/http/http.dart';

abstract class PokemonRepository {
  Future<dynamic> getPokemons();
}

class PokemonRepositoryImp implements PokemonRepository {
  final HttpClient httpClient;
  PokemonRepositoryImp(this.httpClient);

  @override
  Future<dynamic> getPokemons() async {
    try {
      final httpResponse = await httpClient.request(
        Api.mainURL,
        method: 'get',
      );

      return httpResponse;
    } catch (e) {
      return e;
    }
  }
}
