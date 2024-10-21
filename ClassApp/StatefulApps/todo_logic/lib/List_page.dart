import 'package:flutter/material.dart';
import 'todo_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});

  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  int? editIndex;

  void clearController() {
    titleController.clear();
    descriptionController.clear();
    dateController.clear();
  }

  void dataSumbit() {
    if (titleController.text.trim().isNotEmpty &&
        descriptionController.text.trim().isNotEmpty &&
        dateController.text.trim().isNotEmpty) {
      if (editIndex == null) {
        todocards.add(
          TodoModel(
              Title: titleController.text,
              Description: descriptionController.text,
              Date: dateController.text),
        );
      } else {
        todocards[editIndex!] = TodoModel(
            Title: titleController.text,
            Description: descriptionController.text,
            Date: dateController.text);
        editIndex = null;
      }
      clearController();
      setState(() {});
      Navigator.pop(context);
    }
  }

  // Open Bottom Sheet for creating or editing a card
  void myBottomSheet({TodoModel? todoModel, int? index}) {
    if (todoModel != null) {
      titleController.text = todoModel.Title;
      descriptionController.text = todoModel.Description;
      dateController.text = todoModel.Date;
      editIndex = index; // Set the index to know which item to edit
    }

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
                todoModel == null ? "Create To-Do" : "Edit To-Do",
                style: GoogleFonts.quicksand(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  TextField(
                    controller: titleController,
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
                  const SizedBox(height: 20),
                  TextField(
                    controller: descriptionController,
                    decoration: InputDecoration(
                      label: Text(
                        "Description",
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
                    controller: dateController,
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                          child: const Icon(Icons.calendar_month_outlined),
                          onTap: () async {
                            DateTime? datepicker = await showDatePicker(
                                context: context,
                                firstDate: DateTime(2004),
                                lastDate: DateTime(2024));
                            String formattedDate =
                                DateFormat.yMMMd().format(datepicker!);
                            dateController.text = formattedDate;
                            setState(() {});
                          }),
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
              const SizedBox(height: 30),
              SizedBox(
                width: 400,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromRGBO(0, 139, 148, 1)),
                  ),
                  onPressed: () {
                    dataSumbit();
                  },
                  child: Text(
                    todoModel == null ? "Submit" : "Update",
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    ).whenComplete(
        () => clearController()); // Clear fields when the sheet closes
  }

  List<Color> colorList = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];
  List<TodoModel> todocards = [
    TodoModel(
        Title: "flutter", Description: "widget,Expanded ", Date: "11/07/22"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To-Do List",
          style: GoogleFonts.quicksand(
            fontSize: 26,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: todocards.length,
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
                                todocards[index].Title,
                                style: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                todocards[index].Description,
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
                      padding: const EdgeInsets.only(left: 14.0),
                      child: Row(
                        children: [
                          Text(
                            todocards[index].Date,
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
                            onPressed: () {
                              // Open bottom sheet with existing data for editing
                              myBottomSheet(
                                  todoModel: todocards[index], index: index);
                            },
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.delete_outline,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                            onPressed: () {
                              // Delete the card
                              todocards.removeAt(index);
                              setState(() {});
                            },
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
          myBottomSheet(); // Open empty bottom sheet for creating a new To-Do
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
