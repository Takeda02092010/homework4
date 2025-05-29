import 'package:flutter/material.dart';
import 'package:homework4/coffee.dart';

class InfoCoffee extends StatelessWidget {
  final String image;
  final String name;
  final String reyting;
  final String vith;
  final String price;
  const InfoCoffee(
      {super.key,
      required this.image,
      required this.name,
      required this.vith,
      required this.reyting,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
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
                  Positioned(
                    top: 10,
                    left: 10,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Coffee(),
                          ),
                        );
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.arrow_back, color: Colors.black),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 10,
                    right: 10,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.favorite, color: Colors.red),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(16.0)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            vith,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.star,
                                      color: Colors.orange, size: 16),
                                  const SizedBox(width: 4),
                                  Text(
                                    reyting,
                                    style: const TextStyle(
                                      color: Colors.white70,
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  const Text(
                                    "(6,098)",
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 12),
                                  ),
                                ],
                              ),
                              const Row(
                                children: [
                                  Icon(Icons.coffee,
                                      color: Colors.white, size: 16),
                                  SizedBox(width: 8),
                                  Icon(Icons.water_drop,
                                      color: Colors.white, size: 16),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "Medium Roasted",
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              "Description",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.Vel tincidunt et ullamcorper eu, vivamus semper commodo............',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: ' Read More',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromARGB(255, 183, 133, 115),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              "Choice of chocolate",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 183, 133, 115),
                    foregroundColor: Colors.black,
                  ),
                  child: const Text("White chocolate"),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                  ),
                  child: const Text("Milk chocolate"),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                  ),
                  child: const Text("Dark chocolate"),
                ),
              ],
            ),
             const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Size"),
                Text("Quantity"),
              ],
            ),
            const Row(
              children: [
                // Row(
                //   children: [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.brown,
                  child: Text(
                    'S',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.grey,
                  child: Text(
                    'M',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.grey,
                  child: Text(
                    'L',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                //   ],
                // ),
                SizedBox(
                  width: 200,
                ),
            
                CircleAvatar(
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
                SizedBox(
                  width: 10,
                ),
                Text("1"),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
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
              height: 30,
            ),
            const Text(
              "Price",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 300,),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    
                    backgroundColor: const Color.fromARGB(255, 183, 133, 115),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Buy Now",style: TextStyle(fontSize: 20),),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
