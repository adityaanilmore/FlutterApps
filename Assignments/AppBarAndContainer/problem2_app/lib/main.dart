// ignore_for_file: sized_box_for_whitespace

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
          title: const Text("Problem1"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          actions: [
            Container(
              height: 20,
              width: 30,
              child: const Icon(
                Icons.forward_to_inbox,
              ),
            ),
            Container(
              height: 20,
              width: 30,
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
