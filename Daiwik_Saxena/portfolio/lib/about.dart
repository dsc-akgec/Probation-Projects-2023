import 'package:flutter/material.dart';

class about extends StatelessWidget {
  const about({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 131, 105, 113),
      body: new Container(
        child: new Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: new Center(
                child: new Text(
                  "About Me",
                  style: TextStyle(
                      fontFamily: 'PermanentMarker-Regular', fontSize: 40),
                ),
              ),
            ),
            new Center(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: new Text(
                  "Hello, I'm Daiwik, a 19-year-old student pursuing a Bachelor of Technology (B.Tech) in Information Technology (IT). I am from Bareilly. My journey in the world of technology has been an exciting one, with a strong focus on programming and software development.'\n'One of my key areas of expertise is in Flutter development, where I enjoy creating cross-platform mobile applications that are both functional and visually appealing. My proficiency extends to web development, where I am skilled in HTML and CSS, enabling me to craft responsive and user-friendly websites.'\n'In addition to mobile and web development, I have a solid foundation in programming languages such as C++, C . These languages have allowed me to solve problems and develop efficient algorithms.'\n'In the future, I aspire to continue expanding my knowledge and skills in the field of computer science and technology. My goal is to contribute to the development of innovative solutions that address real-world challenges and make a positive impact on society.",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
