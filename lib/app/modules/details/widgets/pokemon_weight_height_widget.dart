import 'package:blanko_podekex/app/common/models/pokemon_info_model.dart';
import 'package:blanko_podekex/app/core/utils/utils.dart';
import 'package:flutter/material.dart';

class PokemonWeightHeight extends StatelessWidget {
  final PokemonInfoModel pokemon;
  const PokemonWeightHeight({Key? key, required this.pokemon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                pokemon.weight.toString(),
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 36,
                  color: pokemon.getTypeColor(
                    pokemon.types![0],
                  ),
                ),
              ),
              Text(
                "Weight",
                style: TextStyle(color: Colors.grey, fontSize: 11),
              ),
            ],
          ),
          VerticalDivider(
            thickness: 2,
            color: pokemon.getTypeColor(
              pokemon.types![0],
            ),
          ),
          Column(
            children: [
              Text(
                pokemon.height.toString(),
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 36,
                  color: pokemon.getTypeColor(
                    pokemon.types![0],
                  ),
                ),
              ),
              Text(
                "Height",
                style: TextStyle(color: Colors.grey, fontSize: 11),
              ),
            ],
          ),
          VerticalDivider(
            thickness: 2,
            color: pokemon.getTypeColor(
              pokemon.types![0],
            ),
          ),
          Column(
            children: [
              Text(
                pokemon.ability != null
                    ? StringUtils().upperFirstCharacter(value: pokemon.ability!)
                    : '???',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 36,
                  color: pokemon.getTypeColor(
                    pokemon.types![0],
                  ),
                ),
              ),
              Text(
                "Ability",
                style: TextStyle(color: Colors.grey, fontSize: 11),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
