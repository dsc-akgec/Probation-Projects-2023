import 'package:flutter/material.dart';

class Hobbies extends StatefulWidget {
  const Hobbies({super.key});

  @override
  State<Hobbies> createState() => _HobbiesState();
}

class _HobbiesState extends State<Hobbies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(Icons.arrow_back),
          //   onPressed: () {
          //     Navigator.of(context).pop();
          //   },
          // ),
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 35, 79, 63),
        ),
        backgroundColor: const Color.fromARGB(255, 157, 183, 173),
        body: const Center());
  }
}
