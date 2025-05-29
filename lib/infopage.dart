import 'package:flutter/material.dart';

class Infopage extends StatelessWidget {
  final String image;
  final String text;
  const Infopage({super.key,required this.image,required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Container(
                      height: 250,
                      width: 150,
                      color: Colors.amber,
                      child: Column(
                        spacing: 10,
                        children: [
                          Image(
                            image: NetworkImage(image),
                          ),
                        Text(text),
                        ],
                      ),
            ),
      ),);
  }
}
