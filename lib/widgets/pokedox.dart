import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:homework4/widgets/pokedox_info.dart';
import 'package:http/http.dart' as http;

class Pokedex extends StatelessWidget {
  const Pokedex({super.key});

  Future<List> fetchPokemon() async {
    final response = await http.get(
      Uri.parse(
          "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json"),
    );
    final jsonData = jsonDecode(response.body);
    return jsonData["pokemon"];
  }

  Color getColor(String type) {
    switch (type) {
      case "Grass":
        return Colors.green;
      case "Fire":
        return Colors.redAccent;
      case "Water":
        return Colors.blue;
      case "Bug":
        return Colors.lightGreen;
      case "Electric":
        return Colors.yellow.shade700;
      case "Poison":
        return Colors.deepPurpleAccent;
      case "Normal":
        return Colors.grey;
      default:
        return Colors.brown;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Pokedex",
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: FutureBuilder<List>(
        future: fetchPokemon(),
        builder: (context, snapshot) {
          final pokemons = snapshot.data!;
          return GridView.builder(
            itemCount: pokemons.length,
            padding: const EdgeInsets.all(12),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 1.3,
            ),
            itemBuilder: (context, index) {
              final poke = pokemons[index];
              final typeColor = getColor(poke["type"][0]);

              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PokedexInfo(
                        id: poke["id"], // int
                        num: poke["num"], // String
                        name: poke["name"], // String
                        img: poke["img"], // String
                        type: List<String>.from(poke["type"]), // List<String>
                        height: poke["height"], // String
                        weight: poke["weight"], // String
                        candy: poke["candy"], // String
                        candyCount:
                            poke["candy_count"] ?? 0, // int (ba'zilarida yo‘q)
                        egg: poke["egg"], // String
                        spawnChance: poke["spawn_chance"].toDouble(), // double
                        avgSpawns: poke["avg_spawns"], // int
                        spawnTime: poke["spawn_time"], // String
                        multipliers: poke["multipliers"] == null
                            ? []
                            : List<double>.from(
                                poke["multipliers"]), evolution: '', 
                                // abilities: [], // List<double>
                        // weaknesses: List<String>.from(
                        //     poke["weaknesses"]), evolution: '', abilities: [], // List<String>
                      ),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: typeColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        poke["name"],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      Text(
                        "${poke["num"]}",
                        style: const TextStyle(color: Colors.white70),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(
                              poke["type"].length,
                              (i) => Container(
                                margin: const EdgeInsets.only(bottom: 4),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.white24,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  poke["type"][i],
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Image.network(
                            poke["img"],
                            height: 65,
                            width: 65,
                            fit: BoxFit.contain,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

