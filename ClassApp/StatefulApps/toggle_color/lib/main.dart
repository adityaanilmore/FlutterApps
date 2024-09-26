import 'package:flutter/material.dart';

void main() {
  runApp(const ToggleColor());
}

class ToggleColor extends StatefulWidget {
  const ToggleColor({super.key});
  @override
  State<StatefulWidget> createState() {
    return _ToggleColor();
  }
}

class _ToggleColor extends State {
  bool val = false;
  int val1 = 100;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ToggleColor"),
          centerTitle: true,
          backgroundColor: val ? Colors.black : Colors.red,
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            color: val ? Colors.black : Colors.red,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
              if (val == true) {
                val = false;
              } else {
                val = true;
              }
              setState(() {});

          },
          backgroundColor: Colors.blue,
          child: const Icon(Icons.recycling_sharp),
        ),
      ),
    );
  }
}
