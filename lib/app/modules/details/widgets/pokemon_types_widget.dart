import 'package:blanko_podekex/app/common/models/pokemon_info_model.dart';
import 'package:blanko_podekex/app/core/utils/utils.dart';
import 'package:flutter/material.dart';

class PokemonTypes extends StatelessWidget {
  final PokemonInfoModel pokemon;
  const PokemonTypes({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (int i = 0; i < pokemon.types!.length; i++)
          Container(
            width: MediaQuery.of(context).size.width * 0.35,
            height: MediaQuery.of(context).size.height * 0.04,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: pokemon.getTypeColor(pokemon.types![i]),
            ),
            child: Center(
              child: Text(
                StringUtils().upperFirstCharacter(value: pokemon.types![i]),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
          ),
      ],
    );
  }
}
