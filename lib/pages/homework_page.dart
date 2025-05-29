import 'package:flutter/material.dart';
import 'package:homework4/classes/homework.dart';
import 'package:homework4/post_repo/hw_repo.dart';

class HomeworkPage extends StatefulWidget {
  const HomeworkPage({super.key});

  @override
  State<HomeworkPage> createState() => _HomeworkPageState();
}

class _HomeworkPageState extends State<HomeworkPage> {
  final HwRepo repo = HwRepo();
  bool isPressed = false;

  final nameController = TextEditingController();
  final avatarController = TextEditingController();

  void _editUserDialog(Homework homework) {
    nameController.text = homework.name;
    avatarController.text = homework.avatar;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Edit User"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: "Name"),
              ),
              TextField(
                controller: avatarController,
                decoration: const InputDecoration(labelText: "Avatar URL"),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () async {
                final updatedHomework = Homework(
                  id: homework.id,
                  name: nameController.text,
                  avatar: avatarController.text,
                  createdAt: homework.createdAt,
                );
                await repo.updateUser(updatedHomework);
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

  void _deleteUser(String id) async {
    await repo.deleteUser(id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Users")),
      body: FutureBuilder<List<Homework>>(
        future: repo.getHomeworks(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final users = snapshot.data!;
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return ListTile(
                  title: Text(user.name),
                  subtitle: Text(user.avatar),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit, color: Colors.orange),
                        onPressed: () => _editUserDialog(user),
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () => _deleteUser(user.id),
                      ),
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
