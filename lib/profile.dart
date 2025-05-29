import 'package:flutter/material.dart';
import 'package:homework4/dbProfile.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();

  void clear() {
    nameController.clear();
    phoneController.clear();
    emailController.clear();
  }

  void saveData() {
    if (data.isEmpty) {
      data = {
        "name": nameController.text,
        "phone": phoneController.text,
        "email": emailController.text,
      };
      print("Ma'lumotlar saqlandi: $data");
    } else {
      print("Data allaqachon mavjud: $data");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10.0),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: "Enter your name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(
                hintText: "Enter your phone number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "Enter your email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                saveData();
                clear();
              },
              child: const Text(
                "Submit",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
