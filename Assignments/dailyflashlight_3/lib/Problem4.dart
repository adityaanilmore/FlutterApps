import 'package:flutter/material.dart';

class Container4 extends StatelessWidget {
  const Container4({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.blue,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.8), // Shadow color
              spreadRadius: 20,
              blurRadius: 7,
              offset: Offset(0, -3),
            ),
          ],
        ),
      ),
    );
  }
}
