import 'package:flutter/material.dart';

class Hellofood4 extends StatefulWidget {
  const Hellofood4({super.key});

  @override
  State<Hellofood4> createState() => _Hellofood4State();
}

class _Hellofood4State extends State<Hellofood4> {
  int son = 2;
  int number = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Item Carts"),
        actions: [const Icon(Icons.work)],
      ),
      body: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Your Food Cart",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          InkWell(
            child: Container(
              color: Colors.white,
              width: 600.0,
              height: 150.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Image(
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS--kBgRjvVicwF5E_xPEkBPktzuI2P0Yp86Q&s"),
                      height: 150,
                      width: 150,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Grilled Salmon",
                              style: TextStyle(fontSize: 20.0),
                            )),
                        const Row(
                          children: [
                            Text(
                              "\$96.05",
                              style: TextStyle(fontSize: 20.0),
                            ),
                            SizedBox(
                              width: 150.0,
                            ),
                            Icon(
                              Icons.delete,
                              size: 35.0,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                if (son > 0) {
                                  setState(() {
                                    son--;
                                  });
                                }
                              },
                              child: const Icon(Icons.remove),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              color: Colors.red,
                              height: 30,
                              width: 100,
                              child: Text(
                                "Add To $son",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            OutlinedButton(
                              onPressed: () {
                                if (son >= 0) {
                                  setState(() {
                                    son++;
                                  });
                                }
                              },
                              child: const Icon(Icons.add),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            child: Container(
              color: Colors.white,
              width: 600.0,
              height: 150.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Image(
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQV6r3KQlW1VeIdTxBMeNP8spw3pK0NJfx-Rg&s"),
                      height: 150,
                      width: 150,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Meat vegetable",
                              style: TextStyle(fontSize: 20.0),
                            )),
                        const Row(
                          children: [
                            Text(
                              "\$65.08",
                              style: TextStyle(fontSize: 20.0),
                            ),
                            SizedBox(
                              width: 150.0,
                            ),
                            Icon(
                              Icons.delete,
                              size: 35.0,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                if (number > 0) {
                                  setState(() {
                                    number--;
                                  });
                                }
                              },
                              child: const Icon(Icons.remove),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              color: Colors.red,
                              height: 30,
                              width: 100,
                              child: Text(
                                "Add To $number",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            OutlinedButton(
                              onPressed: () {
                                if (number >= 0) {
                                  setState(() {
                                    number++;
                                  });
                                }
                              },
                              child: const Icon(Icons.add),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Add Your Promo Code",
              suffixIcon: const Icon(
                Icons.local_offer,
                color: Colors.red,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            width: 480,
            color: Colors.white,
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Grilled Salmon",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Text(
                      "\$192",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Meat vegetable",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Text(
                      "\$102",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "\$292",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Payment Method",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
          ),
          Container(
            color: Colors.white,
            width: 480,
            child: const Row(
              children: [
                Icon(
                  Icons.credit_card,
                  color: Colors.blue,
                  size: 35.0,
                ),
                Text(
                  "Credit/Debit Card",
                  style: TextStyle(fontSize: 25.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}