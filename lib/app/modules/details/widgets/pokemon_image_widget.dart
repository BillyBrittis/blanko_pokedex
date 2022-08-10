import 'package:blanko_podekex/app/common/models/pokemon_info_model.dart';
import 'package:flutter/material.dart';

class PokemonImage extends StatelessWidget {
  final PokemonInfoModel pokemon;
  const PokemonImage({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.25,
          color: pokemon.getTypeColor(pokemon.types![0]),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: pokemon.image != null
              ? Image.network(
                  pokemon.image!,
                  height: 300,
                )
              : Icon(
                  Icons.question_mark,
                  size: 300,
                ),
        ),
      ],
    );
  }
}
