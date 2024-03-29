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
        Image.asset('assets/images/quiz-logo.png', width: 300, height: 300),
        const SizedBox(height: 30),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        const SizedBox(height: 30),
        OutlinedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10))),
            child: const Text(
              'Start Quiz',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ))
      ],
    );
  }
}
