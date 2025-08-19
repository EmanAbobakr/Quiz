import 'package:flutter/material.dart';
import 'package:quiz/start_screen.dart';
import 'package:quiz/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? currentScreen;

  @override
  void initState() {
    super.initState();
    currentScreen = StartScreen(
      'assets/images/quiz-logo.png',
      'Learn Flutter the fun way!',
      'Start Quiz',
      () {
        onStartQuizButtonClicked();
      },
    );
  }

  void onStartQuizButtonClicked() {
    setState(() {
      currentScreen = QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 74, 0, 148),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: currentScreen,
        ),
      ),
    );
  }
}
