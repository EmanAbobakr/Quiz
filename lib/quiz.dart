import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/result_Screen.dart';
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

  List<String> selectedAnswers = [];

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
      currentScreen = QuestionsScreen(onSelectedAnswers);
    });
  }

  void onSelectedAnswers(String selectedAnswer) {
    selectedAnswers.add(selectedAnswer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        currentScreen = ResultScreen(selectedAnswers, onRestartQuiz);
      });
      selectedAnswers = [];
    }
  }

  void onRestartQuiz() {
    onStartQuizButtonClicked();
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
