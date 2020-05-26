import 'package:bmicalculator/results_page.dart';
import 'package:bmicalculator/route_generator.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0321),
        scaffoldBackgroundColor: Color(0xFF0A0321),
      ),
      home: InputPage(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
