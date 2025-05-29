class Pokemon {
  final int id;
  final String num;
  final String name;
  final String img;
  final List<String> type;
  final String height;
  final String weight;
  final String candy;
  final int candyCount;
  final String egg;
  final double spawnChance;
  final double avgSpawns;
  final String spawnTime;
  final List<double> multipliers;
  final List<String> weaknesses;

  const Pokemon({
    required this.id,
    required this.num,
    required this.name,
    required this.img,
    required this.type,
    required this.height,
    required this.weight,
    required this.candy,
    required this.candyCount,
    required this.egg,
    required this.spawnChance,
    required this.avgSpawns,
    required this.spawnTime,
    required this.multipliers,
    required this.weaknesses,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
        id: json["id"] ?? 0,
        num: json["num"] ?? "",
        name: json["name"] ?? "",
        img: json["img"] ?? "",
        type: json["type"] != null
            ? List<String>.from(json["type"].map((x) => x.toString()))
            : [],
        height: json["height"] ?? "",
        weight: json["weight"] ?? "",
        candy: json["candy"] ?? "",
        candyCount: json["candyCount"] ?? 0,
        egg: json["egg"] ?? "",
        spawnChance: json["spawnChance"]?.toDouble() ?? 0.0,
        avgSpawns:
            json["avgSpawns"] != null ? json['avg_spawns'].toDouble() : 0,
        spawnTime: json["spawnTime"] ?? "",
        multipliers: json["multipliers"] != null
            ? List<double>.from(json["multipliers"].map((x) => x.toDouble))
            : [],
        weaknesses: json["weaknesses"] != null
            ? List<String>.from(json["weaknesses"])
            : []);
  }
}
