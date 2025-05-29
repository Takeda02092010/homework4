import 'package:flutter/material.dart';

class Ddropdooown extends StatefulWidget {
  const Ddropdooown({super.key});

  @override
  State<Ddropdooown> createState() => _DdropdooownState();
}

class _DdropdooownState extends State<Ddropdooown> {
  String? selectedFruit = null;
  String? selectedCountry = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          DropdownButton<String>(
            value: selectedCountry,
            hint: const Text("Select..."),
            underline: const SizedBox(),
            items: <DropdownMenuItem<String>>[
              const DropdownMenuItem<String>(
                value: "South Korea",
                child: Text("South Korea"),
              ),
              const DropdownMenuItem<String>(
                value: "England",
                child: Text("England"),
              ),
              const DropdownMenuItem<String>(
                value: "China",
                child: Text("China"),
              ),
            ],
            onChanged: (value) {
              setState(() {
                selectedCountry = value!;
              });
            },
          ),
        ],
      )

          //  DropdownButton<String>(
          //   value: selectedFruit,
          //   hint: const Text("Select..."),
          //   disabledHint: const Text("Disabled"),
          //   underline: const SizedBox(),
          //   icon: const Icon(Icons.ads_click),
          //   items: <DropdownMenuItem<String>>[
          //     const DropdownMenuItem<String>(
          //       value: "Apple",
          //       child: Text("Apple"),
          //     ),
          //     const DropdownMenuItem<String>(
          //       value: "Banana",
          //       child: Text("Banana"),
          //     ),
          //     const DropdownMenuItem<String>(
          //       value: "Orange",
          //       child: Text("Orange"),
          //     ),
          //   ],
          //   onChanged: (Value) {
          //     setState(() {
          //       selectedFruit = Value!;
          //     });
          //   },
          // ),
          ),
    );
  }
}
