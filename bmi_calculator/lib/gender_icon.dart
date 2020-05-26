import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  final Icon icon;
  final Text text;
  GenderCard({this.icon, this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        SizedBox(
          height: 15,
        ),
        text,
      ],
    );
  }
}
