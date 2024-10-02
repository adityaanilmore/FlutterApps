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
          height: 300,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: const BorderRadiusDirectional.only(
                topEnd: Radius.circular(30),
                bottomEnd: Radius.circular(30),
              ),
              color: Colors.blue,
              border: Border.all(color: Colors.red)),
        )),
      ),
    );
  }
}
