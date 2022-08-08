import 'package:blanko_podekex/app/common/models/pokemon_model.dart';
import 'package:flutter/material.dart';

class HomePokemon extends StatefulWidget {
  final PokemonModel pokemon;
  const HomePokemon({Key? key, required this.pokemon}) : super(key: key);

  @override
  State<HomePokemon> createState() => _HomePokemonState();
}

class _HomePokemonState extends State<HomePokemon> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: Column(
          children: [
            Center(
              child: Image.network(widget.pokemon.pokemonImage),
            ),
            Text(widget.pokemon.name!),
          ],
        ),
      ),
    );
  }
}
