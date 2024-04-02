import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  _QuestionsScreenState createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIndex += 1;
    });
  }

  final void Function() onTap = () {};

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.question,
              style: GoogleFonts.lato(
                color: const Color.fromRGBO(188, 114, 249, 1),
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return QuestionButton(onTap: answerQuestion, answerText: answer);
            }),
          ],
        ),
      ),
    );
  }
}

class QuestionButton extends StatelessWidget {
  const QuestionButton({
    super.key,
    required this.onTap,
    required this.answerText,
  });

  final void Function() onTap;
  final String answerText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              backgroundColor: const Color.fromARGB(255, 0, 0, 0),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              )),
          child: Text(answerText, textAlign: TextAlign.center,)),
    );
  }
}
