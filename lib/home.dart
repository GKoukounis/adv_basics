import 'package:adv_basics/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage(
    this.startQuiz,
    {
    super.key,
  });
  
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png', width: 300, height: 300,
            color: const Color.fromARGB(145, 255, 255, 255),
          ),
          const SizedBox(height: 80),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
              onPressed: () {
                // navigate to the questions screen
                /*Navigator.push(context, MaterialPageRoute(builder: (context) => const QuestionsScreen()));*/
                startQuiz();
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.transparent),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10))),
              icon: const Icon(
                Icons.arrow_right_alt,
                color: Colors.white,
                size: 25,
              ),
              label: Text(
                'Start Quiz',
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
              ),
              ))
        ],
      ),
    );
  }
}
