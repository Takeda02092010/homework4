import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 20,
          children: [
            const Text(
              "Sign Up",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "Create an account to continue!",
              style: TextStyle(color: Colors.grey),
            ),
            const Text(
              "Full name",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
                TextField(
              decoration: InputDecoration(
                hintText: "To'liq ism kiriting",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
            ),
              const Text(
              "Email",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
                TextField(
              decoration: InputDecoration(
                hintText: "Email kiriting",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
            ),
              const Text(
              "Birth of date",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
              TextField(
              decoration: InputDecoration(
                hintText: "Tug'ilga kun kiriting",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
            ),
              const Text(
              "Set password",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
              TextField(
              decoration: InputDecoration(
                hintText: "Parol kiriting",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
            ),
              Container(
              alignment: Alignment.center,
              width: 400,
              height: 50,
              child: const Text("Register"),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
