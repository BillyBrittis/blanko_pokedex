import 'package:blanko_podekex/app/common/models/pokemon_info_model.dart';
import 'package:blanko_podekex/app/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppbarDetail extends StatelessWidget {
  final PokemonInfoModel pokemon;
  const AppbarDetail({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: pokemon.getTypeColor(pokemon.types![0]),
      title: Text(
          '${StringUtils().upperFirstCharacter(value: pokemon.name!)}  #${pokemon.id}'),
      elevation: 0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {
          Modular.to.navigate('/home/');
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
