import 'package:flutter/material.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.red)),
        child: const Center(child: Text("Lets Play")),
      ),
    );
  }
}
