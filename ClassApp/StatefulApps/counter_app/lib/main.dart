import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});
  @override
  State createState() => _CounterApp();
}

class _CounterApp extends State {
  int count = 0;
  int start() => 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Counter App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(child: Text("$count")),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              if (count < 100) {
                count++;
              } else {
                count = 0;
              }
              setState(() {});
            },
            backgroundColor: Colors.pink,
            child: const Icon(Icons.cyclone)),
      ),
    );
  }
}
