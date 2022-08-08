class PokemonModel {
  String? name;

  PokemonModel({
    this.name,
  });

  factory PokemonModel.fromJson(Map<String, dynamic> json) {
    return PokemonModel(
      name: json['name'],
    );
  }

  Map<String, dynamic> toMap(PokemonModel pokemonModel) {
    return {
      'name': name,
    };
  }
}
