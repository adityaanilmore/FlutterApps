import 'package:flutter/material.dart';

class Forth extends StatelessWidget {
  const Forth({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 400,
        decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
            border: Border.all(color: Colors.red)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Lets Play"),
        ),
      ),
    );
    ;
  }
}
