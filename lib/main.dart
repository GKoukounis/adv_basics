import 'package:adv_basics/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.purple,
          body: Center(
            child: HomePage(),
          )),
    ),
  );
}
