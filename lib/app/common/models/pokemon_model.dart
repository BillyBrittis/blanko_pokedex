class PokemonModel {
  int? id;
  String? name;
  String? image;

  PokemonModel({
    this.id,
    this.name,
    this.image,
  });

  List<int> blackList = [
    898,
    899,
    900,
    901,
    902,
    903,
    904,
    905,
    10128,
    10129,
    10146,
    10153,
    10154,
    10158,
    10159,
    10160,
    10181,
    10182,
    10183,
    10187,
    10192,
    10229,
    10230,
    10231,
    10232,
    10233,
    10234,
    10235,
    10236,
    10237,
    10238,
    10239,
    10239,
    10240,
    10241,
    10242,
    10243,
    10244,
    10245,
    10246,
    10247,
    10248,
    10249,
  ];

  String pokemonImage() {
    if (!blackList.contains(id)) {
      return 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$id.png';
    } else {
      return 'notfound';
    }
  }

  factory PokemonModel.fromJson(Map<String, dynamic> json) {
    return PokemonModel(
      id: json['url'] != null
          ? int.parse(json['url'].split('/')[6])
          : json['id'],
      name: json['name'],
      image: json['image'],
    );
  }
}
