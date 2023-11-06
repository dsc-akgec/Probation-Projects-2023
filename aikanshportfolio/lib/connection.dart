import 'package:aikanshportfolio/main.dart';
import 'package:flutter/material.dart';


class MyConnections extends StatelessWidget {
  const MyConnections({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApp()))
            },
          ),
          backgroundColor: Color.fromARGB(255, 37, 99, 232),
        ),
        body: Container(
            height: 1000,
            width: 1500,
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
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    "Connect With Me",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w800,
                      color: Color.fromARGB(255, 10, 32, 142),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: SizedBox(
                      height: 100,
                      width: 200,
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.mail),
                          label: Text("E-Mail",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: SizedBox(
                      height: 100,
                      width: 200,
                      child: ElevatedButton.icon(
                          onPressed: () async {
                            final url = Uri.parse("google.com");
                          },
                          icon: Icon(Icons.link),
                          label: Text("Git",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: SizedBox(
                      height: 100,
                      width: 200,
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.link),
                          label: Text("LinkedIn",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: SizedBox(
                      height: 100,
                      width: 200,
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.link_outlined),
                          label: Text(
                            "Instagram",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 2),
                  child: SizedBox(
                      height: 100,
                      width: 200,
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.account_circle_outlined),
                          label: Text(
                            "Contact",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ))),
                ),
              ],
            ))));
  }
}
