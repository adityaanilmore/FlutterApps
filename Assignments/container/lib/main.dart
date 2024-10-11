import 'package:container/Container5.dart';
import 'package:flutter/material.dart';

import 'Container5.dart';

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
          title: const Text("Conatiners"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: const Five(),
      ),
    );
  }
}
