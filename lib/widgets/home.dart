import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homework4/Coffeee.dart';
import 'package:homework4/brew_deja_db.dart';
import 'package:homework4/detailsPageCoffee.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff201520),
      body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'déjà',
              style: GoogleFonts.rosarivo(
                fontSize: 36,
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Brew',
                  style: GoogleFonts.rosarivo(
                    fontSize: 48,
                    color: const Color(0xFFEFE3C8),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const CircleAvatar(
                  radius: 22,
                  backgroundColor: Color.fromARGB(255, 218, 192, 114),
                ),
              ],
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: "Browse your favourite coffee...",
                hintStyle: const TextStyle(color: Colors.white54),
                prefixIcon: const Icon(Icons.search, color: Colors.white70),
                filled: true,
                fillColor: const Color(0xFF171017),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.only(top: 10),
                itemCount: dbProducts.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) {
                  final product = dbProducts[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Detailspagecoffee(
                            product: product,
                            imageUrl: product['image'],
                            name: product['name'],
                            price: product['price'].toString(),
                            rating: double.parse(product['rating'].toString()),
                          ),
                        ),
                      );
                    },
                    child: CoffeeCard(
                      imageUrl: product['image'],
                      name: product['name'],
                      price: product['price'].toString(),
                      rating: double.parse(product['rating'].toString()),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}