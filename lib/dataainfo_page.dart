import 'package:flutter/material.dart';

class DataainfoPage extends StatelessWidget {
  final Map<String, dynamic> product;
  const DataainfoPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product["name"]),

      ),
      body: Center(
        child: Image.network(product["image"],
        height: 200,
        width: 200,
        fit: BoxFit.contain,),
      ),
    );
  }
}
