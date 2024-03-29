import 'package:adv_basics/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromARGB(255, 57, 0, 155), Color.fromARGB(255, 47, 0, 55)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
            ),
            child: const Center(
              child: HomePage(),
            ),
          )),
    ),
  );
}
