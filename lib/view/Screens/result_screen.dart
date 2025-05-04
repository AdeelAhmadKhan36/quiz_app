import 'package:flutter/material.dart';

import '../widgets/gardient_background.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return GradientBackground(

      child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [

        ],
      ),
      ),
    );
  }
}
