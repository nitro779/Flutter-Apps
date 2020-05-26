import 'package:flutter/material.dart';
import 'constants.dart';
import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {
  final String result;
  final String suggestion;
  final String bmi_val;
  ResultsPage({this.result, this.bmi_val, this.suggestion});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Your Result',
                style: lableTextStyle,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                Text(
                  result.toUpperCase(),
                  style: resultStyle,
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  bmi_val.toString(),
                  style: kResultTextStyle,
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  suggestion,
                  style: bmiStringStyle,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          Container(
            color: bottomBarColor,
            margin: EdgeInsets.all(15),
            height: 80,
            width: double.infinity,
            child: FlatButton(
              child: Text('RECALCULATE'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          )
        ],
      ),
    );
  }
}
