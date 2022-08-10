import 'package:blanko_podekex/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Modular.get();

    return AppBar(
      title: Text('Pokedéx'),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            homeController.changeSearchAppear();
          },
        )
      ],
    );
  }
}
