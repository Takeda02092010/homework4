import 'package:flutter/material.dart';
import 'package:homework4/hellofood3.dart';
class Hellofood2 extends StatefulWidget {
  const Hellofood2({super.key});

  @override
  State<Hellofood2> createState() => _Hellofood2State();
}
class _Hellofood2State extends State<Hellofood2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("What would like to eat?"),
                  Icon(Icons.notifications_outlined),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "What would your like to buy?",
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.deepOrange,
                        ),
                        suffixIcon: Icon(
                          Icons.format_list_bulleted,
                          color: Colors.deepOrange,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4OI6Rb454D92tbIhlDbJXgidRPRta_XNHEQ&s",
                        width: 50,
                        height: 50,
                      ),
                      const Text("Burger"),
                    ],
                  ),
                  Column(
                    children: [
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRotI2Ym4V7ju1snklyjxRujS7iqsGCzoBxtQ&s",
                        width: 50,
                        height: 50,
                      ),
                      const Text("Sushi"),
                    ],
                  ),
                  Column(
                    children: [
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRX6nFy-BKi3V6Ab4ddX0J12YAI_9lhhIpLSA&s",
                        width: 50,
                        height: 50,
                      ),
                      const Text("Pizza"),
                    ],
                  ),
                  Column(
                    children: [
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSZIggclFXvbpMmeRZC4KcdRoN8DWaYDgkuA&s",
                        width: 50,
                        height: 50,
                      ),
                      const Text("Cake"),
                    ],
                  ),
                  Column(
                    children: [
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTy24XkFt_cieo_ZIhQSzlcYgSHFcDZ3G4z7A&s",
                        width: 50,
                        height: 50,
                      ),
                      const Text("Ramen"),
                    ],
                  ),
                  Column(
                    children: [
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaf_x8SOQsZRNQpoLxc06LNEzsWUjctKEVoQ&s",
                        width: 50,
                        height: 50,
                      ),
                      const Text("Ice Cream"),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Popular foods",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Hellofood3(
                            image:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0g1m_GiI1M6wuf7YBhpdx3EYRU5LigzWvGQ&s',
                            name: "Fried egg",
                            reyting: "4.9",
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
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0g1m_GiI1M6wuf7YBhpdx3EYRU5LigzWvGQ&s',
                                  height: 100,
                                  width: 300,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Positioned(
                                top: 0,
                                right: 0,
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Fried egg",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 14),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "4.9",
                                    style: TextStyle(
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  Icon(Icons.star,
                                      color: Colors.orange, size: 10.0),
                                  Icon(Icons.star,
                                      color: Colors.orange, size: 10.0),
                                  Icon(Icons.star,
                                      color: Colors.orange, size: 10.0),
                                  Icon(Icons.star,
                                      color: Colors.orange, size: 10.0),
                                  Icon(Icons.star,
                                      color: Colors.grey, size: 10.0),
                                  Text(
                                    "\$15.06",
                                    style: TextStyle(
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Hellofood3(
                            image:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6kIGNiS4QuV66ri-emhELD6skrM9FMbXn7Q&s',
                            name: "Mixed Vegetable",
                            reyting: "4.9",
                            price: "\$ 17.03 ",
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
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6kIGNiS4QuV66ri-emhELD6skrM9FMbXn7Q&s',
                                  height: 100,
                                  width: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Mixed Vegetable",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 14),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "4.9",
                                    style: TextStyle(
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  Icon(Icons.star,
                                      color: Colors.orange, size: 10.0),
                                  Icon(Icons.star,
                                      color: Colors.orange, size: 10.0),
                                  Icon(Icons.star,
                                      color: Colors.orange, size: 10.0),
                                  Icon(Icons.star,
                                      color: Colors.orange, size: 10.0),
                                  Icon(Icons.star,
                                      color: Colors.grey, size: 10.0),
                                  Text(
                                    "\$17.03",
                                    style: TextStyle(
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ],
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
                height: 20.0,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Best Foods",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Hellofood3(
                        image:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEgzHidOx_ppC-AYHESLTf_wo4cvQKgQQrrQ&s',
                        name: "Grilled Salmon",
                        reyting: "4.9",
                        price: "\$ 96.00 ",
                      ),
                    ),
                  );
                },
                child: Container(
                  width: 600.0,
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
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEgzHidOx_ppC-AYHESLTf_wo4cvQKgQQrrQ&s',
                              height: 300,
                              width: 600,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Grilled Salmon",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 14),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "4.9",
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                              Icon(Icons.star,
                                  color: Colors.orange, size: 20.0),
                              Icon(Icons.star,
                                  color: Colors.orange, size: 20.0),
                              Icon(Icons.star,
                                  color: Colors.orange, size: 20.0),
                              Icon(Icons.star,
                                  color: Colors.orange, size: 20.0),
                              Icon(Icons.star, color: Colors.grey, size: 20.0),
                              Text(
                                "\$17.03",
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}