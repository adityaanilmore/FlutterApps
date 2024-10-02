import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container Border"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.blue,
              border: Border.all(color: Colors.red)),
        )),
      ),
    );
  }
}
