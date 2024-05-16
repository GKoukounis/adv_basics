import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswer});
  
  final List<String> chosenAnswer;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answered x out of y questions correctly!'),
            const SizedBox(height: 30,),
            const Text('List of ansers and questions...'),
            const SizedBox(height: 30,),
            TextButton(
              onPressed: (){},
              child: Text('Restart Quiz'))
          
        ],
        ),
      ),
    );
  }
  
  
}