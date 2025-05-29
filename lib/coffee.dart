import 'package:flutter/material.dart';
import 'package:homework4/info_coffee.dart';

class Coffee extends StatelessWidget {
  const Coffee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.grid_view,
                    size: 30,
                    color: Color.fromARGB(255, 183, 133, 115),
                  ),
                  CircleAvatar(),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Find the best \nCoffee to your taste",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Find your coffee",
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Icon(
                    Icons.tune,
                    color: Color.fromARGB(255, 183, 133, 115),
                    size: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Espresso",
                        style: TextStyle(
                            color: Color.fromARGB(255, 183, 133, 115),
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.circle,
                        color: Color.fromARGB(255, 183, 133, 115),
                        size: 10.0,
                      ),
                    ],
                  ),
                  Text(
                    "Latte",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Text(
                    "Capuccino",
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  Text(
                    "Cafeteire",
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const InfoCoffee(
                            image:
                                'https://thelittlestcrumb.com/wp-content/uploads/espresso-macchiato-featured-image-1.jpg',
                            name: "Espresso",
                            reyting: "4.5",
                            vith: "with Oat Milk",
                            price: "\$ 4.20 ",
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 180,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  'https://thelittlestcrumb.com/wp-content/uploads/espresso-macchiato-featured-image-1.jpg',
                                  height: 100,
                                  width: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                top: 0,
                                right: 0,
                                child: Container(
                                  padding: const EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: const Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: Colors.orange, size: 16),
                                      SizedBox(width: 4),
                                      Text("4.5",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Espresso",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            "with Oat Milk",
                            style: TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "\$4.20",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 183, 133, 115),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding: const EdgeInsets.all(8),
                                child:
                                    const Icon(Icons.add, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const InfoCoffee(
                            image:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS58t0ptENoeXLtZ8yK3MumUmjTpk2uhEkRr2trTw2MCzgNG7Lw_E6hxsy7d04n3fxcfpY&usqp=CAU',
                            name: "Espresso",
                            reyting: "4.5",
                            vith: "with Milk",
                            price: "\$ 4.20 ",
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 180,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS58t0ptENoeXLtZ8yK3MumUmjTpk2uhEkRr2trTw2MCzgNG7Lw_E6hxsy7d04n3fxcfpY&usqp=CAU',
                                  height: 100,
                                  width: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                top: 0,
                                right: 0,
                                child: Container(
                                  padding: const EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: const Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: Colors.orange, size: 16),
                                      SizedBox(width: 4),
                                      Text("4.5",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Espresso",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            "with Milk",
                            style: TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "\$4.20",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 183, 133, 115),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding: const EdgeInsets.all(8),
                                child:
                                    const Icon(Icons.add, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                "Special for you",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.brown.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV0sVZZSKeAokPhMSBDt5rmrogWsDe-OyKaw&s',
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: Text(
                        "Specially mixed and brewed which you must try!",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
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
                Icons.home_outlined,
                color: Color.fromARGB(255, 183, 133, 115),
              ),
              label: ''),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                color: Color.fromARGB(255, 183, 133, 115),
              ),
              label: ''),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_outlined,
                color: Color.fromARGB(255, 183, 133, 115),
              ),
              label: ''),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Color.fromARGB(255, 183, 133, 115),
              ),
              label: ''),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outlined,
                color: Color.fromARGB(255, 183, 133, 115),
              ),
              label: ''),
        ],
      ),
    );
  }
}
