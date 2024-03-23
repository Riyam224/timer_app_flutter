import 'package:flutter/material.dart';
import 'package:tune_app/views/home_view.dart';

void main() {
  runApp(const TuneApp());
}

class TuneApp extends StatelessWidget {
  const TuneApp({super.key});

  //  TODO
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
