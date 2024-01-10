import 'package:flutter/material.dart';
import 'package:flutter_quiz/answer_button.dart';
import "package:flutter_quiz/data/questions.dart";

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];
    // return const Text('QuestionScreen');
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.answers.map(
              (answer) {
                return AnswerButton(answerText: answer, onTap: () {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
