import 'package:aikanshportfolio/main.dart';
import 'package:flutter/material.dart';
class MySkills extends StatelessWidget {
  const MySkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        leading: BackButton(
          onPressed: () => {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()))

          },
        ),
                backgroundColor: Color.fromARGB(255, 37, 99, 232),

      ),
      body:
      Container(
        height: 1000,
        width:1500,
       decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:[Colors.lightBlueAccent,Color.fromARGB(255, 8, 31, 96)],
          begin: Alignment.topLeft,
          end:Alignment.bottomRight,
        )
       ),
       child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all( 30.0),
                    child: Text("Skills",textAlign:TextAlign.center,style:TextStyle(
                      fontSize: 40,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w800,
                      color:Colors.white,
                    ),),
                  ),
 Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0, left: 10.0),
                        child: Image.asset(
                          "assets/Images/c.png",
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 40.0),
                        child: Text(
                          "C language",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, top: 40.0),
                        child: Image.asset(
                          "assets/Images/ISO_C++_Logo.svg.png",
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, top: 40.0),
                        child: Text(
                          "C++",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, top: 40.0),
                        child: Image.asset(
                          "assets/Images/html-5.png",
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, top: 40.0),
                        child: Text(
                          "HTML",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, top: 40.0),
                        child: Image.asset(
                          "assets/Images/css-3.png",
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, top: 40.0),
                        child: Text(
                          "CSS",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, top: 40.0),
                        child: Image.asset(
                          "assets/Images/icons8-flutter-96.png",
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, top: 40.0),
                        child: Text(
                          "FLUTTER",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
      )
    ))
      );
  }
}