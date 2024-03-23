// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // todo
  var currentTime = '';
  @override
  // todo
  void initState() {
    super.initState();
    // todo timer

    Timer.periodic(Duration(seconds: 1), (timer) {
      updateTime();
    });
  }
  // todo

  void updateTime() {
    // todo current date

    setState(() {
      currentTime = DateTime.now().toString().substring(11, 19);
    });
  }

  // todo
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 8, 8, 4),
      body: Center(
          child: Text(
        '$currentTime',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      )),
    );
  }
}
