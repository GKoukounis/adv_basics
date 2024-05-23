import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_summary.dart';
class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswer});
  
  final List<String> chosenAnswer;
  
  List<Map<String, Object>> getSummaryData(){
    final List<Map<String, Object>> summary = []; 
  
    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add({
          'question_index': i,
          'questions': questions[i].question,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswer[i]
      });
    }
    return summary;
  }
  
  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!', style: const TextStyle(fontSize: 25,color: Colors.white)),
            const SizedBox(height: 10),
            const SizedBox(height: 30,),
            QuestionsSummary(summaryData),
            const SizedBox(height: 25),
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