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
        backgroundColor: Colors.red[200],
        body: Center(
          child: ListWheelScrollView(
            itemExtent: 200,
            diameterRatio: 1.9,
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
                  "assets/download (4).jpeg",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(
                  "assets/download (5).jpeg",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(
                  "assets/download (4).jpeg",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(
                  "assets/download (2).jpeg",
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
                  "assets/download (4).jpeg",
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
                  "assets/download (5).jpeg",
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
                  "assets/download (2).jpeg",
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
