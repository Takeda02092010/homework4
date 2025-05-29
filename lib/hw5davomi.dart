import 'package:flutter/material.dart';

class Hw5davomi extends StatelessWidget {
  const Hw5davomi({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: NetworkImage("https://picsum.photos/400"),
          ),
          Text("23 June 2020",style: TextStyle(color:Colors.grey),),
          Text(
            "Minimalist neutral home office",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.star,
                size: 25,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                size: 25,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                size: 25,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                size: 25,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                size: 25,
                color: Colors.grey,
              ),
            ],
          ),
          Text(
              "Minimalist neutral home office.Minimalist neutral home office.Minimalist neutral home office.Minimalist neutral home office.Minimalist neutral home office.Minimalist neutral home office.Minimalist neutral home office.Minimalist neutral home office.Minimalist neutral home office.Minimalist neutral home office.Minimalist neutral home office.Minimalist neutral home office.Minimalist neutral home office.Minimalist neutral home office.Minimalist neutral home office.Minimalist neutral home office.Minimalist neutral home office.Minimalist neutral home office.Minimalist neutral home office.Minimalist neutral home office."),
              SizedBox(height: 10,),
          Row(
            spacing: 5,
            children: [
              CircleAvatar(
                radius: 10,
                backgroundImage: NetworkImage("https://picsum.photos/200"),
              ),
              Column(children: [
                Text(
                  "posted by",
                  style: TextStyle(color: Colors.grey),
                ),
                Text("Edna A. Lee"),
              ])
            ],
          )
        ],
      ),
    );
  }
}
