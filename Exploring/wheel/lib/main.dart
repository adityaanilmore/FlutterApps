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
        body: Center(
          child: ListWheelScrollView(
            itemExtent: 200,
            diameterRatio: 2.5,
            children: [
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(
                  "assets/msd.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(
                  "assets/msd.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(
                  "assets/msd.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(
                  "assets/msd.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(
                  "assets/msd.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(
                  "assets/msd.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(
                  "assets/msd.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(
                  "assets/msd.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(
                  "assets/msd.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(
                  "assets/msd.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(
                  "assets/msd.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(
                  "assets/msd.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
