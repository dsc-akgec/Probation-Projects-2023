import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '/navbar.dart';
import '/about.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:url_launcher/link.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.pink),
        home: thispage());
  }
}

class thispage extends StatefulWidget {
  const thispage({super.key});

  @override
  State<thispage> createState() => _thispageState();
}

class _thispageState extends State<thispage> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black54,
      drawer: NavBar(),
      appBar: new AppBar(
        centerTitle: true,
        title: new Text(
          "Portfolio",
          style: TextStyle(
              fontFamily: 'PermanentMarker-Regular',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                    blurRadius: 10.0,
                    color: Colors.blueGrey,
                    offset: Offset(1.0, 1.0))
              ]),
        ),
      ),
      body: new Stack(
        fit: StackFit.expand,
        children: [
          Scaffold(
            backgroundColor: Color.fromARGB(25, 13, 10, 13),
          ),
          // Image(
          //   image: const AssetImage("assets/appd5(1).jpg"),
          //   fit: BoxFit.cover,
          //   color: Colors.black87,
          //   colorBlendMode: BlendMode.multiply,
          // ),
          new Container(
            child: Center(
              child: Column(
                children: [
                  new Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("assets/dp.jpeg"),
                      backgroundColor: Colors.blue,
                      radius: 90,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: new Text(
                      "Daiwik",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                                blurRadius: 12.0,
                                color: Colors.blueAccent,
                                offset: Offset(2.3, 2.5))
                          ]),
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: new Text(
                      "Flutter Developer",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontFamily: 'Creepster-Regular',
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                                blurRadius: 10.0,
                                color: Colors.blueAccent,
                                offset: Offset(2.0, 2.0))
                          ]),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Padding(
                        padding: EdgeInsets.only(top: 10.0, left: 25.0),
                        child: new Text(
                          "Know more about me",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontFamily: 'Creepster-Regular',
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                    blurRadius: 10.0,
                                    color: Colors.blueAccent,
                                    offset: Offset(2.0, 2.0))
                              ]),
                        ),
                      ),
                      new Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: new IconButton(
                          onPressed: () => {},
                          icon: Icon(
                            Icons.arrow_downward,
                            size: 25.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  new Padding(
                    padding: EdgeInsets.only(top: 3.0),
                    child: new IconButton(
                      onPressed: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return about();
                        }))
                      },
                      icon: Icon(
                        Icons.account_box,
                        size: 40.0,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                              blurRadius: 15.0,
                              color: Colors.pink,
                              offset: Offset(1.0, 1.0))
                        ],
                      ),
                    ),
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Padding(
                        padding: EdgeInsets.only(top: 50.0),
                        child: new IconButton(
                          onPressed: () =>
                              {launch("https://web.whatsapp.com/")},
                          icon: Icon(
                            FontAwesomeIcons.whatsapp,
                            size: 30.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      new Padding(
                        padding: EdgeInsets.only(top: 50.0, left: 30),
                        child: new IconButton(
                          onPressed: () => {
                            launch(
                                "https://instagram.com/daiwik_1901?igshid=OGQ5ZDc2ODk2ZA==")
                          },
                          icon: Icon(
                            FontAwesomeIcons.instagram,
                            size: 30.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      new Padding(
                        padding: EdgeInsets.only(top: 50.0, left: 30),
                        child: new IconButton(
                          onPressed: () =>
                              {launch("https://github.com/Daiwik-1901")},
                          icon: Icon(
                            FontAwesomeIcons.github,
                            size: 30.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      new Padding(
                        padding: EdgeInsets.only(top: 50.0, left: 30),
                        child: new IconButton(
                          onPressed: () => {
                            launch(
                                "https://www.linkedin.com/in/daiwik-saxena-185a76293")
                          },
                          icon: Icon(
                            FontAwesomeIcons.linkedin,
                            size: 30.0,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
