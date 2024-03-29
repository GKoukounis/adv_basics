import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png', width: 300, height: 300,
          color: const Color.fromARGB(145, 255, 255, 255),
        ),
        const SizedBox(height: 80),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        const SizedBox(height: 30),
        OutlinedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/quiz');
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
            label: const Text(
              'Start Quiz',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ))
      ],
    );
  }
}
