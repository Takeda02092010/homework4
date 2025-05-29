import 'package:flutter/material.dart';
import 'package:homework4/signup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 10,
          children: [
            const Row(
              children: [
                Icon(
                  Icons.shield,
                  color: Colors.blue,
                  size: 25,
                ),
                Text(
                  "Logoipsum",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Text(
              "Sign in to your Account",
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Enter your email and password to log in",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Email",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
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
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Pasword",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Password kiriting",
                suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forgot password?",
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
            Container(
              alignment: Alignment.center,
              width: 400,
              height: 50,
              child: const Text("Log In"),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
            const Text(
              "or",
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 400,
              height: 50,
              child: const Text("Continue with Google"),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 400,
              height: 50,
              child: const Text("Continue with Facebook"),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
            Row(
              children: [
                const Text("Don't have any account?"),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Signup()),
                    );
                  },
                  child: const Text(
                    "Sign up",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => Signup(),
        ),
        (route) => false,
      );
       },
      ),
    );
  }
}
