import 'package:flutter/material.dart';

class Social extends StatelessWidget {
  const Social({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Social",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          const Icon(
            Icons.notifications,
            color: Colors.black,
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0),
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
                          radius: 15,
                          child: Align(),
                        ),
                        Text("Your story"),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 15,
                        ),
                        Text("den.a"),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 15,
                        ),
                        Text("Oliver"),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 15,
                        ),
                        Text("sdf"),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 15,
                        ),
                        Text("Ohsf"),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 15,
                        ),
                        Text("fmj"),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 15,
                        ),
                        Text("qeg"),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 15,
                        ),
                        Text("hqe"),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 15,
                        ),
                        Text("qhea"),
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
                        radius: 15,
                      ),
                      Text('rjiialxp'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.more_horiz),
                    ],
                  ),
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
                      Text("2k"),
                      Icon(Icons.chat_bubble_outline),
                      Text("202"),
                      Icon(Icons.repeat),
                      Text("300"),
                    ],
                  ),
                  Icon(Icons.bookmark_add_outlined),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                        "If your favorite shades are light blue and pale pink, you can say that you prefer pastels. Pastel is also an adjective describing a soft color, like a pastel shade of green or a pastel lavender... "),
                  ),
                  Text(
                    "more",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                      ),
                      Text('rjiialxp'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.more_horiz),
                    ],
                  ),
                ],
              ),
              Text(
                  "Yesterday, I met this girl near my house and she asked for a way and of course I did tell her but, after 10 minutes she came back again and asked for my number! My god, she's so cute 💕")
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
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
          const BottomNavigationBarItem(
              icon: Icon(Icons.message), label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
        ],
      ),
    );
  }
}
