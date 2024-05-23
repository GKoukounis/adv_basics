import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_summary.dart';
class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswer});
  
  final List<String> chosenAnswer;
  
  List<Map<String, Object>> getSummaryData(){
    final List<Map<String, Object>> summary = []; 
  
    print(chosenAnswer);
    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add({
          'question_index': i,
          'questions': questions[i],
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswer[i]
      });
    }
    print(summary);
    return summary;
  }
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answered x out of y questions correctly!', style: TextStyle(fontSize: 25,color: Colors.white)),
            const SizedBox(height: 10),
            const SizedBox(height: 30,),
            QuestionsSummary(getSummaryData()),
            const SizedBox(height: 30,),
            TextButton(
              onPressed: (){},
              child: const Text('Restart Quiz'))
          
        ],
        ),
      ),
    );
  }
  
  
}