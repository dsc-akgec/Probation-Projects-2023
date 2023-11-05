import 'package:flutter/material.dart';
import '/about.dart';
import '/main.dart';
//import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white70,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: new Text(
              "Daiwik",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                        blurRadius: 5.0,
                        color: Colors.blueAccent,
                        offset: Offset(1.0, 1.0))
                  ]),
            ),
            accountEmail: new Text(
              "daiwik2213188@akgec.ac.in",
              style: TextStyle(fontSize: 15, color: Colors.white, shadows: [
                Shadow(
                    blurRadius: 5.0,
                    color: Colors.blueAccent,
                    offset: Offset(1.0, 1.0))
              ]),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/dp.jpeg'),
            ),
            decoration: BoxDecoration(
              color: const Color(000000),
              image: new DecorationImage(
                image: AssetImage('assets/appd8.webp'),
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.darken),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.black,
              size: 30,
            ),
            title: new Text(
              "Home",
              style: TextStyle(fontSize: 20),
            ),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => thispage()))
            },
            splashColor: Colors.black87,
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.black,
              size: 30,
            ),
            title: new Text(
              "About",
              style: TextStyle(fontSize: 20),
            ),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => about()))
            },
            splashColor: Colors.black87,
          ),
          ListTile(
            leading: Icon(
              Icons.contacts,
              color: Colors.black,
              size: 30,
            ),
            title: new Text(
              "Contact",
              style: TextStyle(fontSize: 20),
            ),
            onTap: () => {},
            splashColor: Colors.black87,
          ),
          ListTile(
            leading: Icon(
              Icons.link,
              color: Colors.black,
              size: 30,
            ),
            title: new Text(
              "Usefull Links",
              style: TextStyle(fontSize: 20),
            ),
            onTap: () => {},
            splashColor: Colors.black87,
          )
        ],
      ),
    );
  }
}
