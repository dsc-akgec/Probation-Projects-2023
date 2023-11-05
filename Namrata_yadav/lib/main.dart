import 'package:flutter/material.dart';
import 'package:portfolio/screens/about.dart';
import 'package:portfolio/screens/achievements.dart';
import 'package:portfolio/screens/education.dart';
import 'package:portfolio/screens/hobbies.dart';
import 'package:portfolio/screens/home.dart';
import 'package:portfolio/screens/main_screens.dart';
import 'package:portfolio/screens/resume.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 35, 79, 63),
      ),
      initialRoute: 'main_screen',
      routes: {
        'home': (context) => const MyHome(),
        'about': (context) => const About(),
        'resume': (context) => const Resume(),
        'education': (context) => const Education(),
        'achievements': (context) => const Achievements(),
        'hobbies': (context) => const Hobbies(),
        'main_screen': (context) => const Main_Screen(),
      },
    );
  }
}
