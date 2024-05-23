import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestionsSummary extends StatelessWidget {
  
  const QuestionsSummary(this.summaryData, {super.key});
  
  final List<Map<String, Object>> summaryData;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data) {
        return Row(children: [
          Text(((data['question_index'] as int) + 1).toString(),style: const TextStyle(color: Colors.white)),
          Expanded(
            child: Column(children: [
              Text(data['questions'].toString(),style: const TextStyle(color: Colors.white),),
              const SizedBox(height: 5,),
              Text(data['user_answer'] as String,style: const TextStyle(color: Colors.white)),
              Text(data['correct_answer'] as String, style: const TextStyle(color: Colors.white))
            ],),
          ),
        ],);
      },
      ).toList(),
    );
  }
  
}