import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  final String title;
  final Function function;
  BottomButton({@required this.title, @required this.function});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function(),
      child: Container(
        color: bottomBarColor,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(15),
        width: double.infinity,
        height: 80,
        child: Center(
          child: Text(
            title,
            style: kBottomButtonStyle,
          ),
        ),
      ),
    );
  }
}
