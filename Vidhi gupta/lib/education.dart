import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:protfolio/about.dart';
import 'package:protfolio/main.dart';
import 'package:protfolio/skills.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const education());
}

class education extends StatefulWidget {
  const education({super.key});

  @override
  State<education> createState() => _educationState();
}

class _educationState extends State<education> {
  externallink(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  final double coverheigth = 220;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("EDUCATION"),

      //   //  shadowColor: Colors.yellow,
      // ),
      // body: ListView(
      //   // padding: const EdgeInsets.only(top: 20),
      //   children: [
      //     Container(
      //   color: Colors.blueAccent,
      //   child: Image.asset('assests/images/edu.png'),
      //   width: double.infinity,
      //   height: coverheigth,
      // ),
      //     const SizedBox(
      //       height: 50,
      //     ),
      //     Container(
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(70),
      //         boxShadow: [
      //           BoxShadow(
      //             color: Colors.grey.withOpacity(0.6),
      //             spreadRadius: 5,
      //             blurRadius: 7,
      //             offset: const Offset(0, 3),
      //           ),
      //         ],
      //       ),
      //       child: ListTile(
      //         title: const Text("School-Ch.chabbil dass public school"),
      //         subtitle: const Text("Intermediate-90%"),
      //         tileColor: Colors.green,
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(70)),
      //         leading: const Icon(Icons.school),
      //       ),
      //     ),
      //     const SizedBox(
      //       height: 50,
      //     ),
      //     Container(
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(70),
      //         boxShadow: [
      //           BoxShadow(
      //             color: Colors.grey.withOpacity(0.6),
      //             spreadRadius: 5,
      //             blurRadius: 7,
      //             offset: const Offset(0, 3),
      //           ),
      //         ],
      //       ),
      //       child: ListTile(
      //         title: const Text("College-Ajay Kumar Engineering college"),
      //         subtitle: const Text("Degree-Currently pursuing BTECH (CSE ds)"),
      //         tileColor: Colors.blue,
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(70)),
      //         leading: const Icon(Icons.school),
      //       ),
      //     ),
      //   ],
      // ),

      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return buildmobile(context);
          } else {
            return buildweb(context);
          }
        },
      ),
    );
  }

  Widget buildmobile(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("EDUCATION"),
        ),
        body: buildlist(),
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
        Expanded(child: buildlist()),
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

  Widget buildlist() => ListView(
        // padding: const EdgeInsets.only(top: 20),
        children: [
          Container(
            color: Colors.blueAccent,
            child: Image.asset(
              'assests/images/edu.png',
              fit: BoxFit.fill,
            ),
            width: double.infinity,
            height: coverheigth,
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(70),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: ListTile(
              title: const Text("School-Ch.chabbil dass public school"),
              subtitle: const Text("Intermediate-90%"),
              tileColor: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(70)),
              leading: const Icon(Icons.school),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(70),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: ListTile(
              title: const Text("College-Ajay Kumar Engineering college"),
              subtitle: const Text("Degree-Currently pursuing BTECH (CSE ds)"),
              tileColor: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(70)),
              leading: const Icon(Icons.school),
            ),
          ),
        ],
      );
}
