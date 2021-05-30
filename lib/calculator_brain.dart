import 'dart:math';

class CalculateBrain {
  CalculateBrain({this.height, this.weight});

  final int? height;
  final int? weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight! / pow(height! / 100, 2); // "!" is a null-checker.
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have heigher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job.';
    } else {
      return 'You have a lower than normal body weight. You can eat bit more.';
    }
  }
}
