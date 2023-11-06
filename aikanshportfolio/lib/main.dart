import 'package:aikanshportfolio/aboutme.dart';
import 'package:flutter/material.dart';
import'skills.dart';
import 'connection.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 141, 214, 222)),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: 'MY PORTFOLIO',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        backgroundColor: Color.fromARGB(133, 186, 185, 186),
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
          centerTitle: true,
          titleSpacing: 3,
                
        ),
        drawer: Drawer(
          child: Container(
            color: Color.fromARGB(255, 200, 202, 205),
            child: ListView(
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                   gradient: LinearGradient(
              colors: [Colors.lightBlueAccent, Color.fromARGB(255, 12, 48, 145)],
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
            )
                  ),
                  child:
                 Column(
                   children: [
                     Text("Aikansh Tiwari",textAlign:TextAlign.center,style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                     ),),
                     Text("aikanshtiwari007@gmail.com",textAlign: TextAlign.center,style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                     ),),
                   ],
                 ),
                 
                ),
                ListTile(
                  title: const Text(
                    'HOME',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
           
                  },
                ),
                
                ListTile(
                  title: const Text(
                    'SKILLS',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MySkills()));
                  },
                ),
                ListTile(
                  title: const Text(
                    'MORE ABOUT ME',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AboutMe()));
          
                  },
                ),
                ListTile(
                  title: const Text(
                    'CONTACT',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyConnections()));
          
                  },
                ),
                ListTile(
                  title: const Text(''),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
        body: Container(
          width: 1500,
          height: 1500,
          decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.lightBlueAccent, Color.fromARGB(255, 8, 31, 96)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage:
                          AssetImage('assets/Images/IMG-20230624-WA0000.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      " This Is AIKANSH TIWARI",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.w800,
                        color: Color.fromARGB(255, 5, 23, 105),
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      'About Me',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(222, 87, 225, 13),
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      child: Text(
                        "Hi,I'm Aikansh Tiwari,an app developer passionate about crafting remarkable digital experiences.I'm also intrested in backend development and love tackling challenges.Plus,I'm a DSA enthusiast and a competitive programmer,always aiming for excellence.Let's innovate together!",
                        style: TextStyle(
                          fontFamily: 'fontmain',
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                 
                ]),
          ),
        ));
  }
}
