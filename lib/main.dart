import 'package:bmiapps/bmiscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const bmiapp());
}

class bmiapp extends StatelessWidget {
  const bmiapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI APP",
      home: bmiscreen(),
    );
  }
}
