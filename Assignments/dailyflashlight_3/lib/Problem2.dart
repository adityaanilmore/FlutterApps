import 'package:flutter/material.dart';

class Cantainer2 extends StatelessWidget {
  const Cantainer2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          SizedBox(
            height: 200,
            width: 300,
            child: Image.asset(
              "assets/daylight-forest-glossy-443446.jpg",
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            "Manali Trip",
            style: TextStyle(color: Colors.red),
          )
        ],
      ),
    );
  }
}
