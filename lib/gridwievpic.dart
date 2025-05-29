import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GridViiiewPage(),
    );
  }
}

class GridViiiewPage extends StatefulWidget {
  @override
  _GridViiiewPageState createState() => _GridViiiewPageState();
}

class _GridViiiewPageState extends State<GridViiiewPage> {
  final List<Map<String, dynamic>> pictures = [
    {"title": "Title 1", "image": "https://picsum.photos/id/104/400"},
    {"title": "Title 2", "image": "https://picsum.photos/id/107/400"},
    {"title": "Title 3", "image": "https://picsum.photos/id/106/400"},
    {"title": "Title 4", "image": "https://picsum.photos/id/103/400"},
  ];

  void showItemDialog(String title, String image) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Image.network(image),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Grid View')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: pictures.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => showItemDialog(
                pictures[index]['title'].toString(),
                pictures[index]['image'].toString(),
              ),
              child: Card(
                elevation: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      pictures[index]['image'].toString(),
                      height:150,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 8),
                    Text(pictures[index]['title'].toString()),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
