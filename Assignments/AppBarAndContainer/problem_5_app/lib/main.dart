import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          title: const Text("Problem"),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 300,
                color: Colors.amber,
                child: Image.network(
                    "https://bsmedia.business-standard.com/_media/bs/img/article/2022-03/15/full/1647365891-7103.jpg"),
              ),
              Container(
                  height: 200,
                  width: 300,
                  color: const Color.fromARGB(255, 225, 130, 162),
                  child: Image.network(
                      "https://bsmedia.business-standard.com/_media/bs/img/article/2022-03/15/full/1647365891-7103.jpg")),
              Container(
                height: 200,
                width: 300,
                color: const Color.fromARGB(255, 227, 142, 142),
                child: Image.network(
                    "https://bsmedia.business-standard.com/_media/bs/img/article/2022-03/15/full/1647365891-7103.jpg"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
