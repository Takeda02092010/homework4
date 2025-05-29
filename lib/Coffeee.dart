import 'package:flutter/material.dart';
import 'package:homework4/brew_deja_db.dart';

class CoffeeCard extends StatefulWidget {
  final String imageUrl;
  final String name;
  final String price;
  final double rating;

  const CoffeeCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.rating,
  });

  @override
  State<CoffeeCard> createState() => _CoffeeCardState();
}

class _CoffeeCardState extends State<CoffeeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        color: Colors.white.withValues(alpha: .1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: Image.network(
                  widget.imageUrl,
                  height: 120,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: .6),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.star, color: Colors.orange, size: 14),
                      const SizedBox(width: 2),
                      Text(
                        widget.rating.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.price,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        dbCart.add(
                          widget.imageUrl as Map<String, dynamic>,
                        );
                        dbCart.add(
                          widget.name as Map<String, dynamic>,
                        );
                        dbCart.add(
                          widget.price as Map<String, dynamic>,
                        );
                        dbCart.add(
                          widget.rating as Map<String, dynamic>,
                        );
                        
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: const Color(0xFFEADFAB),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(Icons.add, size: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
