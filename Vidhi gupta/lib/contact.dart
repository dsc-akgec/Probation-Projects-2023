import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:protfolio/about.dart';
import 'package:protfolio/education.dart';
import 'package:protfolio/main.dart';
import 'package:protfolio/skills.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const contact());
}

class contact extends StatefulWidget {
  const contact({Key? key}) : super(key: key);

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return buildmobile(context);
            } else {
              return buildweb(context);
            }
          },
        ),
      ),
    );
  }

  Widget buildmobile(BuildContext context) {
    return Scaffold(
      body: buildcolumn(),
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
        Expanded(child: buildcolumn()),
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

  Widget _buildContactButton({
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }

  Widget buildcolumn() => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.blueAccent,
              child: Image.asset(
                'assests/images/appbarimage.png',
                fit: BoxFit.fill,
              ),
              width: double.infinity,
              height: 220,
            ),
            _buildContactButton(
              icon: Icons.email,
              label: 'Email',
              onPressed: () {
                _launchURL(
                    'https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox');
              },
            ),
            _buildContactButton(
              icon: FontAwesomeIcons.github,
              label: 'GitHub',
              onPressed: () {
                _launchURL('https://github.com/VIDHIGUPTA17');
              },
            ),
            _buildContactButton(
              icon: FontAwesomeIcons.linkedinIn,
              label: 'LinkedIn',
              onPressed: () {
                _launchURL(
                    'https://www.linkedin.com/in/vidhi-gupta-26b0261b9/');
              },
            ),
            _buildContactButton(
              icon: FontAwesomeIcons.instagram,
              label: 'Instagram',
              onPressed: () {
                _launchURL('https://www.instagram.com/yourusername');
              },
            ),
            _buildContactButton(
              icon: FontAwesomeIcons.twitch,
              label: 'Twitter',
              onPressed: () {
                _launchURL('https://twitter.com/yourusername');
              },
            ),
          ],
        ),
      );
}
