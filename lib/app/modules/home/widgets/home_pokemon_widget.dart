import 'package:blanko_podekex/app/common/models/pokemon_model.dart';
import 'package:blanko_podekex/app/modules/home/home_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePokemon extends StatefulWidget {
  final PokemonModel pokemon;
  const HomePokemon({Key? key, required this.pokemon}) : super(key: key);

  @override
  State<HomePokemon> createState() => _HomePokemonState();
}

class _HomePokemonState extends State<HomePokemon> {
  @override
  Widget build(BuildContext context) {
    HomeController homeController = Modular.get();

    return GestureDetector(
      onTap: () {
        Modular.to.navigate('/detail/', arguments: [
          widget.pokemon,
          homeController.listPokemonModel[widget.pokemon.id!]
        ]);
      },
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: Stack(
          children: [
            Center(
              child: widget.pokemon.pokemonImage() != 'notfound'
                  ? CachedNetworkImage(
                      imageUrl: widget.pokemon.pokemonImage(),
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) => Center(
                        child: CircularProgressIndicator(
                            value: downloadProgress.progress),
                      ),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    )
                  : Icon(Icons.wallpaper_rounded, size: 50),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                widget.pokemon.name!,
                style: TextStyle(
                    fontFamily: 'Montserrat', fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
