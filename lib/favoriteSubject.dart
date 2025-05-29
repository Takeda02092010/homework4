import 'package:flutter/material.dart';

class FavoriteSubject extends StatefulWidget {
  const FavoriteSubject({super.key});

  @override
  State<FavoriteSubject> createState() {
    return _FavoriteSubjectState();   
  }
}

class _FavoriteSubjectState extends State<FavoriteSubject> {
  bool isMathSelected = false;
  bool isEnglishSelected = false;
  bool isRussianSelected = false;
  bool isPESelected = false;
  List<String> subjects = [];

  String selectedSubjectsText = "You didn't choose any subject.";

  void SubjectsAdd() {
    subjects.clear();
    if (isMathSelected) {
      subjects.add("Math");
    }
    if (isEnglishSelected) {
      subjects.add("English");
    }
    if (isRussianSelected) {
      subjects.add("Russian");
    }
    if (isPESelected) {
      subjects.add("P.E.");
    }

    setState(() {
      if (subjects.isEmpty) {
        selectedSubjectsText = "You didn't choose any subject.";
      } else {
        selectedSubjectsText = "Your chosen subjects: ${subjects.join(', ')}";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "What is your favorite subject?",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            CheckboxListTile(
              title: const Text("Math", style: TextStyle(fontSize: 20.0)),
              value: isMathSelected,
              activeColor: Colors.green,
              checkColor: Colors.black,
              onChanged: (v) {
                setState(
                  () {
                    isMathSelected = v ?? false;
                  },
                );
              },
            ),
            CheckboxListTile(
              title: const Text("English", style: TextStyle(fontSize: 20.0)),
              value: isEnglishSelected,
              activeColor: Colors.green,
              checkColor: Colors.black,
              onChanged: (v) {
                setState(
                  () {
                    isEnglishSelected = v ?? false;
                  },
                );
              },
            ),
            CheckboxListTile(
              title: const Text("Russian", style: TextStyle(fontSize: 20.0)),
              value: isRussianSelected,
              activeColor: Colors.green,
              checkColor: Colors.black,
              onChanged: (v) {
                setState(
                  () {
                    isRussianSelected = v ?? false;
                  },
                );
              },
            ),
            CheckboxListTile(
              title: const Text("P.E.", style: TextStyle(fontSize: 20.0)),
              value: isPESelected,
              activeColor: Colors.green,
              checkColor: Colors.black,
              onChanged: (v) {
                setState(
                  () {
                    isPESelected = v ?? false;
                  },
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                SubjectsAdd();
              },
              child: const Text("Submit", style: TextStyle(fontSize: 20.0)),
            ),
            const SizedBox(height: 20),
            Text(
              selectedSubjectsText,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
