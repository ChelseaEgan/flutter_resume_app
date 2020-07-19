import 'package:flutter/material.dart';
import 'package:project3/models/answer.dart';
import 'package:project3/styles.dart';

class Predictor extends StatefulWidget {
  static const answers = [
    'As I see it, yes',
    'Ask again later',
    'Better not tell you now',
    'Cannot predict now',
    'Concentrate and ask again',
    'Don\'t count on it',
    'It is certain',
    'It is decidedly so',
  ];

  @override
  _PredictorState createState() => _PredictorState();
}

class _PredictorState extends State<Predictor> {
  final answer = Answer(numberOfAnswers: Predictor.answers.length);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            headlineText(context, 'Call me... Maybe?'),
            answerPrompt(context),
            headlineText(context, Predictor.answers[answer.currentValue]),
          ],
        ),
      ),
    ));
  }

  Widget headlineText(BuildContext context, String content) =>
      Text(content, style: Styles.headerXLarge, textAlign: TextAlign.center);

  Widget answerPrompt(BuildContext context) => GestureDetector(
        onTap: () {
          setState(() {
            answer.roll();
          });
        },
        child: Text('Ask a question... tap for the answer',
            style: Theme.of(context).textTheme.headline5),
      );
}
