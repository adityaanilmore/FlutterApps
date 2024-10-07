import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final assetsAudioPlayer = AssetsAudioPlayer();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 34, 34, 34),
        appBar: AppBar(
          title: const Text(
            "Now Playing",
            style: TextStyle(
              color: Color.fromARGB(255, 239, 232, 232),
              fontSize: 18,
            ),
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
          centerTitle: true,
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_rounded),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Album art with rounded corners and shadow
              Container(
                width: 335,
                height: 370,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                    "https://imgs.search.brave.com/nrN2JF2Izz9Qd69txscNnWLX6bnrkUhJeH3u5wBbGss/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9jZG4u/cGl4YWJheS5jb20v/cGhvdG8vMjAyMS8w/NC8xMS8xOC81MC9t/b2JpbGUtcGhvbmUt/NjE3MDU3Nl82NDAu/anBn",
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // Song title and artist
              const SizedBox(height: 20),
              const Text(
                "Fasle",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "Aditya Rikhari",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.white70,
                  fontSize: 18,
                ),
              ),

              // Song progress slider
              const SizedBox(height: 20),
              Slider(
                value: 2.25,
                onChanged: (value) {},
                min: 0,
                max: 4.02,
                activeColor: Colors.white,
                inactiveColor: Colors.grey,
              ),

              // Song time indicators
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "2:25",
                    style: TextStyle(color: Colors.white54),
                  ),
                  Text(
                    "4:02",
                    style: TextStyle(color: Colors.white54),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.skip_previous,
                      size: 36,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      assetsAudioPlayer.open(
                        Audio.network(
                            "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3"),
                      );
                    },
                    icon: const Icon(
                      Icons.play_circle_filled,
                      size: 60,
                      color: Colors.green,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.skip_next,
                      size: 36,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
