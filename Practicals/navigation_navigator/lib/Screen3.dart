import 'package:flutter/material.dart';
import 'package:navigation_navigator/main.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen3"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SizedBox(
          height: 50,
          width: 300,
          child: ElevatedButton(
              onPressed: () {
                //scenario1
                /*Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const MainApp();
                  }),
                );*/

                //scenario2
                /*Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const MainApp();
                  }),
                );*/
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const MainApp();
                }));
              },
              child: const Text("Next page")),
        ),
      ),
    );
  }
}
