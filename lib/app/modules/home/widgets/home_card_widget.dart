import 'package:blanko_podekex/app/modules/home/home_controller.dart';
import 'package:blanko_podekex/app/modules/home/widgets/home_pokemon_widget.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatefulWidget {
  final HomeController controller;
  const HomeCard({Key? key, required this.controller}) : super(key: key);

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokedex'),
        centerTitle: true,
        backgroundColor: Color(0xffe3350d),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(10),
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: widget.controller.listPokemonModel
            .map(
              (e) => HomePokemon(pokemon: e),
            )
            .toList(),
      ),
    );
  }
}
