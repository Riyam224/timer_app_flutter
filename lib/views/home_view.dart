import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // todo list of sounds

  List<String> sounds = [
    'sounds/note1.wav',
    'sounds/note2.wav',
    'sounds/note3.wav',
    'sounds/note4.wav',
    'sounds/note5.wav',
    'sounds/note6.wav',
    'sounds/note7.wav',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tune App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ColorWidget(
            color: Colors.black12,
            sound: sounds[1],
          ),
          ColorWidget(
            color: Colors.black12,
            sound: sounds[1],
          ),
          ColorWidget(
            color: const Color.fromARGB(31, 37, 9, 9),
            sound: sounds[2],
          ),
          ColorWidget(
            color: Color.fromARGB(31, 180, 251, 25),
            sound: sounds[4],
          ),
        ],
      ),
    );
  }
}
// todo category widget

class ColorWidget extends StatelessWidget {
  ColorWidget({super.key, required this.color, required this.sound});

  Color color;
  String sound;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          final player = AudioPlayer();
          player.play(
            AssetSource(sound),
          );
        },
        child: Container(
          width: double.infinity,
          height: 90,
          color: color,
        ),
      ),
    );
  }
}
