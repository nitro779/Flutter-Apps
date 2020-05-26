import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color lableColor = Color(0xff8d8E98);
const lableStyle = TextStyle(
  color: lableColor,
  fontSize: 18,
);

const valueStyle = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.bold,
);

class HeightWeightIcon extends StatelessWidget {
  final String title;
  final int value;
  final Function action1;
  final Function action2;
  HeightWeightIcon(
      {@required this.title, @required this.value, this.action1, this.action2});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "$title",
          style: lableStyle,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "$value",
          style: valueStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RoundIconButton(
              icon: Icon(FontAwesomeIcons.minus),
              function: action1,
            ),
            RoundIconButton(
              icon: Icon(FontAwesomeIcons.plus),
              function: action2,
            )
          ],
        ),
      ],
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final Widget icon;
  final Function function;
  RoundIconButton({@required this.icon, this.function});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      shape: CircleBorder(),
      child: icon,
      onPressed: () {
        function();
      },
      constraints: BoxConstraints.tightFor(
        height: 58,
        width: 58,
      ),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
