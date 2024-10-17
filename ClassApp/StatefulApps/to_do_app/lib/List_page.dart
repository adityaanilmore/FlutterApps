import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});

  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  void myBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Create To-Do",
                style: GoogleFonts.quicksand(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  const SizedBox(width: 10),
                  TextField(
                    decoration: InputDecoration(
                      label: Text(
                        "Title",
                        style: GoogleFonts.quicksand(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(0, 139, 148, 1)),
                      ),
                      hintText: "Enter a Title",
                      hintStyle: GoogleFonts.quicksand(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(0, 139, 148, 1)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      label: Text(
                        "Decription",
                        style: GoogleFonts.quicksand(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(0, 139, 148, 1)),
                      ),
                      hintText: "Enter a Description",
                      hintStyle: GoogleFonts.quicksand(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(0, 139, 148, 1)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.calendar_month_outlined),
                      label: Text(
                        "Date",
                        style: GoogleFonts.quicksand(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(0, 139, 148, 1)),
                      ),
                      hintText: "Enter a Date",
                      hintStyle: GoogleFonts.quicksand(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(0, 139, 148, 1)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 400,
                height: 50,
                child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Color.fromRGBO(0, 139, 148, 1))),
                  onPressed: () {},
                  child: Text(
                    "Sumbit",
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        );
      },
    );
  }

  List<Color> colorList = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];
  List<Image> ImageList = [
    Image.asset(
      "assets/op.jpeg ",
      fit: BoxFit.cover,
    ),
    Image.asset("assets/op.jpeg "),
    Image.asset("assets/op.jpeg "),
    Image.asset(" assets/op.jpeg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To-Do List ",
          style: GoogleFonts.quicksand(
              fontSize: 26, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: colorList[index % colorList.length],
                ),
                padding: const EdgeInsets.all(7.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(70),
                            ),
                            child:
                                const Icon(Icons.image_not_supported_rounded),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Lorem Ipsum is simply setting industry",
                                style: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                style: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: const Color.fromRGBO(84, 84, 84, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 14.0,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "12/1/24",
                            style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: const Color.fromRGBO(84, 84, 84, 1),
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            icon: const Icon(
                              Icons.edit_outlined,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.delete_outline,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myBottomSheet();
        },
        backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        child: const Icon(
          Icons.add,
          size: 40,
          color: Colors.white,
        ),
      ),
    );
  }
}
