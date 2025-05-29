import 'package:flutter/material.dart';

class Hw5 extends StatelessWidget {
  const Hw5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.search),
        actions: [
          const CircleAvatar(
            radius: 15,
            backgroundImage: NetworkImage("https://picsum.photos/200"),
          ),
          const SizedBox(width: 5),
          const Icon(Icons.more_horiz),
          const SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 800,
          width: 600,
          child: Center(
            child: Column(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Beautiful quarantine home offices",
                  style: TextStyle(fontSize: 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      color: Colors.white,
                      child:
                          const Image(image: NetworkImage("https://picsum.photos/450")),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "June 20",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "Warm plant based decoration \ndesigner office",
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.amber,
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          spacing: 5,
                          children: [
                            CircleAvatar(
                              radius: 10,
                              backgroundImage:
                                  NetworkImage("https://picsum.photos/200"),
                            ),
                            Text("Edna A. Lee"),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      color: Colors.white,
                      child:
                          const Image(image: NetworkImage("https://picsum.photos/450")),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "June 20",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "Warm plant based decoration \ndesigner office",
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.amber,
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          spacing: 5,
                          children: [
                            CircleAvatar(
                              radius: 10,
                              backgroundImage:
                                  NetworkImage("https://picsum.photos/200"),
                            ),
                            Text("Edna A. Lee"),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      color: Colors.white,
                      child:
                          const Image(image: NetworkImage("https://picsum.photos/450")),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "June 20",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "Warm plant based decoration \ndesigner office",
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.amber,
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          spacing: 5,
                          children: [
                            CircleAvatar(
                              radius: 10,
                              backgroundImage:
                                  NetworkImage("https://picsum.photos/200"),
                            ),
                            Text("Edna A. Lee"),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
