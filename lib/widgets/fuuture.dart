// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class Fuuture extends StatelessWidget {
//   const Fuuture({super.key});

//   Future fetchPosts() async {
//     final response =
//         await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
//     List data = jsonDecode(response.body);
//     print(data[0]);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Home"),
//       ),
//       floatingActionButton: FloatingActionButton(onPressed: () {
//         fetchPosts();
//       }),
//     );
//   }
// }

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:homework4/widgets/fuuture_info.dart';
import 'package:http/http.dart' as http;

class Fuuture extends StatelessWidget {
  const Fuuture({super.key});

  Future fetchPosts() async {
    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    List data = jsonDecode(response.body);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: FutureBuilder(
          future: fetchPosts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    final post = snapshot.data![index];
                    return InkWell(
                      onTap: () {
                       Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FuutureInfo(id: post["id"].toString(), title: post["title"], body: post["body"],)
                        ),
                      );
                      },
                      child: Card(
                        child: ListTile(
                          title: Text(post["id"].toString()),
                          subtitle: Text(post["body"]),
                        ),
                      ),
                    );
                  });
            } else if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }
          }),
    );
  }
}
