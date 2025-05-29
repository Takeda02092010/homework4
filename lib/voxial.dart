import 'package:flutter/material.dart';

class Voxial extends StatefulWidget {
  const Voxial({super.key});

  @override
  State<Voxial> createState() => _VoxialState();
}

class _VoxialState extends State<Voxial> {
  final PageController controller = PageController();
  int page = 0;
  List<String> pages = [
    "https://picsum.photos/id/104/400",
    "https://picsum.photos/id/107/400",
    "https://picsum.photos/id/106/400",
    "https://picsum.photos/id/103/400"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(229, 87, 51, 1),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller,
              onPageChanged: (value) => setState(() {
                page = value;
              }),
              itemCount: pages.length,
              itemBuilder: (context, index) {
                return Image(
                  image: NetworkImage(pages[index]),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Connect with friends",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  "Search for your friends on the app and connect with them. You can also invite your friends who are not on the app yet to join you.",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                  pages.length,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: Container(
                        width: page == index ? 15 : 7.57,
                        height: page == index ? 5 : 4,
                        decoration: BoxDecoration(
                          color: page == index
                              ? Colors.white
                              : const Color(0xFFEC8067),
                          borderRadius: BorderRadius.circular(56),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton.filled(
                      onPressed: () {
                        if (page < 3) {
                          controller.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeOut,
                          );
                        }
                      },
                      style: IconButton.styleFrom(
                        fixedSize: const Size(70, 70),
                        backgroundColor: Colors.white,
                      ),
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
