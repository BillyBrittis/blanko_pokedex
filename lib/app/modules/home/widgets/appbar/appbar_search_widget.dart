import 'package:blanko_podekex/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppbarSearch extends StatelessWidget {
  const AppbarSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Modular.get();
    TextEditingController inputController = TextEditingController();

    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          homeController.changeSearchAppear();
        },
      ),
      title: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: TextField(
            controller: inputController,
            onSubmitted: (String value) {
              homeController.filterPokemon(value);
            },
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              suffixIcon: IconButton(
                icon: Icon(Icons.clear),
                onPressed: () {
                  inputController.text = '';
                  homeController.changeSearchAppear();
                  FocusScope.of(context).unfocus();
                },
              ),
              hintText: 'Nome ou número',
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
