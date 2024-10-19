import 'package:flutter/material.dart';
import 'package:navigation_navigator/Screen2.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen 1"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SizedBox(
          height: 50,
          width: 300,
          child: ElevatedButton(
            onPressed: () {
              //scenario1
              /* Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Screen2()),
              );*/
              //scenario2
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Screen2()),
              );
            },
            child: const Text("Next Screen"),
          ),
        ),
      ),
    );
  }
}
