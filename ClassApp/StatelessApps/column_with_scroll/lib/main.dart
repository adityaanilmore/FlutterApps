import 'package:flutter/material.dart';

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
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                  "https://www.hindustantimes.com/static-content/1y/cricket-logos/players/virat-kohli.png"),
              Container(
                height: 220,
                width: 430,
                color: const Color.fromARGB(255, 98, 88, 91),
              ),
              Image.network(
                  "https://www.hindustantimes.com/static-content/1y/cricket-logos/players/virat-kohli.png"),
              Container(
                height: 220,
                width: 430,
                color: const Color.fromARGB(255, 98, 88, 91),
              ),
              Image.network(
                  "https://www.hindustantimes.com/static-content/1y/cricket-logos/players/virat-kohli.png"),
              Container(
                height: 220,
                width: 430,
                color: const Color.fromARGB(255, 98, 88, 91),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
