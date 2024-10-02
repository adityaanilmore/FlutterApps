import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(" Space Parameters"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
          ),
        ),
        body: ListView.builder(
          itemCount: 3,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Action Movies",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        height: 300,
                        width: 200,
                        child: Image.network(
                            "https://www.hindustantimes.com/static-content/1y/cricket-logos/players/virat-kohli.png"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        height: 300,
                        width: 200,
                        child: Image.network(
                            "https://www.hindustantimes.com/static-content/1y/cricket-logos/players/virat-kohli.png"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        height: 300,
                        width: 200,
                        child: Image.network(
                            "https://www.hindustantimes.com/static-content/1y/cricket-logos/players/virat-kohli.png"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        height: 300,
                        width: 200,
                        child: Image.network(
                            "https://www.hindustantimes.com/static-content/1y/cricket-logos/players/virat-kohli.png"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        height: 300,
                        width: 200,
                        child: Image.network(
                            "https://www.hindustantimes.com/static-content/1y/cricket-logos/players/virat-kohli.png"),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
