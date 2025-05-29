import 'dart:convert';

import 'package:homework4/classes/homework.dart';
import 'package:homework4/classes/post.dart';
import 'package:http/http.dart' as http;

class HwRepo {
  Future<List<Homework>> getHomeworks() async {
    try {
      final incomingData = await http.get(
        Uri.parse("https://6817aba126a599ae7c3b1608.mockapi.io/api/v1/users"),
      );

      List data = jsonDecode(incomingData.body);
      final List<Homework> homeworks =
          data.map((e) => Homework.fromJson(e)).toList();
      return homeworks;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> createPost(Homework homework) async {
    try {
      final response = await http.post(
        Uri.parse("https://6817aba126a599ae7c3b1608.mockapi.io/api/v1/users"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(
          {
            // 'createdAt': createdAt,
            'name': homework.name,
            'avatar': homework.avatar,
            //  'id': id,
          },
        ),
      );
      print(response.body);
    } catch (e, s) {
      print(s);
      throw Exception(e);
    }
  }

  Future<void> updateUser(Homework homework) async {
    try {
      await http.put(
        Uri.parse(
            'https://6817aba126a599ae7c3b1608.mockapi.io/api/v1/users/${homework.id}'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "id": homework.id,
          "name": homework.name,
          "avatar": homework.avatar,
          "createdAt": homework.createdAt
        }),
      );
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> deleteUser(String homeworkId) async {
    try {
      await http.delete(
        Uri.parse(
            'https://6817aba126a599ae7c3b1608.mockapi.io/api/v1/users/$homeworkId'),
        headers: {'Content-Type': 'application/json'},
      );
    } catch (e) {
      throw Exception(e);
    }
  }
}
