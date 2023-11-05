// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

Widget mySpecialization(IconData icon, String text) {
  final Shader hightlightGradient = LinearGradient(colors: <Color>[
    Color.fromARGB(255, 4, 137, 144),
    Color.fromARGB(255, 85, 108, 1),
  ]).createShader(Rect.fromLTWH(0, 0, 200.0, 70.0));

  return Container(
    width: 105,
    height: 115,
    child: Card(
      margin: EdgeInsets.all(0),
      color: const Color.fromARGB(255, 157, 183, 173),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: const Color.fromARGB(255, 35, 79, 63),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                foreground: Paint()..shader = hightlightGradient,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    ),
  );
}

//

class _MyHomeState extends State<MyHome> {
  Shader _headerGradient(BuildContext context) {
    return LinearGradient(
      colors: <Color>[
        Color.fromARGB(255, 4, 137, 144),
        Color.fromARGB(255, 85, 108, 1),
      ],
    ).createShader(
        Rect.fromLTWH(0, 0, MediaQuery.of(context).size.width, 70.0));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 157, 183, 173),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 35, 79, 63),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        child: SlidingSheet(
          elevation: 8,
          cornerRadius: 16,
          snapSpec: const SnapSpec(
            // Enable snapping. This is true by default.
            snap: true,
            // Set custom snapping points.
            snappings: [0.4, 0.7, 1.0],
            // Define to what the snappings relate to. In this case,
            // the total available space that the sheet can expand to.
            positioning: SnapPositioning.relativeToAvailableSpace,
          ),
          // The body widget will be displayed under the SlidingSheet
          // and a parallax effect can be applied to it.
          body: Container(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.4,
                  ),
                  alignment: Alignment.center,
                  child: CircularAvatarWithBorder(),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.40),
                  child: Column(
                    children: [
                      Text(
                        'Namrata Yadav',
                        style: TextStyle(
                            foreground: Paint()
                              ..shader = _headerGradient(context),
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'App Developer',
                        style: TextStyle(
                          foreground: Paint()
                            ..shader = _headerGradient(context),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          builder: (context, state) {
            return Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 30),
              height: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Specialized In',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mySpecialization(MdiIcons.languageCpp, 'C++'),
                          mySpecialization(FontAwesomeIcons.c, 'C'),
                          mySpecialization(FontAwesomeIcons.python, 'Python'),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mySpecialization(FontAwesomeIcons.html5, 'HTML'),
                          mySpecialization(FontAwesomeIcons.css3, 'CSS'),
                          mySpecialization(FontAwesomeIcons.database, 'MySQL'),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mySpecialization(FontAwesomeIcons.android, 'Dart'),
                          mySpecialization(FontAwesomeIcons.github, 'Github'),
                          mySpecialization(
                              FontAwesomeIcons.brain, 'Problem Solving'),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class CircularAvatarWithBorder extends StatelessWidget {
  const CircularAvatarWithBorder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: const Color.fromARGB(255, 255, 255, 255),
          width: 3.5,
        ),
      ),
      child: CircleAvatar(
        radius: 80,
        backgroundColor: Colors.white,
        backgroundImage: AssetImage('assets/images/pic2.jpg'),
      ),
    );
  }
}
