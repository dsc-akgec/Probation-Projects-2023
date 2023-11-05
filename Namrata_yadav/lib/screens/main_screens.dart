// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/screens/about.dart';
import 'package:portfolio/screens/achievements.dart';
import 'package:portfolio/screens/education.dart';
import 'package:portfolio/screens/hobbies.dart';

class Main_Screen extends StatefulWidget {
  const Main_Screen({super.key});

  @override
  State<Main_Screen> createState() => _Main_ScreenState();
}

class _Main_ScreenState extends State<Main_Screen> {
  int _index = 0;
  final screens = [
    const About(),
    const Education(),
    const Hobbies(),
    const Achievements()
  ];
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(Icons.person, size: 30),
      const Icon(FontAwesomeIcons.graduationCap, size: 20),
      const Icon(FontAwesomeIcons.gamepad, size: 20),
      const Icon(FontAwesomeIcons.award, size: 20),
    ];
    if (_index < 0) {
      _index = 0;
    } else if (_index >= screens.length) {
      _index = screens.length - 1;
    }
    return Container(
        color: const Color.fromARGB(255, 35, 79, 63),
        child: SafeArea(
            top: false,
            child: ClipRect(
                child: Scaffold(
                    backgroundColor: const Color.fromARGB(255, 157, 183, 173),
                    extendBody: true,
                    extendBodyBehindAppBar: true,
                    body: screens[_index],
                    bottomNavigationBar: Theme(
                        data: Theme.of(context).copyWith(
                            iconTheme: const IconThemeData(
                                color: Color.fromARGB(255, 255, 255, 255))),
                        child: CurvedNavigationBar(
                          key: navigationKey,
                          color: const Color.fromARGB(255, 35, 79, 63),
                          buttonBackgroundColor:
                              const Color.fromARGB(255, 157, 183, 173),
                          backgroundColor: Colors.transparent,
                          items: items,
                          animationCurve: Curves.easeInOut,
                          animationDuration: const Duration(milliseconds: 300),
                          height: 60,
                          index: _index,
                          onTap: (value) {
                            setState(() {
                              _index = value;
                            });
                          },
                        ))))));
  }
}
