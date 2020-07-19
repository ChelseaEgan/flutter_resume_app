import 'package:flutter/material.dart';
import 'package:project3/models/answer.dart';
import 'package:project3/styles.dart';
import '../content.dart';

class Predictor extends StatefulWidget {
  @override
  _PredictorState createState() => _PredictorState();
}

class _PredictorState extends State<Predictor> {
  final answer = Answer(numberOfAnswers: ANSWERS.length);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            headlineText(context, PREDICTOR_TITLE),
            answerPrompt(context),
            headlineText(context, ANSWERS[answer.currentValue]),
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
        child: Text(PREDICTOR_PROMPT,
            style: Theme.of(context).textTheme.headline5),
      );
}
