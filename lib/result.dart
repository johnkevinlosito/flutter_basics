import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback restartQuiz;

  const Result(this.resultScore, this.restartQuiz, {Key? key})
      : super(key: key);

  String get resultPhrase {
    String resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 16) {
      resultText = 'Pretty likable!';
    } else {
      resultText = 'You are strange!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: restartQuiz,
            child: const Text(
              'Restart Quiz!',
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
