import 'package:flutter/material.dart';

class PokedexInfo extends StatefulWidget {
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
  final int avgSpawns;
  final String spawnTime;
  final List<double> multipliers;
  final String evolution;

  const PokedexInfo({
    super.key,
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
    required this.evolution,
  });

  @override
  State<PokedexInfo> createState() => _PokedexInfoState();
}

class _PokedexInfoState extends State<PokedexInfo> {
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
      backgroundColor: getColor(widget.type[0]),
      appBar: AppBar(
        title: Text(widget.name),
        backgroundColor: getColor(widget.type[0]),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(widget.img, height: 150),
            ),
            const SizedBox(height: 16),
            Text(
              widget.name,
              style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              "ID: ${widget.num}",
              style: const TextStyle(fontSize: 16, color: Colors.white70),
            ),
            const SizedBox(height: 16),
            const Text("Types",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            // Types
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: widget.type.map((t) {
            //     Color containerColor = getColor(t);
            //     return Padding(
            //       padding: const EdgeInsets.only(bottom: 8), 
            //       child: Container(
            //         padding:
            //             const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            //         decoration: BoxDecoration(
            //           color: containerColor,
            //           borderRadius: BorderRadius.circular(12),
            //         ),
            //         child: Text(
            //           t,
            //           style: const TextStyle(color: Colors.white, fontSize: 14),
            //         ),
            //       ),
            //     );
            //   }).toList(),
            // ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text("Height: ${widget.height}",
                  style: const TextStyle(fontSize: 16, color: Colors.white)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text("Weight: ${widget.weight}",
                  style: const TextStyle(fontSize: 16, color: Colors.white)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text("Candy: ${widget.candy}",
                  style: const TextStyle(fontSize: 16, color: Colors.white)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text("Candy Count: ${widget.candyCount}",
                  style: const TextStyle(fontSize: 16, color: Colors.white)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text("Egg: ${widget.egg}",
                  style: const TextStyle(fontSize: 16, color: Colors.white)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text("Spawn Chance: ${widget.spawnChance}",
                  style: const TextStyle(fontSize: 16, color: Colors.white)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text("Avg Spawns: ${widget.avgSpawns}",
                  style: const TextStyle(fontSize: 16, color: Colors.white)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text("Spawn Time: ${widget.spawnTime}",
                  style: const TextStyle(fontSize: 16, color: Colors.white)),
            ),
            if (widget.multipliers.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text("Multipliers: ${widget.multipliers.join(", ")}",
                    style: const TextStyle(fontSize: 16, color: Colors.white)),
              ),
            const SizedBox(height: 20),
            if (widget.evolution.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text("Evolution: ${widget.evolution}",
                    style: const TextStyle(fontSize: 16, color: Colors.white)),
              ),
          ],
        ),
      ),
    );
  }
}
