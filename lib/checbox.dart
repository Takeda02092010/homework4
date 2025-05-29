import 'package:flutter/material.dart';

class Checbox extends StatefulWidget {
  const Checbox({super.key});

  @override
  State<Checbox> createState() => _ChecboxState();
}

class _ChecboxState extends State<Checbox> {
  bool isAgree = false;
  String winner = "A";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isAgree ? Colors.black : Colors.white,
      body: Center(
        child: Column(
          children: [
            Text("$winner tanlandi"),
            // Checkbox(
            //   activeColor: Colors.red,
            //   checkColor: Colors.black,
            //   side: const BorderSide(color: Colors.green),
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(5.0),
            //   ),
            //   value: isAgree,
            //   onChanged: (v) {
            //     isAgree = v ?? false;
            //     setState(() {});
            //   },
            // ),
            // Switch(
            //   activeColor: Colors.red,
            //   thumbColor: WidgetStateProperty.resolveWith(
            //     (states) {
            //       {
            //         if (states.contains(WidgetState.selected)) {
            //           return Colors.green;
            //         }
            //         return Colors.orange;
            //       }
            //     },
            //   ),
            //   value: isAgree,
            //   onChanged: (value) {
            //     setState(
            //       () {
            //         isAgree = value;
            //       },
            //     );
            //   },
            // )

            RadioListTile(
              value: "A",
              groupValue: winner,
              title: const Text("A"),
              subtitle: const Text("Winner"),
              controlAffinity: ListTileControlAffinity.trailing,
              visualDensity: const VisualDensity(vertical: 3.0),
              onChanged: (value) {
                setState(
                  () {
                    winner = value!;
                  },
                );
              },
            ),
            RadioListTile(
              value: "B",
              groupValue: winner,
              title: const Text("B"),
              subtitle: const Text("Winner"),
              controlAffinity: ListTileControlAffinity.trailing,
              visualDensity: const VisualDensity(vertical: 3.0),
              onChanged: (value) {
                setState(
                  () {
                    winner = value!;
                  },
                );
              },
            ),
            RadioListTile(
              value: "C",
              groupValue: winner,
              title: const Text("C"),
              subtitle: const Text("Winner"),
              controlAffinity: ListTileControlAffinity.trailing,
              visualDensity: const VisualDensity(vertical: 3.0),
              onChanged: (value) {
                setState(
                  () {
                    winner = value!;
                  },
                );
              },
            ),
            RadioListTile(
              value: 'D',
              groupValue: winner,
              title: const Text("D"),
              subtitle: const Text("Winner"),
              controlAffinity: ListTileControlAffinity.trailing,
              visualDensity: const VisualDensity(vertical: 3.0),
              onChanged: (value) {
                setState(
                  () {
                    winner = value!;
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
