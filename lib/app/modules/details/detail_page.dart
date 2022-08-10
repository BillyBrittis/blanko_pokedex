import 'package:blanko_podekex/app/common/models/pokemon_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DetailPage extends StatelessWidget {
  final PokemonModel pokemon;
  final PokemonModel nextPokemon;
  const DetailPage({Key? key, required this.pokemon, required this.nextPokemon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pokemon.name!),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Modular.to.navigate('/');
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(),
    );
  }
}
