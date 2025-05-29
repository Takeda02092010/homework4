import 'package:flutter/material.dart';
import 'package:homework4/classes/post.dart';

import 'package:homework4/classes/post_json.dart';
import 'package:homework4/post_repo/post_json_repo.dart';

class PostJsonPage extends StatefulWidget {
  const PostJsonPage({super.key});

  @override
  State<PostJsonPage> createState() => _PostJsonPageState();
}

class _PostJsonPageState extends State<PostJsonPage> {
  final PostJsonRepo repo = PostJsonRepo();
  List<Post> post = [];
  bool isPressed = false;

  final titleController = TextEditingController();
  final bodyController = TextEditingController();

  void _editUserDialog(Post PostJSon) {
    titleController.text = PostJSon.title;
    bodyController.text = PostJSon.body;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Edit User"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                decoration: const InputDecoration(labelText: "title"),
              ),
              TextField(
                controller: bodyController,
                decoration: const InputDecoration(labelText: "body "),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () async {
                final updatedJsonPost = PostJson(
                  id: PostJSon.id,
                  title: titleController.text,
                  body: bodyController.text,
                  userId: PostJSon.userId,
                );
                await repo.updateJsonPost(updatedJsonPost);
                Navigator.of(context).pop();
                setState(() {});
              },
              child: const Text("Save"),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("Cancel"),
            ),
          ],
        );
      },
    );
  }

  void _deleteUser(int id) async {
    setState(() {
      isPressed = true;
    });
    try {
      await repo.deleteJsonPost(id);
      setState(() {
        post.removeWhere((w) => w.id == id);
      });
    } catch (e) {
      throw Exception(e);
    } finally {
      setState(() {
        isPressed = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Users")),
      body: FutureBuilder<List<Post>>(
        future: repo.getPostJson(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final users = snapshot.data!;
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return ListTile(
                  title: Text(user.title),
                  subtitle: Text(user.body),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          icon: const Icon(Icons.edit, color: Colors.orange),
                          onPressed: () {
                            _editUserDialog(user);
                            setState(() {});
                          }),
                      IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () {
                            _deleteUser(user.id);
                          }),
                    ],
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text("Xatolik: ${snapshot.error}"));
          } else {
            return const Center(child: CircularProgressIndicator.adaptive());
          }
        },
      ),
    );
  }
}
/* */