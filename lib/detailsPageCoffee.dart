import 'package:flutter/material.dart';
import 'package:homework4/brew_deja_db.dart';

class Detailspagecoffee extends StatefulWidget {
  final String imageUrl;
  final String name;
  final String price;
  final double rating;

  const Detailspagecoffee({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.rating,
    required Map<String, dynamic> product,
  });

  @override
  State<Detailspagecoffee> createState() => _DetailspagecoffeeState();
}

class _DetailspagecoffeeState extends State<Detailspagecoffee> {
  bool isFavorite = true;
  bool isSelected = true;
  int selectedMilkIndex = 0;
  final milkOptions = ["Oat Milk", "Soy Milk", "Almond Milk"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0Xff201520),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            spacing: 15.0,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: Image.network(
                  widget.imageUrl,
                  height: 450,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Capuccino",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: isFavorite ?  Colors.white: Colors.red ,
                    ),
                    onPressed: () {
                      setState(() {
                        isFavorite = !isFavorite;
                        if (isFavorite) {
                        setState(() {
                          dbFavourites.add({
                            'name': widget.name,
                            'image': widget.imageUrl,
                            'price': widget.price,
                            'rating': widget.rating,
                          });
                        });  
                        }
                      });
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    widget.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 14,
                  ),
                  Text(
                    widget.rating.toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const Text.rich(
                TextSpan(
                  text:
                      "A single espresso shot poured into hot foamy milk, with the surface topped with mildly sweetened cocoa powder and drizzled with scrumptious caramel syrup ... ",
                  style: TextStyle(color: Colors.white),
                  children: [
                    TextSpan(
                      text: "Read More",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                "Choice of Milk",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(milkOptions.length, (index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        selectedMilkIndex = index;
                      });
                    },
                    child: Container(
                      height: 34,
                      width: 99,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFEFE3C8)),
                        borderRadius: BorderRadius.circular(10.0),
                        color: selectedMilkIndex == index
                            ? const Color(0xFFEFE3C8)
                            : Colors.transparent,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          milkOptions[index],
                          style: TextStyle(
                            color:selectedMilkIndex == index
                            ? Colors.black
                            : const Color(0xFFEFE3C8),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Price",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        widget.price.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    child: Container(
                      height: 45,
                      width: 253,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xFFEFE3C8),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "BUY NOW",
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.brown,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
