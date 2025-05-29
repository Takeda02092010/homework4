import 'package:flutter/material.dart';
import 'package:homework4/hellofood2.dart';

class Hellofood extends StatefulWidget {
  const Hellofood({super.key});

  @override
  State<Hellofood> createState() => _HellofoodState();
}

class _HellofoodState extends State<Hellofood> {
  bool isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.room_service_outlined,
                  size: 80.0,
                ),
                Text(
                  "hello",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 60.0,
                  ),
                ),
                Text(
                  "food",
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold,
                    fontSize: 60.0,
                    fontStyle: FontStyle.italic,
                  ),
                )
              ],
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Phone number",
                  prefixIcon: const Icon(Icons.phone),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                obscureText: !isPasswordVisible,
                decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        if (isPasswordVisible) {
                          isPasswordVisible = false;
                        } else {
                          isPasswordVisible = true;
                        }
                      });
                    },
                    child: Icon(
                      isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Container(
              height: 50,
              width: 480,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                gradient: const LinearGradient(
                  colors: [Colors.pink, Colors.yellow],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Hellofood2()),
                      ( route) => false,
                    );
                  },
                  child: const Text(
                    "SIGN IN",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "------------------------------",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                Text("or", style: TextStyle(fontSize: 20)),
                Text(
                  "------------------------------",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.pink,
                  foregroundColor: Colors.white,
                  child: Text(
                    "f",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                SizedBox(
                  width: 25.0,
                ),
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.pink,
                  foregroundColor: Colors.white,
                  child: Text(
                    "G",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}