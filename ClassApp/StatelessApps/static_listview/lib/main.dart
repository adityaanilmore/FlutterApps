import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(" Space Parameters"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
          ),
        ),
        body: ListView(
          children: [
            Image.network(
                "https://www.hindustantimes.com/static-content/1y/cricket-logos/players/virat-kohli.png"),
            const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            Image.network(
                "https://www.hindustantimes.com/static-content/1y/cricket-logos/players/virat-kohli.png"),
            GestureDetector(
              onTap: () {
                print("button is pressed");
              },
              child: Container(
                height: 30,
                width: 5,
                color: Colors.pink,
                child: const Icon(Icons.access_time_filled_rounded),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
