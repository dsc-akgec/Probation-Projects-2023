import 'package:aikanshportfolio/main.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
        leading: BackButton(
          onPressed: () => {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()))
          },
        ),
        backgroundColor: Color.fromARGB(255, 37, 99, 232),

      ),
        body: Container(
            height: 1000,
            width: 1500,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.lightBlueAccent, Color.fromARGB(255, 14, 55, 167)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:18.0),
                  child: Text("My Interests",textAlign:TextAlign.center,style: TextStyle(
                    fontSize:40,
                    fontWeight:FontWeight.w800,
                    letterSpacing:2.0,
                    color: Color.fromARGB(221, 15, 3, 83),
                  ),),
                ),
            
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text("Hii,I'am Aikansh Tiwari,I like to try a lot of different things so having knowledge of other domains apart from technology is a hobby of mine and travelling and exploring different places and seeing their living is very good for me.I am very interested in playing chess, it gives me good experience in productivity and strategy building.",textAlign: TextAlign.center, style: TextStyle(
                    fontFamily: 'FontMain',
                    fontSize: 40,
                    fontWeight:FontWeight.w700,
                    letterSpacing: 1.5,
                    
                    color: Colors.white,
                  ),),
                ),             
              ],
            
            )
            )
            )
            );
  }
}
