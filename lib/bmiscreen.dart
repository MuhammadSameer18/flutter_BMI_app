import 'package:flutter/material.dart';

class bmiscreen extends StatefulWidget {
  const bmiscreen({super.key});

  @override
  State<bmiscreen> createState() => _bmiscreenState();
}

class _bmiscreenState extends State<bmiscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI APP",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
