// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class Ffuture2 extends StatelessWidget {
//   const Ffuture2({super.key});
//   Future<Map> fetchPosts() async {
//     final incomingData = await http.get(
//       Uri.parse("https://jsonplaceholder.typicode.com/posts/50"),
//     );

//     Map data = jsonDecode(incomingData.body);
//     return data;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: () async {
//           Map data = await fetchPosts();
//           print(data.length);
//         },
//       ),body: FutureBuilder(
//   future: fetchPosts(),
//   builder: (context, snapshot) {
//     if (snapshot.hasData) {
//       final Map post = snapshot.data!;
//       return ListView(
//         children: [
//           ListTile(
//             title: Text(post['title']),
//             subtitle: Text(post['body']),
//           ),
//         ],
//       );
//     } else if (snapshot.hasError) {
//       return const Center(
//         child: Text('Error'),
//       );
//     } else {
//       return const Center(
//         child: CircularProgressIndicator(),
//       );
//     }
//   },
// ),

//       // body: FutureBuilder(
//       //     future: fetchPosts(),
//       //     builder: (context, snapshot) {
//       //       if (snapshot.hasData) {
//       //         final Map posts = snapshot.data!;
//       //         return ListView.builder(
//       //           itemCount: 1,
//       //           itemBuilder: (context, index) {
//       //             final post = posts[index];
//       //             return ListTile(
//       //               title: Text(post['title']),
//       //               subtitle: Text(post['body']),
//       //             );
//       //           },
//       //         );
//       //       } else if (snapshot.hasError) {
//       //         return const Center(
//       //           child: Text('Error'),
//       //         );
//       //       } else {
//       //         return const Center(
//       //           child: CircularProgressIndicator(),
//       //         );
//       //       }
//       //     }),
//     );
//   }
// }





import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Ffuture2 extends StatelessWidget {
  const Ffuture2({super.key});

  // Endi List qaytaradi: ko‘p postlar
  Future<List> fetchPosts() async {
    final incomingData = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/posts"),
    );

    List data = jsonDecode(incomingData.body);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          List data = await fetchPosts();
          print("Postlar soni: ${data.length}");
        },
        child: const Icon(Icons.refresh),
      ),
      body: FutureBuilder(
        future: fetchPosts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final List posts = snapshot.data!;
            return ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                return ListTile(
                  title: Text(post['title']),
                  subtitle: Text(post['body']),
                );
              },
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Xatolik yuz berdi'),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
