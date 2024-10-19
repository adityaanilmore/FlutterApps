import 'package:flutter/material.dart';
import 'package:navigation_navigator/Screen3.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen2"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SizedBox(
          height: 50,
          width: 300,
          child: ElevatedButton(
              onPressed: () {
                // scenario1
                /* Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const Screen3();
                  }),);*/

                //scenario2
                /*Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) {
                    return const Screen3();
                  }),);*/

                //scenario3
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) {
                  return const Screen3();
                }), (Route) {
                  return false;
                });
              },
              child: const Text("Next page")),
        ),
      ),
    );
  }
}
