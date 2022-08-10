import 'package:blanko_podekex/app/common/models/pokemon_model.dart';
import 'package:blanko_podekex/app/modules/home/home_controller.dart';
import 'package:blanko_podekex/app/modules/home/widgets/home_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Modular.get();

    return FutureBuilder<List<PokemonModel>>(
      future: controller.getPokemons(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Container(
            color: Colors.white,
            child: Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            ),
          );
        }

        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          return HomeCard(controller: controller);
        }

        if (snapshot.hasError) {
          return Text("Falha ao carregar dados");
        }

        return Container();
      },
    );
  }
}
