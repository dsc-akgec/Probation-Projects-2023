import 'package:flutter/material.dart';
import 'package:protfolio/about.dart';
import 'package:protfolio/contact.dart';
import 'package:protfolio/education.dart';
import 'package:protfolio/skills.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter app",
      debugShowCheckedModeBanner: false,
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  // final double coverheigth = 220;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          buildstack(context),
          buildcontent(context),
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
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              buildstack(context),
              buildcontent(context),
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

  Widget buildCoverImage(BuildContext context) => Container(
        color: Colors.blueAccent,
        child: Image.asset(
          'assests/images/appbarimage.png',
          width: MediaQuery.of(context).size.width,
          height: 220,
          fit: BoxFit.fill,
        ),
      );

  Widget buildprofileimage() => CircleAvatar(
        radius: 90,
        backgroundImage: AssetImage('assests/images/img2.jpeg'),
      );

  Widget buildstack(BuildContext context) => Stack(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            // Container(margin: EdgeInsets.only(bottom: 800),),
            Container(
                margin: EdgeInsets.only(bottom: 100),
                child: buildCoverImage(context)),
            Positioned(top: 220 / 2 + 30, child: buildprofileimage()),
          ]);

  Widget buildcontent(BuildContext context) =>
      Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        // const SizedBox(height: 20,),
        Text(
          "Vidhi Gupta",
          style: TextStyle(
              fontSize: 50, fontFamily: 'font2', fontWeight: FontWeight.bold),
        ),
        // SizedBox(
        //   height: 10,        ),
        Text(
          "Student ",
          style: TextStyle(
              fontSize: 30,
              fontFamily: 'font2',
              color: Colors.grey,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 30,
        ),

        Wrap(
          children: <Widget>[
            // Padding(padding: EdgeInsets.only(bottom: 9)),

            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            // Padding(padding:EdgeInsets.all(2)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 200,
                  height: 100,
                  margin: EdgeInsets.only(bottom: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => contact()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.contact_mail,
                          // size: MediaQuery.of(context).size.width * 0.033,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "Contact Me",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),

          ],
        )
      ]);
}
