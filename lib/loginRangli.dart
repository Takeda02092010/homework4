import 'package:flutter/material.dart';
import 'package:homework4/signuprangli.dart';

class Loginrangli extends StatelessWidget {
  const Loginrangli({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.green],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 10,
            children: [
              const SizedBox(
                height: 70,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shield,
                    color: Colors.white,
                    size: 25,
                  ),
                  Align(
                    child: Text(
                      "Logoipsum",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    spacing: 10,
                    children: [
                      const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            "Don't have an account?",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Signuprangli()),
                              );
                            },
                            child: const Text(
                              "Sign up",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
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
                      TextFormField(
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
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Password kiriting",
                          suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                        obscureText: true,
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
                        style: TextStyle(
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
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 400,
                        height: 50,
                        child: const Text("Continue with Facebook"),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
