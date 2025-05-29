import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:homework4/classes/post.dart';
import 'package:homework4/classes/post_json.dart';

import 'package:http/http.dart' as http;

class PostJsonRepo {
  Future<List<Post>> getPostJson(PostJson postJson, {required int userId, required String title, required String body, required int id}) async {
    final postBox = Hive.box('postBox');
    try {
      final incomingData = await http.get(
        Uri.parse(
          "https://jsonplaceholder.typicode.com/posts",
        ),
      );

      List data = jsonDecode(incomingData.body);
      final List<Post> postJSons =
          data.map((e) => Post.fromJson(e)).toList();
      await postBox.put('posts', postJSons);/*  */
      return postJSons;
    } catch (e, s) {
      if (postBox.containsKey('posts')) {
        try {
          return postBox.get('posts')!.cast<Post>();
        } catch (e) {
          throw Exception("Xato");
        }
      }
      print(s);
      throw Exception(e);
    }
  }

  Future<void> createPost(PostJson postJSon, bool bool, {required int userId, required String title, required String body, required int id}) async {
    try {
      final response = await http.post(
        Uri.parse("https://jsonplaceholder.typicode.com/posts"),
        headers: {
          "Content-Type": "application/json",
          'Accept': 'application/json',
        },
        body: jsonEncode(
          {
            'userId': postJSon.userId,
            'title': postJSon.title,
            'body': postJSon.body,
              'id': postJSon.id,
          },
        ),
      );
      print(response.body);
    } catch (e, s) {
      print(s);
      throw Exception(e);
    }
  }

  Future<void> updateJsonPost(PostJson postJSon) async {
    try {
      await http.put(
        Uri.parse('https://jsonplaceholder.typicode.com/posts/${postJSon.id}'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: jsonEncode({
          "id": postJSon.id,
          "title": postJSon.title,
          "body": postJSon.body,
          "userId": postJSon.userId
        }),
      );
    } catch (e, s) {
      print(s);
      throw Exception(e);
    }
  }

  Future<void> deleteJsonPost(int postJSonId) async {
    try {
      await http.delete(
        Uri.parse('https://jsonplaceholder.typicode.com/posts/${postJSonId}'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      );
    } catch (e, s) {
      print(s);
      throw Exception(e);
    }
  }
}
