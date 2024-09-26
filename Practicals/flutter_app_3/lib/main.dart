import 'package:flutter/material.dart';

void main() {
  print("Incubators");
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Core2web",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Insta Storiees"),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                  color: Colors.amber, shape: BoxShape.circle),
            ),
            Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                  color: Colors.blue, shape: BoxShape.circle),
            ),
            Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                  color: Colors.red, shape: BoxShape.circle),
            ),
            Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                  color: Colors.yellow, shape: BoxShape.circle),
            ),
            Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                  color: Colors.brown, shape: BoxShape.circle),
            ),
            Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                  color: Colors.pink, shape: BoxShape.circle),
            ),
          ],
        ),
      ),
    );
  }
}
