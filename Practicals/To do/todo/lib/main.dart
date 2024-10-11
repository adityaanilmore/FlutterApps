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
          title: const Text('To-do List'),
          backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        ),
        body: const ToDoCard(),
      ),
    );
  }
}

class ToDoCard extends StatefulWidget {
  const ToDoCard({super.key});

  @override
  _ToDoCardState createState() => _ToDoCardState();
}

class _ToDoCardState extends State<ToDoCard> {
  List<String> todoItems = [
    "Task 1: Complete the project",
    "Task 2: Go to the gym",
    "Task 3: Take cold bath",
    "Task 4: Finish reading book",
    "Task 5: Finish your Assignmnets",
    "Task 6: Read Mindset Book",
  ];

  List<Color> colors = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 250, 232, 1),
    const Color.fromRGBO(232, 232, 250, 1),
    const Color.fromRGBO(250, 250, 232, 1),
    const Color.fromRGBO(232, 250, 250, 1),
  ];
  List<String> TodoTitle = ["yes", "Mo"];
  List<String> TodoXDesc = [];

  void deleteCard(int index) {
    setState(() {
      todoItems.removeAt(index);
    });
  }

  void editText(int index) {
    setState(() {
      // todoItems.removeLast();
      // todoItems.insert(index, TodoTitle[index]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: todoItems.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: colors[index % colors.length],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          radius: 30,
                          child: const Icon(Icons.image,
                              size: 30, color: Colors.grey),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        '10 July 2023',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          todoItems[index],
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'On wintter arc Challange',
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                        const SizedBox(height: 50),
                        Row(
                          children: [
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                editText(index);
                              },
                              icon: const Icon(Icons.edit, color: Colors.green),
                            ),
                            IconButton(
                              onPressed: () {
                                deleteCard(index);
                              },
                              icon: const Icon(Icons.delete, color: Colors.red),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
