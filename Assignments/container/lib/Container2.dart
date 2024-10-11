import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.black)),
          child: const Center(child: Text("Lets Play")),
        ),
      ),
    );
    ;
  }
}
