import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:protfolio/about.dart';
import 'package:protfolio/education.dart';
import 'package:protfolio/main.dart';
import 'package:url_launcher/url_launcher.dart';

class myskill extends StatefulWidget {
  const myskill({super.key});

  @override
  State<myskill> createState() => _myskillState();
}

class _myskillState extends State<myskill> {
  externallink(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  final double coverheigth = 220;

  var opcapacity = 0.0;
  var opcapacity1 = 0.0;
  var opcapacity2 = 0.0;
  var opcapacity3 = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text("SKILLS")),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return buildmobile(context);
          } else {
            return buildweb(context);
          }
        },
      )
      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   children: [
      //     const Padding(padding: EdgeInsets.all(3)),
      //     Container(
      //       child: Image.asset(
      //         'assests/images/skill.jpg',
      //         fit: BoxFit.fill,
      //       ),
      //       width: double.infinity,
      //       height: coverheigth,
      //     ),
      //     Container(
      //       width: MediaQuery.of(context).size.width / 4,
      //       child: ElevatedButton(
      //         onPressed: () {
      //           // opcapacity = 1;
      //           setState(() {
      //             opcapacity2 = 1.0;
      //           });
      //         },
      //         child: const Text("HTML,CSS"),
      //       ),
      //     ),
      //     AnimatedOpacity(
      //       opacity: opcapacity2,
      //       duration: const Duration(seconds: 2),
      //       child: Container(
      //         width: 700,
      //         height: 70,
      //         margin: const EdgeInsets.all(6),
      //         padding: const EdgeInsets.all(9),
      //         // color: const Color.fromARGB(255, 255, 236, 169),
      //         child: const Text(
      //           "I have made a Akgec Website clone using HTML CSS",
      //           style: TextStyle(fontSize: 20),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       width: MediaQuery.of(context).size.width / 4,
      //       child: ElevatedButton(
      //           onPressed: () {
      //             // opcapacity = 1;
      //             setState(() {
      //               opcapacity = 1.0;
      //             });
      //           },
      //           child: const Text("Java Script")),
      //     ),
      //     AnimatedOpacity(
      //       opacity: opcapacity,
      //       duration: const Duration(seconds: 2),
      //       child: Container(
      //         width: 700,
      //         height: 70,
      //         margin: const EdgeInsets.all(2),
      //         padding: const EdgeInsets.all(9),
      //         // color: const Color.fromARGB(255, 255, 236, 169),
      //         child: const Text(
      //           "I made a Brick Breaker Game using java script,html canvas.",
      //           style: TextStyle(fontSize: 20),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       width: MediaQuery.of(context).size.width / 4,
      //       child: ElevatedButton(
      //           onPressed: () {
      //             // opcapacity = 1;
      //             setState(() {
      //               opcapacity1 = 1.0;
      //             });
      //           },
      //           child: const Text("Competetive Programming")),
      //     ),
      //     AnimatedOpacity(
      //       opacity: opcapacity1,
      //       duration: const Duration(seconds: 2),
      //       child: Container(
      //         width: 700,
      //         height: 70,
      //         margin: const EdgeInsets.all(2),
      //         padding: const EdgeInsets.all(9),
      //         // color: const Color.fromARGB(255, 255, 236, 169),
      //         child: const Text(
      //           "I am Silve Badge in Problem Solving on Hackerrank",
      //           style: TextStyle(fontSize: 20),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       width: MediaQuery.of(context).size.width / 4,
      //       child: ElevatedButton(
      //           onPressed: () {
      //             // opcapacity = 1;
      //             setState(() {
      //               opcapacity3 = 1.0;
      //             });
      //           },
      //           child: const Text("Flutter")),
      //     ),
      //     AnimatedOpacity(
      //       opacity: opcapacity3,
      //       duration: const Duration(seconds: 2),
      //       child: Container(
      //         width: 700,
      //         // height: 50,
      //         margin: const EdgeInsets.all(2),
      //         padding: const EdgeInsets.all(9),
      //         // color: const Color.fromARGB(255, 255, 236, 169),
      //         child: const Text(
      //           "I have made a protfolio using Flutter.",
      //           style: TextStyle(fontSize: 20),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      ,
    );
  }

  Widget buildmobile(BuildContext context) {
    return Scaffold(
      body: skills(),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "HOME",
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.faceSmile),
                label: "G",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.school),
                label: "H",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.interests),
                label: "L",
                backgroundColor: Colors.blue),
          ],
          // currentIndex: 0,
          // selectedItemColor: Colors.white,

          onTap: (index) {
            switch (index) {
              case 0:
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FlutterApp()));
                break;
              case 1:
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => about()));
                break;
              case 2:
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => education()));
                break;
              case 3:
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => myskill()));
                break;
              default:
                break;
            }
          }),
    );
  }

  Widget buildweb(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 150,
          color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildNavigationButton(
                icon: Icons.home,
                label: "Home",
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FlutterApp()));
                },
              ),
              buildNavigationButton(
                icon: FontAwesomeIcons.faceSmile,
                label: "About",
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => about()));
                },
              ),
              buildNavigationButton(
                icon: FontAwesomeIcons.school,
                label: "Education",
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => education()));
                },
              ),
              buildNavigationButton(
                icon: Icons.interests,
                label: "Skills",
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => myskill()));
                },
              ),
            ],
          ),
        ),
        Expanded(child: skills()),
      ],
    );
  }

  Widget buildNavigationButton({
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return TextButton(
      onPressed: onPressed,
      child: Column(
        children: [
          Icon(icon, color: Colors.white),
          SizedBox(height: 5),
          Text(label, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  Widget skills() => SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(padding: EdgeInsets.all(3)),
            Container(
              child: Image.asset(
                'assests/images/skill.jpg',
                fit: BoxFit.fill,
              ),
              width: double.infinity,
              height: coverheigth,
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 4,
              child: ElevatedButton(
                onPressed: () {
                  // opcapacity = 1;
                  setState(() {
                    opcapacity2 = 1.0;
                  });
                },
                child: const Text("HTML,CSS"),
              ),
            ),
            AnimatedOpacity(
              opacity: opcapacity2,
              duration: const Duration(seconds: 2),
              child: Container(
                width: 700,
                height: 70,
                margin: const EdgeInsets.all(6),
                padding: const EdgeInsets.all(9),
                // color: const Color.fromARGB(255, 255, 236, 169),
                child: const Text(
                  "I have made a Akgec Website clone using HTML CSS",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 4,
              child: ElevatedButton(
                  onPressed: () {
                    // opcapacity = 1;
                    setState(() {
                      opcapacity = 1.0;
                    });
                  },
                  child: const Text("Java Script")),
            ),
            AnimatedOpacity(
              opacity: opcapacity,
              duration: const Duration(seconds: 2),
              child: Container(
                width: 700,
                height: 70,
                margin: const EdgeInsets.all(2),
                padding: const EdgeInsets.all(9),
                // color: const Color.fromARGB(255, 255, 236, 169),
                child: const Text(
                  "I made a Brick Breaker Game using java script,html canvas.",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 4,
              child: ElevatedButton(
                  onPressed: () {
                    // opcapacity = 1;
                    setState(() {
                      opcapacity1 = 1.0;
                    });
                  },
                  child: const Text("Competetive Programming")),
            ),
            AnimatedOpacity(
              opacity: opcapacity1,
              duration: const Duration(seconds: 2),
              child: Container(
                width: 700,
                height: 70,
                margin: const EdgeInsets.all(2),
                padding: const EdgeInsets.all(9),
                // color: const Color.fromARGB(255, 255, 236, 169),
                child: const Text(
                  "I am Silve Badge in Problem Solving on Hackerrank",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 4,
              child: ElevatedButton(
                  onPressed: () {
                    // opcapacity = 1;
                    setState(() {
                      opcapacity3 = 1.0;
                    });
                  },
                  child: const Text("Flutter")),
            ),
            AnimatedOpacity(
              opacity: opcapacity3,
              duration: const Duration(seconds: 2),
              child: Container(
                width: 700,
                // height: 50,
                margin: const EdgeInsets.all(2),
                padding: const EdgeInsets.all(9),
                // color: const Color.fromARGB(255, 255, 236, 169),
                child: const Text(
                  "I have made a protfolio using Flutter.",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      );
}
