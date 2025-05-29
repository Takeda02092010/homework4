import 'package:flutter/material.dart';

class Personalize extends StatefulWidget {
  const Personalize({super.key});

  @override
  State<Personalize> createState() => _PersonalizeState();
}

class _PersonalizeState extends State<Personalize> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF59AC6E),
      appBar: AppBar(
          backgroundColor: const Color(0xFF59AC6E),
          leading: const Icon(
            Icons.arrow_back,
            size: 24.0,
            color: Colors.white,
          )),
      body: Column(
        children: [
          const Text(
            "Personalize your experience",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24.0,
                color: Colors.white),
          ),
          const Text(
            "You can customize your feed by following topics or people that interest you the most",
            style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 14.0,
                color: Colors.white),
          ),
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: [
              InkWell(
                onTap: (){
                  
                },
                child: Container(
                  width: 169,
                  height: 39,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: Colors.white, width: 1),
                    color: isSelected==true ? Colors.black :Colors.transparent,
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "News and Events",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                width: 151,
                height: 39,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Entertaiment",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 110,
                height: 39,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Lifestyle",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 205,
                height: 39,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Personal Development",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 181,
                height: 39,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Humor and Memes",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 94,
                height: 39,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Sports",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 102,
                height: 39,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Science",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 102,
                height: 39,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "History",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 107,
                height: 39,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Animals",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 120,
                height: 39,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Education",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 217,
                height: 39,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Technology Information",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 181,
                height: 39,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Product and Brand",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 122,
                height: 39,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Marketing",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 132,
                height: 39,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Scary Things",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 99,
                height: 39,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Movies",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 91,
                height: 39,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Music",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: 335,
              height: 47,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Skip for Now",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4.0),
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
