class PokemonModel {
  int? id;
  String? name;
  String? image;

  PokemonModel({
    this.id,
    this.name,
    this.image,
  });

  String get pokemonImage =>
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$id.png';

  factory PokemonModel.fromJson(Map<String, dynamic> json) {
    return PokemonModel(
      id: int.parse(json['url'].split('/')[6]),
      name: json['name'],
      image: json['image'],
    );
  }
}
