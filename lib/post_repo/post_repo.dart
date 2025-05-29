// import 'dart:convert';

// import 'package:homework4/classes/post.dart';
// import 'package:http/http.dart' as http;

// class PostRepo {
//   Future<List<Post>> fetchPosts() async {
//     final incomingData = await http.get(
//       Uri.parse("https://jsonplaceholder.typicode.com/posts"),
//     );

//     List data = jsonDecode(incomingData.body);
//     final List<Post> posts = data.map((e) => Post.fromJson(e)).toList();
//     return posts;

//   }
// }

import 'dart:convert';

import 'package:homework4/classes/post.dart';
import 'package:http/http.dart' as http;

class PostRepo {
  Future<void> createPost({
    required int userId,
    required String title,
    required String body,
  }) async {
    try {
      final response = await http.post(
        Uri.parse("https://jsonplaceholder.typicode.com/posts"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(
          {
            'userId': userId,
            'title': title,
            'body': body,
          },
        ),
      );
      print(response.body);
    } catch (e, s) {
      print(s);
      throw Exception(e);
    }
    // final incomingData = await http.get(
    //   Uri.parse("https://jsonplaceholder.typicode.com/posts"),
    // );

    // List data = jsonDecode(incomingData.body);
    // final List<Post> posts = data.map((e) => Post.fromJson(e)).toList();
    // return posts;
  }
}
