import 'package:bmicalculator/input_page.dart';
import 'dart:math';

class BmiCalcultorBrain {
  BmiCalcultorBrain({this.height, this.weight, this.age, this.gender});

  double _bmi;
  int height, weight, age;
  Gender gender;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    print(_bmi);
    return gender == Gender.MALE
        ? (_bmi <= 18.5
            ? "Under Weight"
            : _bmi <= 23 ? "Normal" : "Over Weight")
        : (_bmi <= 19.5
            ? "Under Weight"
            : _bmi <= 24 ? "Normal" : "Over Weight");
  }

  String getBMI() {
    return _bmi.toStringAsFixed(1);
  }

  double getBMIval() {
    return _bmi;
  }

  String getSuggestion(double bmi) {
    if (bmi < 18.5) {
      return "Eat More and Drink Water Regularly";
    } else if (bmi <= 24) {
      return "Keep it up You are in Perfect Condition!!!";
    } else {
      return "Go to Gym regularly and do Some Excercises... You will be all right";
    }
  }
}
