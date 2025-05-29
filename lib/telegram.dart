import 'package:flutter/material.dart';
import 'package:homework4/infopagetg.dart';

class Telegram extends StatelessWidget {
  const Telegram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text("Telegram"),
        actions: [const Icon(Icons.search)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Infopagetg(
                      circleAvatar: "https://picsum.photos/200",
                      name: "User1",
                    ),
                  ),
                );
              },
              leading: const CircleAvatar(
                radius: 35,
              ),
              title: const Text(
                "User1",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                "Text message",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: const Text(
                "date",
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Infopagetg(
                      circleAvatar: "https://picsum.photos/200",
                      name: "User2",
                    ),
                  ),
                );
              },
              leading: const CircleAvatar(
                radius: 35,
              ),
              title: const Text(
                "User2",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                "Text message",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: const Text(
                "date",
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Infopagetg(
                      circleAvatar: "https://picsum.photos/200",
                      name: "User3",
                    ),
                  ),
                );
              },
              leading: const CircleAvatar(
                radius: 35,
              ),
              title: const Text(
                "User3",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                "Text message",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: const Text(
                "date",
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Infopagetg(
                      circleAvatar: "https://picsum.photos/200",
                      name: "User5",
                    ),
                  ),
                );
              },
              leading: const CircleAvatar(
                radius: 35,
              ),
              title: const Text(
                "User5",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                "Text message",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: const Text(
                "date",
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Infopagetg(
                      circleAvatar: "https://picsum.photos/200",
                      name: "User6",
                    ),
                  ),
                );
              },
              leading: const CircleAvatar(
                radius: 35,
              ),
              title: const Text(
                "User6",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                "Text message",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: const Text(
                "date",
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Infopagetg(
                      circleAvatar: "https://picsum.photos/200",
                      name: "User7",
                    ),
                  ),
                );
              },
              leading: const CircleAvatar(
                radius: 35,
              ),
              title: const Text(
                "User7",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                "Text message",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: const Text(
                "date",
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Infopagetg(
                      circleAvatar: "https://picsum.photos/200",
                      name: "User8",
                    ),
                  ),
                );
              },
              leading: const CircleAvatar(
                radius: 35,
              ),
              title: const Text(
                "User8",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                "Text message",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: const Text(
                "date",
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Infopagetg(
                      circleAvatar: "https://picsum.photos/200",
                      name: "User9",
                    ),
                  ),
                );
              },
              leading: const CircleAvatar(
                radius: 35,
              ),
              title: const Text(
                "User9",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                "Text message",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: const Text(
                "date",
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Infopagetg(
                      circleAvatar: "https://picsum.photos/200",
                      name: "User10",
                    ),
                  ),
                );
              },
              leading: const CircleAvatar(
                radius: 35,
              ),
              title: const Text(
                "User10",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                "Text message",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: const Text(
                "date",
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Infopagetg(
                      circleAvatar: "https://picsum.photos/200",
                      name: "User11",
                    ),
                  ),
                );
              },
              leading: const CircleAvatar(
                radius: 35,
              ),
              title: const Text(
                "User11",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                "Text message",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: const Text(
                "date",
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Infopagetg(
                      circleAvatar: "https://picsum.photos/200",
                      name: "User12",
                    ),
                  ),
                );
              },
              leading: const CircleAvatar(
                radius: 35,
              ),
              title: const Text(
                "User12",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                "Text message",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: const Text(
                "date",
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Infopagetg(
                      circleAvatar: "https://picsum.photos/200",
                      name: "User13",
                    ),
                  ),
                );
              },
              leading: const CircleAvatar(
                radius: 35,
              ),
              title: const Text(
                "User13",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                "Text message",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: const Text(
                "date",
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Infopagetg(
                      circleAvatar: "https://picsum.photos/200",
                      name: "User14",
                    ),
                  ),
                );
              },
              leading: const CircleAvatar(
                radius: 35,
              ),
              title: const Text(
                "User14",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                "Text message",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: const Text(
                "date",
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Infopagetg(
                      circleAvatar: "https://picsum.photos/200",
                      name: "User15",
                    ),
                  ),
                );
              },
              leading: const CircleAvatar(
                radius: 35,
              ),
              title: const Text(
                "User15",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                "Text message",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: const Text(
                "date",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
