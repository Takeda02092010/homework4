import 'package:flutter/material.dart';

class Instagram extends StatelessWidget {
  const Instagram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Instagram",
        ),
        actions: [
          Row(
            spacing: 10,
            children: [
              Icon(Icons.add_box_outlined),
              Icon(Icons.favorite_border),
              SizedBox(
                height: 16,
              )
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 10,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              NetworkImage("https://picsum.photos/200"),
                          radius: 15,
                          child: Align(),
                        ),
                        Text("Your story"),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              NetworkImage("https://picsum.photos/200"),
                          radius: 15,
                        ),
                        Text("Oliver"),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              NetworkImage("https://picsum.photos/200"),
                          radius: 15,
                        ),
                        Text("Oliver"),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              NetworkImage("https://picsum.photos/200"),
                          radius: 15,
                        ),
                        Text("Oliver"),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              NetworkImage("https://picsum.photos/200"),
                          radius: 15,
                        ),
                        Text("Oliver"),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              NetworkImage("https://picsum.photos/200"),
                          radius: 15,
                        ),
                        Text("Oliver"),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              NetworkImage("https://picsum.photos/200"),
                          radius: 15,
                        ),
                        Text("Oliver"),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              NetworkImage("https://picsum.photos/200"),
                          radius: 15,
                        ),
                        Text("Oliver"),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              NetworkImage("https://picsum.photos/200"),
                          radius: 15,
                        ),
                        Text("Oliver"),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                           NetworkImage("https://picsum.photos/200"),
                        radius: 15,
                      ),
                      Text('Samuel'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.more_horiz),
                    ],
                  )
                ],
              ),
              Image(
                image: NetworkImage("https://picsum.photos/300"),
                width: 400,
                fit: BoxFit.cover,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 10,
                    children: [
                      Icon(Icons.favorite_border),
                      Icon(Icons.chat_bubble_outline),
                      Icon(Icons.send_outlined),
                    ],
                  ),
                  Icon(Icons.bookmark_border),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://picsum.photos/200"),
                    radius: 10,
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://picsum.photos/200"),
                    radius: 10,
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://picsum.photos/200"),
                    radius: 10,
                  ),
                  Text('Liked by Grace and others'),
                ],
              ),
              Text("elise good times. great vibes."),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.video_library), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
        ],
      ),
    );
  }
}
