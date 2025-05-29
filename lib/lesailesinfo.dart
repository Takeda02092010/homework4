import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final Map<String, dynamic> product;

  const DetailsPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product['name'])),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              product['image'],
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            Text(
              product['name'],
              style: const TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
             const Text(
                "something",
                style: TextStyle(fontSize: 16),
              ),
            Text(
              "${product['price']} ",
              style: const TextStyle(fontSize: 22, color: Colors.black),
            ),
            const SizedBox(height: 20),
         
            
          ],
        ),
      ),
    );
  }
}
