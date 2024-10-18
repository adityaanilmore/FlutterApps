import 'package:flutter/material.dart';

class Conatiner1 extends StatelessWidget {
  const Conatiner1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 200,
        width: 300,
        child: Image.asset(
          "assets/daylight-forest-glossy-443446.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
