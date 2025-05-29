import 'package:flutter/material.dart';
import 'package:homework4/infopage.dart';

class Passinginfo extends StatelessWidget {
  const Passinginfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Infopage(
                            image: "https://picsum.photos/200",
                            text: "Birinchi")),
                  );
                },
                child: Container(
                  height: 250,
                  width: 150,
                  color: Colors.amber,
                  child: Column(
                    spacing: 10,
                    children: [
                      Image(
                        image: NetworkImage("https://picsum.photos/200"),
                      ),
                      Text("Birinchi"),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Infopage(
                            image: "https://picsum.photos/201",
                            text: "Ikkinchi")),
                  );
                },
                child: Container(
                  height: 250,
                  width: 150,
                  color: Colors.amber,
                  child: Column(
                    spacing: 10,
                    children: [
                      Image(
                        image: NetworkImage("https://picsum.photos/201"),
                      ),
                      Text("Ikkinchi"),
                    ],
                  ),
                ),
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
                        builder: (context) => Infopage(
                            image: "https://picsum.photos/202",
                            text: "Uchinchi")),
                  );
                },
                child: Container(
                  height: 250,
                  width: 150,
                  color: Colors.amber,
                  child: Column(
                    spacing: 10,
                    children: [
                      Image(
                        image: NetworkImage("https://picsum.photos/202"),
                      ),
                      Text("Uchinchi"),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Infopage(
                            image: "https://picsum.photos/203",
                            text: "To'rtinchi")),
                  );
                },
                child: Container(
                  height: 250,
                  width: 150,
                  color: Colors.amber,
                  child: Column(
                    spacing: 10,
                    children: [
                      Image(
                        image: NetworkImage("https://picsum.photos/203"),
                      ),
                      Text("To'rtinchi"),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
