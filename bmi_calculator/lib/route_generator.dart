import 'package:bmicalculator/main.dart';
import 'package:bmicalculator/results_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => BMICalculator());
      case '/result':
        if (args is Map) {
          return MaterialPageRoute(
              builder: (_) => ResultsPage(
                    result: args['result'],
                    suggestion: args['suggestion'],
                    bmi_val: args['bmi_val'],
                  ));
        }
    }
  }
}
