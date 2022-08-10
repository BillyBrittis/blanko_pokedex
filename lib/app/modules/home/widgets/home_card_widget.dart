import 'package:blanko_podekex/app/modules/home/home_controller.dart';
import 'package:blanko_podekex/app/modules/home/widgets/appbar/appbar_search_widget.dart';
import 'package:blanko_podekex/app/modules/home/widgets/appbar/appbar_widget.dart';
import 'package:blanko_podekex/app/modules/home/widgets/home_pokemon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeCard extends StatefulWidget {
  final HomeController controller;
  const HomeCard({Key? key, required this.controller}) : super(key: key);

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  ScrollController? _scrollController;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController()..addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(56.0),
            child: widget.controller.searchAppear
                ? AppbarSearch()
                : AppbarWidget(),
          ),
          body: Stack(
            children: [
              GridView.count(
                controller: _scrollController,
                physics: isLoading
                    ? NeverScrollableScrollPhysics()
                    : AlwaysScrollableScrollPhysics(),
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
              Visibility(
                visible: isLoading,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 18.0),
                    child: CircularProgressIndicator(),
                  ),
                ),
              )
            ],
          ));
    });
  }

  _scrollListener() async {
    if (_scrollController!.offset >=
            _scrollController!.position.maxScrollExtent &&
        !_scrollController!.position.outOfRange) {
      if (widget.controller.nextUrl.isNotEmpty) {
        setState(() {
          isLoading = true;
        });
        await widget.controller.getPokemonsByUrl();
      }
      setState(() {
        isLoading = false;
      });
    }
  }
}
