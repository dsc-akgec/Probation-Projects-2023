import 'package:flutter/material.dart';

class Achievements extends StatefulWidget {
  const Achievements({super.key});

  @override
  State<Achievements> createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 35, 79, 63),
        ),
        backgroundColor: const Color.fromARGB(255, 157, 183, 173),
        body: const Center());
  }
}
