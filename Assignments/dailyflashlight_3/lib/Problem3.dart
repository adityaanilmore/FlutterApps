import 'package:flutter/material.dart';

class Conatiner3 extends StatefulWidget {
  const Conatiner3({super.key});

  @override
  State<Conatiner3> createState() => _Conatiner3State();
}

class _Conatiner3State extends State<Conatiner3> {
  bool falg = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        if (falg == true) {
          falg = false;
        } else {
          falg = true;
        }
        setState(() {});
      },
      child: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              border: Border.all(
                color: falg ? Colors.red : Colors.black,
              ),
              borderRadius: BorderRadius.circular(
                20,
              )),
        ),
      ),
    );
  }
}
