import 'package:flutter/material.dart';

class Button2 extends StatelessWidget {
  Button2({super.key});

  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: passwordController,
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
              ),
              OutlinedButton(
                onPressed: () {
                  print(passwordController.text);
                },
                child: Text("OutlinedButton"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
