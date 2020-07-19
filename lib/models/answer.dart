import 'dart:math';

class Answer {
  final random = Random();
  final int numberOfAnswers;
  int _currentValue;

  Answer({this.numberOfAnswers = 8}) {
    _currentValue = randomIndex;
  }

  void roll() {
    _currentValue = randomIndex;
  }

  int get currentValue => _currentValue;

  int get randomIndex => random.nextInt(numberOfAnswers);
}
