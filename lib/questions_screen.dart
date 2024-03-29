import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  _QuestionsScreenState createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final void Function() onTap = () {};

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(questions[0].question,
              style: const TextStyle(fontSize: 18, color: Colors.white)),
          const SizedBox(height: 40),
          for (var i = 0; i < questions[0].answers.length; i++)
            QuestionButton(onTap: onTap, i: i),
                
        ],
      ),
    );
  }
}

class QuestionButton extends StatelessWidget {
  const QuestionButton({
    super.key,
    required this.onTap,
    required this.i,
  });

  final void Function() onTap;
  final int i;

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
          child: Text(questions[0].answers[i])),
    );
  }
}
