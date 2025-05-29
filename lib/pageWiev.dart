import 'package:flutter/material.dart';

class Pagewiiev extends StatefulWidget {
  const Pagewiiev({super.key});

  @override
  State<Pagewiiev> createState() => _PagewiievState();
}

class _PagewiievState extends State<Pagewiiev> {
  final PageController controller = PageController();
  int page = 0;
  List<String> pages = [
    "https://picsum.photos/id/100/400",
    "https://picsum.photos/id/101/400",
    "https://picsum.photos/id/102/400"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("3/${page + 1}"),
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
          )

              //      PageView(
              //   controller: controller,
              //   onPageChanged: (value) => setState(() {
              //     page = value;
              //   }),
              //   children: [
              //     const Image(
              //         image: NetworkImage("https://picsum.photos/id/100/400")),
              //     const Image(
              //         image: NetworkImage("https://picsum.photos/id/101/400")),
              //     const Image(
              //         image: NetworkImage("https://picsum.photos/id/102/400")),
              //   ],
              // ),
              ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 5,
                backgroundColor: page == 0
                    ? const Color.fromARGB(255, 1, 31, 55)
                    : const Color.fromARGB(255, 205, 218, 228),
              ),
              const SizedBox(
                width: 5,
              ),
              CircleAvatar(
                radius: 5,
                backgroundColor: page == 1
                    ? const Color.fromARGB(255, 1, 31, 55)
                    : const Color.fromARGB(255, 205, 218, 228),
              ),
              const SizedBox(
                width: 5,
              ),
              CircleAvatar(
                radius: 5,
                backgroundColor: page == 2
                    ? const Color.fromARGB(255, 1, 31, 55)
                    : const Color.fromARGB(255, 205, 218, 228),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton.filled(
                  onPressed: () {
                    if (page > 0) {
                      controller.previousPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeOut,
                      );
                    }
                  },
                  style: IconButton.styleFrom(
                    fixedSize: const Size(70, 70),
                  ),
                  icon: const Icon(Icons.arrow_back),
                ),
                IconButton.filled(
                  onPressed: () {
                    if (page < 2) {
                      controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeOut,
                      );
                    }
                  },
                  style: IconButton.styleFrom(
                    fixedSize: const Size(70, 70),
                  ),
                  icon: const Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
