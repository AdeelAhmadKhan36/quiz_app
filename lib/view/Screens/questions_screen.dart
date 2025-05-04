import 'package:flutter/material.dart';

import '../data/questions.dart';
import '../widgets/answer_button.dart';
import '../widgets/gardient_background.dart';
import 'home.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var Curreent_Question_Index=0;

  void ans_quesrtion() {
    setState(() {
      if (Curreent_Question_Index < questions.length - 1) {
        Curreent_Question_Index++;
      } else {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    final currentQuestion=questions[Curreent_Question_Index];
    return GradientBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent, // so gradient shows if used
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0), // adds padding around column
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // center vertically
              crossAxisAlignment: CrossAxisAlignment.stretch, // stretch buttons horizontally
              children: [
                 Text(
                  currentQuestion.text,
                  // 'What is the capital of Pakistan?',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30), // space between text and buttons
                Column(
                  children: currentQuestion.getShufflledAnswer().asMap().entries.map((entry) {
                    final index = entry.key;
                    final answer = entry.value;
                    Color color;

                    // assign different color based on index
                    switch (index) {
                      case 0:
                        color = Colors.deepPurple;
                        break;
                      case 1:
                        color =Colors.deepPurpleAccent;
                        break;
                      case 2:
                        color = Colors.deepOrangeAccent;
                        break;
                      case 3:
                        color = Colors.blueGrey;
                        break;
                      default:
                        color = Colors.indigoAccent;
                    }

                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8), // adds vertical gap
                      child: SizedBox(
                        width: double.infinity, //  m`akes button fill available width

                        child: CustomElevatedButton(

                          text: answer,
                          backgroundColor: color,
                          textColor: Colors.white,
                          onPressed:ans_quesrtion,
                        ),
                      ),
                    );
                  }).toList(),
                )

                // CustomElevatedButton(
                //   text: currentQuestion.answer[0],
                //     // text: 'A. Karachi',
                //   backgroundColor: Colors.deepPurple,
                //   textColor: Colors.white,
                //   onPressed: () {
                //     // handle A
                //     print('A pressed');
                //   },
                // ),
                //
                // const SizedBox(height: 16),
                //
                // CustomElevatedButton(
                //   text: currentQuestion.answer[1],
                //
                //   // text: 'B. London',
                //   backgroundColor: Colors.purple,
                //   textColor: Colors.white,
                //   onPressed: () {
                //     // handle B
                //     print('B pressed');
                //   },
                // ),
                //
                // const SizedBox(height: 16),
                //
                // CustomElevatedButton(
                //   text: currentQuestion.answer[2],
                //   backgroundColor: Colors.deepPurpleAccent,
                //   textColor: Colors.white,
                //   onPressed: () {
                //     // handle C
                //     print('C pressed');
                //   },
                // ),
                // const SizedBox(height: 16),
                //
                // CustomElevatedButton(
                //   text: currentQuestion.answer[3],
                //   backgroundColor: Colors.blueAccent,
                //   textColor: Colors.white,
                //   onPressed: () {
                //     // handle C
                //     print('C pressed');
                //   },
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
