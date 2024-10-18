import 'package:dailyflashlight_3/Problem1.dart';
import 'package:dailyflashlight_3/Problem2.dart';
import 'package:dailyflashlight_3/Problem3.dart';
import 'package:dailyflashlight_3/Problem4.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Daily Flash"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: const Container4(),
      ),
    );
  }
}
