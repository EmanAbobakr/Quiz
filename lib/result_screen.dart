import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.selectedAnswers, this.onRestart, {super.key});

  final List<String> selectedAnswers;
  final VoidCallback onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answer,
        'selected_answer': selectedAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();

    final numQuestions = questions.length;
    final numCorrectAnswers = summaryData.where((data) {
      return data['correct_answer'] == data['selected_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectAnswers out of $numQuestions questions correctly!',
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 237, 223, 252),
              ),
            ),
            SizedBox(height: 30),
            QuestionsSummary(summaryData: summaryData),
            SizedBox(height: 30),
            OutlinedButton.icon(
              onPressed: onRestart,
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              icon: Icon(
                Icons.refresh,
                color: Color.fromARGB(255, 237, 223, 252),
              ),
              label: Text(
                'Restart Quiz',
                style: TextStyle(
                  color: const Color.fromARGB(255, 237, 223, 252),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
