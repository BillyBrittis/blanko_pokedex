import 'package:blanko_podekex/app/common/models/pokemon_info_model.dart';
import 'package:blanko_podekex/app/core/utils/utils.dart';
import 'package:blanko_podekex/app/modules/details/widgets/appbar_detail_widget.dart';
import 'package:blanko_podekex/app/modules/details/widgets/evolves_from_widget.dart';
import 'package:blanko_podekex/app/modules/details/widgets/pokemon_image_widget.dart';
import 'package:blanko_podekex/app/modules/details/widgets/pokemon_types_widget.dart';
import 'package:blanko_podekex/app/modules/details/widgets/pokemon_weight_height_widget.dart';
import 'package:blanko_podekex/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DetailPage extends StatelessWidget {
  final PokemonInfoModel pokemon;
  const DetailPage({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Modular.get();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: AppbarDetail(
          pokemon: pokemon,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PokemonImage(pokemon: pokemon),
            PokemonTypes(pokemon: pokemon),
            SizedBox(
              height: 30,
            ),
            PokemonWeightHeight(pokemon: pokemon),
            SizedBox(
              height: 20,
            ),
            EvolvesFrom(pokemon: pokemon),
          ],
        ),
      ),
    );
  }
}
