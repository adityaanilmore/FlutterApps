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
          title: const Text("Indian Flag"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 55,
                width: 300,
                color: Colors.orange,
              ),
              Container(
                height: 55,
                width: 300,
                color: Colors.white,
                child: Image.network(
                    "https://tse3.mm.bing.net/th?id=OIP.1b6dG3-qBVMmnBjtSothpwHaHu&pid=Api&P=0&h=180"),
              ),
              Container(
                height: 55,
                width: 300,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
