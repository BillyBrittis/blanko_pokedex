import 'package:blanko_podekex/app/common/models/pokemon_info_model.dart';
import 'package:blanko_podekex/app/core/utils/utils.dart';
import 'package:flutter/material.dart';

class EvolvesFrom extends StatelessWidget {
  final PokemonInfoModel pokemon;
  const EvolvesFrom({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Visibility(
          visible: pokemon.evolveFrom!['name'] != null,
          child: Column(
            children: [
              Text(
                'Evolves From',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                  color: pokemon.getTypeColor(
                    pokemon.types![0],
                  ),
                ),
              ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 4,
                    color: pokemon.getTypeColor(pokemon.types![0]),
                  ),
                  shape: BoxShape.circle,
                ),
                child: pokemon.evolveFrom!['image'] != null
                    ? Center(
                        child: Image.network(
                          pokemon.evolveFrom!['image'],
                          height: 100,
                          width: 100,
                        ),
                      )
                    : null,
              ),
              Text(
                pokemon.evolveFrom!['name'] != null
                    ? '${StringUtils().upperFirstCharacter(value: pokemon.evolveFrom!['name'])} Nº${pokemon.evolveFrom!['id']}'
                    : '',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: pokemon.getTypeColor(
                    pokemon.types![0],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              pokemon.evolveFrom!['types'] != null
                  ? Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          for (int i = 0;
                              i < pokemon.evolveFrom!['types'].length;
                              i++)
                            Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              height: MediaQuery.of(context).size.height * 0.04,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: pokemon.getTypeColor(
                                  pokemon.evolveFrom!['types'][i],
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  StringUtils().upperFirstCharacter(
                                      value: pokemon.evolveFrom!['types'][i]),
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
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ],
    );
  }
}
