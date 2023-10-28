import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:protfolio/education.dart';
import 'package:protfolio/main.dart';
import 'package:protfolio/skills.dart';
import 'package:url_launcher/url_launcher.dart';

// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class about extends StatefulWidget {
  const about({super.key});

  @override
  State<about> createState() => _myskillState();
}

class _myskillState extends State<about> {
  externallink(String url) async {
    // const url = 'https://github.com/VIDHIGUPTA17';
    // const url1 = 'https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox';
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return buildmobile(context);
        } else {
          return buildweb(context);
        }
      }),

      // bottomNavigationBar: BottomNavigationBar(
      //     items: const [
      //       BottomNavigationBarItem(
      //           icon: Icon(FontAwesomeIcons.message),
      //           label: "EMAIL",
      //           backgroundColor: Colors.blue),
      //       BottomNavigationBarItem(
      //           icon: Icon(FontAwesomeIcons.github),
      //           label: "git",
      //           tooltip: "GITHUB",
      //           backgroundColor: Colors.blue),
      //       BottomNavigationBarItem(
      //           icon: Icon(FontAwesomeIcons.hackerrank),
      //           label: "HACKERRANK",
      //           backgroundColor: Colors.blue),
      //       BottomNavigationBarItem(
      //           icon: Icon(FontAwesomeIcons.linkedinIn),
      //           label: "LINKEDIN",
      //           backgroundColor: Colors.blue),
      //     ],
      //     onTap: (index) {
      //       print('Tapped index: $index');
      //       switch (index) {
      //         case 0:
      //           externallink(
      //               'https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox');
      //           break;
      //         case 1:
      //           externallink('https://github.com/VIDHIGUPTA17');
      //           break;
      //         case 2:
      //           externallink('https://www.hackerrank.com/VIDHIGUPTA17');
      //           break;
      //         case 3:
      //           externallink(
      //               'https://www.linkedin.com/in/vidhi-gupta-26b0261b9/');
      //           break;
      //         default:
      //           break;
      //       }
      //     }),
    );
  }

  Widget buildmobile(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ABOUT ME"),

          //  shadowColor: Colors.yellow,
        ),
        body: ListView(
          children: [
            buildcolumn(),
          ],
        ),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => about()));
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
            }));
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
        Expanded(
          child: ListView(
            children: [
              buildcolumn(),
            ],
          ),
        ),
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

  Widget buildcolumn() => SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: const EdgeInsets.all(30),
              child: const Text(
                "ABOUT ME",
                style: TextStyle(
                    fontSize: 45,
                    fontFamily: 'font2',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              // margin: EdgeInsets.all(2),
              // color: Color.fromARGB(255, 230, 183, 226),
              padding: const EdgeInsets.all(9),
              // margin: EdgeInsets.all(2),
              // color: Color.fromARGB(255, 230, 183, 226),
              child: const Text(
                "Hello, I'm Vidhi Gupta, a passionate and dedicated student pursuing a Bachelor's degree in Technology. My primary focus lies in competitive programming, where I thrive in solving complex problems and honing my coding skills.I am driven to continuously enhance my coding proficiency and expand my knowledge in Android Development. Looking forward to engaging in challenging projects that push my boundaries and contribute to my growth as a tech enthusiast.",
                style: TextStyle(fontSize: 20, fontFamily: 'font1'),
              ),
            ),
          ],
        ),
      );
}
