import 'package:flutter/material.dart';

class Stakscoop2page extends StatelessWidget {
  const Stakscoop2page({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Padding(
        padding: EdgeInsets.only(
          left: 16.0,
          right: 16.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "scoop",
                  style: TextStyle(
                    fontSize: 50.0,
                    fontStyle: FontStyle.italic,
                    color: Colors.amber,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "order  ",
                      style: TextStyle(
                        color: Colors.amber,
                      ),
                    ),
                    Text(
                      "contact",
                      style: TextStyle(
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              "Find Your Flavor",
              style: TextStyle(
                fontSize: 80,
                fontStyle: FontStyle.normal,
                color: Colors.amber,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Trending flavors",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 30,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "see all",
                      style: TextStyle(
                        color: Colors.amber,
                      ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.amber,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: NetworkImage("https://picsum.photos/200/"),
                ),
                Image(
                  image: NetworkImage("https://picsum.photos/200/"),
     ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


