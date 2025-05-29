import 'package:flutter/material.dart';
import 'package:homework4/hellofood4.dart';

class Hellofood3 extends StatelessWidget {
  final String image;
  final String name;
  final String reyting;

  final String price;
  const Hellofood3({
    super.key,
    required this.image,
    required this.name,
    required this.reyting,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton.outlined(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Hellofood4(),
                ),
              );
            },
            icon: const Icon(
              Icons.work,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        image,
                        width: 900,
                        height: 400,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontSize: 25.0),
                  ),
                  Text(
                    price,
                    style: const TextStyle(fontSize: 25.0),
                  ),
                ],
              ),
              const Row(
                children: [
                  Text(
                    "by ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                    ),
                  ),
                  Text(
                    "pizza hut",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.grey,
                    child: Text(
                      '-',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    color: Colors.red,
                    height: 30,
                    width: 100,
                    child: const Text(
                      "Add To Bag",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.grey,
                    child: Text(
                      '+',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25.0,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "Food Details",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "Food Reviews",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              const Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
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
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.schedule,
                color: Colors.blue,
              ),
              label: '12p.m.-3p.m.'),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.directions,
                color: Colors.green,
              ),
              label: '3.5 k.m.'),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.map,
                color: Colors.red,
              ),
              label: 'Map View'),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.pedal_bike,
                color: Colors.deepOrange,
              ),
              label: 'Delivery'),
        ],
      ),
    );
  }
}