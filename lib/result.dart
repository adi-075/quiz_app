import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are Awesome!';
    } else if (resultScore <= 12) {
      resultText = 'You are Likeable!';
    } else if (resultScore <= 16) {
      resultText = 'Ypu are ... strange?!';
    } else {
      resultText = "You are bad!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhase,
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
