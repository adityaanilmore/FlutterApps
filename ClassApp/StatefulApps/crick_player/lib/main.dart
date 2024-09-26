import 'package:flutter/material.dart';

void main() {
  runApp(const CricPlayer());
}

class CricPlayer extends StatefulWidget {
  const CricPlayer({super.key});

  @override
  State<StatefulWidget> createState() => _CricPlayer();
}

class _CricPlayer extends State {
  List player = [
    "https://english.cdn.zeenews.com/sites/default/files/2023/04/21/1187374-dhonibhajji.jpg",
    "https://static.toiimg.com/thumb/msid-107585773,width-400,resizemode-4/107585773.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH4ogMhS7cIhyqU3rVUI9MriaP7RB0buHXmA&s",
    "https://bsmedia.business-standard.com/_media/bs/img/article/2022-03/15/full/1647365891-7103.jpg",
    "https://www.hindustantimes.com/static-content/1y/cricket-logos/players/virat-kohli.png"
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("CrickPlayer"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: SizedBox(
            height: 300,
            width: 300,
            child: Image.network(player[index]),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 30, height: 300),
            FloatingActionButton(
              onPressed: () {
                if (index > 0) {
                  index--;
                } else {
                  index = player.length - 1;
                }
                setState(() {});
              },
              backgroundColor: Colors.lightBlue,
              child: const Icon(Icons.arrow_back),
            ),
            const SizedBox(width: 40),
            FloatingActionButton(
              onPressed: () {
                if (index < player.length - 1) {
                  index++;
                } else {
                  index = 0;
                }
                setState(() {});
              },
              backgroundColor: Colors.lightBlue,
              child: const Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
