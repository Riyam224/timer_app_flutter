import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
              color: Color.fromARGB(255, 222, 133, 38),
              sound: 'sounds/note1.wav',
            ),
            ColorWidget(
              color: Color.fromARGB(255, 237, 216, 57),
              sound: 'sounds/note2.wav',
            ),
            ColorWidget(
              color: Color.fromARGB(255, 57, 108, 14),
              sound: 'sounds/note3.wav',
            ),
            ColorWidget(
              color: Color.fromARGB(255, 38, 182, 222),
              sound: 'sounds/note4.wav',
            ),
            ColorWidget(
              color: Color.fromARGB(255, 23, 36, 168),
              sound: 'sounds/note5.wav',
            ),
            ColorWidget(
              color: Color.fromARGB(255, 32, 3, 3),
              sound: 'sounds/note6.wav',
            ),
            ColorWidget(
              color: Color.fromARGB(255, 48, 12, 87),
              sound: 'sounds/note7.wav',
            ),
          ],
        ));
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
