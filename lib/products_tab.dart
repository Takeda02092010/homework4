import 'package:flutter/material.dart';

import 'package:homework4/db.dart';
import 'package:homework4/lesailesinfo.dart';

class ProductsTab extends StatelessWidget {
  const ProductsTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 320,
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

class ProductCard extends StatefulWidget {
  final Map<String, dynamic> product;
  const ProductCard({super.key, required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  void editProduct(BuildContext context, Map<String, dynamic> product) {
    showDialog(
      context: context,
      builder: (context) {
        final TextEditingController nameController =
            TextEditingController(text: product['name']);
        final TextEditingController priceController =
            TextEditingController(text: product['price'].toString());
        return AlertDialog(
          backgroundColor: Colors.white,
          title: const Text('Edit product'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Name'),
              const SizedBox(height: 5.0),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                    borderSide: BorderSide(
                      color: Colors.grey.shade200,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                    borderSide: BorderSide(
                      color: Colors.grey.shade300,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              const Text('Price'),
              const SizedBox(height: 5.0),
              TextField(
                controller: priceController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                    borderSide: BorderSide(
                      color: Colors.grey.shade200,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                    borderSide: BorderSide(
                      color: Colors.grey.shade300,
                    ),
                  ),
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
              ),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                product['name'] = nameController.text;
                product['price'] = priceController.text;
                setState(() {});
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue,
              ),
              child: const Text('Submit'),
            ),
          ],
        );
      },
    );
  }

  bool isFavourite(
    List<Map<String, dynamic>> allProducts,
    Map<String, dynamic> product,
  ) {
    for (var favProduct in allProducts) {
      if (favProduct['name'] == product['name']) {
        return true;
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsPage(product: widget.product),
          ),
        );
      },
      child: Card(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image(
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                    image: NetworkImage(widget.product['image']),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: IconButton(
                    onPressed: () {
                      /*
  bool isFavourite(
    List<Map<String, dynamic>> allProducts,
    Map<String, dynamic> product,
  ) {
    for (var favProduct in allProducts) {
      if (favProduct['name'] == product['name']) {
        return true;
      }
    }
    return false;
  }
   */
                      final bool isFav =
                          isFavourite(favourites, widget.product);
                      if (isFav) {
                        favourites.remove(widget.product);
                      } else {
                        favourites.add(widget.product);
                      }
                      setState(() {});
                    },
                    icon: isFavourite(favourites, widget.product)
                        ? const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : const Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                          ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5.0,
                children: [
                  Text(
                    widget.product['name'],
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.product['price'].toString(),
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          editProduct(context, widget.product);
                        },
                        icon: const Icon(Icons.edit),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
