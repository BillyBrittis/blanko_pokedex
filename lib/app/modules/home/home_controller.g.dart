// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on HomeControllerBase, Store {
  late final _$listPokemonModelAtom =
      Atom(name: 'HomeControllerBase.listPokemonModel', context: context);

  @override
  List<PokemonModel> get listPokemonModel {
    _$listPokemonModelAtom.reportRead();
    return super.listPokemonModel;
  }

  @override
  set listPokemonModel(List<PokemonModel> value) {
    _$listPokemonModelAtom.reportWrite(value, super.listPokemonModel, () {
      super.listPokemonModel = value;
    });
  }

  late final _$nextUrlAtom =
      Atom(name: 'HomeControllerBase.nextUrl', context: context);

  @override
  String get nextUrl {
    _$nextUrlAtom.reportRead();
    return super.nextUrl;
  }

  @override
  set nextUrl(String value) {
    _$nextUrlAtom.reportWrite(value, super.nextUrl, () {
      super.nextUrl = value;
    });
  }

  late final _$searchAppearAtom =
      Atom(name: 'HomeControllerBase.searchAppear', context: context);

  @override
  bool get searchAppear {
    _$searchAppearAtom.reportRead();
    return super.searchAppear;
  }

  @override
  set searchAppear(bool value) {
    _$searchAppearAtom.reportWrite(value, super.searchAppear, () {
      super.searchAppear = value;
    });
  }

  late final _$getPokemonsAsyncAction =
      AsyncAction('HomeControllerBase.getPokemons', context: context);

  @override
  Future<List<PokemonModel>> getPokemons() {
    return _$getPokemonsAsyncAction.run(() => super.getPokemons());
  }

  late final _$getPokemonsByUrlAsyncAction =
      AsyncAction('HomeControllerBase.getPokemonsByUrl', context: context);

  @override
  Future<List<PokemonModel>> getPokemonsByUrl() {
    return _$getPokemonsByUrlAsyncAction.run(() => super.getPokemonsByUrl());
  }

  late final _$filterPokemonAsyncAction =
      AsyncAction('HomeControllerBase.filterPokemon', context: context);

  @override
  Future<List<PokemonModel>> filterPokemon(String param) {
    return _$filterPokemonAsyncAction.run(() => super.filterPokemon(param));
  }

  late final _$HomeControllerBaseActionController =
      ActionController(name: 'HomeControllerBase', context: context);

  @override
  dynamic changeSearchAppear() {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.changeSearchAppear');
    try {
      return super.changeSearchAppear();
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listPokemonModel: ${listPokemonModel},
nextUrl: ${nextUrl},
searchAppear: ${searchAppear}
    ''';
  }
}
