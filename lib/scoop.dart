import 'package:flutter/material.dart';

class Scoop extends StatelessWidget {
  const Scoop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: const DecorationImage(
              image: AssetImage("asset/image/rasm.avif"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(),
              const Text(
                "scoop",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 200,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text("order"),
              ),
              Container(
                alignment: Alignment.center,
                width: 200,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text("flavors"),
              ),
              Container(
                alignment: Alignment.center,
                width: 200,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text("contact"),
              ),
              const SizedBox(height: 200,),
              const Text("sign in",style:TextStyle(color: Colors.white)),
            ],
            
          ),
        ),
      ),
    );
  }
}
