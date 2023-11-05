// ignore_for_file: prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  final Shader headerGradient = const LinearGradient(colors: <Color>[
    Color.fromARGB(255, 4, 137, 144),
    Color.fromARGB(255, 85, 108, 1)
  ]).createShader(const Rect.fromLTWH(0, 0, 200.0, 70.0));
  final Shader hightlightGradient = const LinearGradient(colors: <Color>[
    Color.fromARGB(255, 22, 110, 0),
    Color.fromARGB(255, 125, 147, 2)
  ]).createShader(const Rect.fromLTWH(0, 0, 200.0, 70.0));
  final Shader OverallTextGradient = const LinearGradient(colors: <Color>[
    Color(0xff1f005c),
    Color(0xff5b0060),
    Color(0xff870160),
    Color(0xffac255e),
    Color(0xffca485c),
    Color(0xffe16b5c),
    Color.fromARGB(255, 255, 89, 0),
  ]).createShader(const Rect.fromLTWH(0, 0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 157, 183, 173),
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 35, 79, 63),
      ),
      drawer: const MyDrawer(),
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: height * 0.3),
              alignment: Alignment.center,
              child: const CircularAvatarWithBorder(),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.55),
              child: Column(
                children: [
                  const Text(
                    'Hello! I am ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Namrata Yadav',
                    style: TextStyle(
                        foreground: Paint()..shader = headerGradient,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'App Developer',
                    style: TextStyle(
                      foreground: Paint()..shader = headerGradient,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 120,
                    child: TextButton(
                      onPressed: (() {
                        Navigator.pushNamed(context, 'home');
                      }),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: const Color.fromARGB(255, 35, 79, 63),
                      ),
                      child: const Text('My Skills'),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    IconButton(
                        onPressed: (() async {
                          await goToWebPage(
                              "https://instagram.com/just_ahuman08?igshid=OGQ5ZDc2ODk2ZA==");
                          ;
                        }),
                        icon: const FaIcon(
                          FontAwesomeIcons.instagram,
                          color: Color.fromARGB(255, 35, 79, 63),
                        )),
                    IconButton(
                        onPressed: (() async {
                          await goToWebPage(
                              "https://github.com/Namrata-yadav-08");
                        }),
                        icon: const FaIcon(
                          FontAwesomeIcons.github,
                          color: Color.fromARGB(255, 35, 79, 63),
                        )),
                    IconButton(
                        onPressed: (() async {
                          await goToWebPage(
                              "https://www.linkedin.com/in/namrata-yadav-41b332248?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app");
                        }),
                        icon: const FaIcon(
                          FontAwesomeIcons.linkedin,
                          color: Color.fromARGB(255, 35, 79, 63),
                        )),
                    IconButton(
                        onPressed: (() async {
                          await goToWebPage(
                              "https://twitter.com/NamrataYadav08?t=P4i1m_L1LSbaEXVC8LN-RQ&s=09");
                        }),
                        icon: const FaIcon(
                          FontAwesomeIcons.twitter,
                          color: Color.fromARGB(255, 35, 79, 63),
                        )),
                    IconButton(
                        onPressed: (() async {
                          await goToWebPage(
                              "https://www.hackerrank.com/namratanyyadav");
                        }),
                        icon: const FaIcon(
                          FontAwesomeIcons.hackerrank,
                          color: Color.fromARGB(255, 35, 79, 63),
                        )),
                  ])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> goToWebPage(String urlString) async {
    final Uri _url = Uri.parse(urlString);
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
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
          color: const Color.fromARGB(255, 35, 79, 63),
          width: 3.5,
        ),
      ),
      child: const CircleAvatar(
        radius: 80,
        backgroundColor: Colors.white,
        backgroundImage: AssetImage('assets/images/pic2.jpg'),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white70,
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text('Namrata Yadav'),
            accountEmail: Text('namratanyyadav@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/pic2.jpg'),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 35, 79, 63),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.receipt),
            title: const Text('Resume'),
            onTap: () {
              Navigator.pushNamed(context, 'resume');
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.exit_to_app,
              color: Colors.red,
            ),
            title: const Text(
              'Exit',
              style: TextStyle(color: Colors.red),
            ),
            onTap: () {
              SystemNavigator.pop();
            },
          ),
        ],
      ),
    );
  }
}
