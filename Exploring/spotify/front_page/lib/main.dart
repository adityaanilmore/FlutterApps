import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset(
                "assets/spotify_logo.png",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 30, 215, 96),
                  side: const BorderSide(
                      color: Color.fromARGB(255, 18, 187, 24), width: 1),
                  fixedSize: Size(MediaQuery.of(context).size.width * 1, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                icon: const Icon(
                  Icons.person_add,
                  color: Colors.black,
                ),
                label: const Text(
                  "Sign up for Free",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(1, 1, 1, 1),
                  side: const BorderSide(
                      color: Color.fromARGB(255, 247, 247, 247), width: 0.8),
                  fixedSize: Size(MediaQuery.of(context).size.width * 1, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                icon: const Icon(
                  Icons.phone_android,
                  color: Colors.white,
                  size: 25,
                ),
                label: const Text(
                  "Continue with Phone Number",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  animationDuration: Duration(seconds: 20),
                  overlayColor: Color.fromARGB(255, 19, 121, 81),
                  backgroundColor: const Color.fromARGB(1, 1, 1, 1),
                  side: const BorderSide(
                      color: Color.fromARGB(255, 247, 247, 247), width: 0.8),
                  fixedSize: Size(MediaQuery.of(context).size.width * 1, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                icon: const Icon(
                  Icons.g_mobiledata,
                  size: 45,
                  color: Colors.white,
                ),
                label: const Text(
                  "Continue with Goggle",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(1, 1, 1, 1),
                  side: const BorderSide(
                      color: Color.fromARGB(255, 247, 247, 247), width: 0.8),
                  fixedSize: Size(MediaQuery.of(context).size.width * 1, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                icon: const Icon(
                  Icons.facebook,
                  color: Colors.white,
                  size: 30,
                ),
                label: const Text(
                  "Continue with Facebook",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
