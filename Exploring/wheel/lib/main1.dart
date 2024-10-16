import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  List<String> images = List<String>.generate(12, (index) => 'assets/msd.jpeg');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ListWheelScrollView.useDelegate(
            itemExtent: 200,
            diameterRatio: 2.5,
            physics: FixedExtentScrollPhysics(),
            childDelegate: ListWheelChildBuilderDelegate(
              builder: (context, index) {
                if (index < images.length) {
                  return Dismissible(
                    key: UniqueKey(),
                    direction:
                        DismissDirection.endToStart, // Swipe right to left
                    onDismissed: (direction) {
                      setState(() {
                        images
                            .removeAt(index); // Remove the image from the list
                      });

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Item removed'),
                        ),
                      );
                    },
                    background: Container(
                      color: Colors.red,
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),
                    child: SizedBox(
                      height: 200,
                      width: 200,
                      child: Image.asset(
                        images[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }
                return null;
              },
              childCount: images.length,
            ),
          ),
        ),
      ),
    );
  }
}
