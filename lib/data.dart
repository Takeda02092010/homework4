import 'package:flutter/material.dart';
import 'package:homework4/dataainfo_page.dart';

class Dataa extends StatelessWidget {
  const Dataa({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> products = [
      {
        'name': 'Hamburger',
        'price': 21000,
        'image': 'https://picsum.photos/id/201/100'
      },
      {
        'name': 'Cheeseburger',
        'price': 26000,
        'image': 'https://picsum.photos/id/202/100'
      },
      {
        'name': 'Burger',
        'price': 24000,
        'image': 'https://picsum.photos/id/203/100'
      },
      {
        'name': 'Hot-Dog',
        'price': 21000,
        'image': 'https://picsum.photos/id/204/100'
      },
      {
        'name': 'Lester',
        'price': 27000,
        'image': 'https://picsum.photos/id/101/100'
      },
      {
        'name': 'Lester-cheese',
        'price': 29000,
        'image': 'https://picsum.photos/id/102/100'
      }
    ];
    return Scaffold(
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 300,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
        ),
        itemBuilder: (context, index) {
          return ProductCard(product: products[index]);
        },
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Map<String, dynamic> product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: InkWell(
        onTap: () {Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DataainfoPage(product:product,)),
                      ( route) => false,
                    );},
        child: Card(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image(
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                  image: NetworkImage(product['image']),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product['name'],
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      product['price'].toString(),
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
