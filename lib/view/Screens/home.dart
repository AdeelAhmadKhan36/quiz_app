
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
            gradient: LinearGradient(colors: [

              Color.fromARGB(255, 78, 13, 151 ),
              Color.fromARGB(255, 107, 15, 168),

            ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,

            ),
          ),
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 50.0, right: 50, top: 150),
                child: Image.asset(
                  color: Color.fromARGB(150, 255, 255, 255),
                    "assets/images/quiz-logo.png"),

              ),

              SizedBox(height: 80,
              ),
              Text("Learn Flutter the Fun way!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Color.fromARGB(255, 237, 223, 252)
                ),
              ),
              SizedBox(height: 30,),
              OutlinedButton.icon(onPressed: (){

              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white
              )
              , label: Text("Start Text"),
                icon: Icon(Icons.arrow_right_alt),


              )
            ],
          ),),
    );
  }
}
