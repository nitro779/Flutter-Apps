import 'package:bmicalculator/height_weight_icon.dart';
import 'package:bmicalculator/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'gender_icon.dart';
import 'constants.dart';
import 'bmi_calculator_brain.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender { MALE, FEMALE }

class _InputPageState extends State<InputPage> {
  var selectedGender;
  int height = 120;
  int weight = 60;
  int age = 26;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      color: selectedGender == Gender.MALE
                          ? reusableCardColor
                          : inactiveCardColor,
                      cardChild: GenderCard(
                          icon: Icon(
                            FontAwesomeIcons.mars,
                            size: 90,
                          ),
                          text: Text(
                            "MALE",
                            style: lableTextStyle,
                          )),
                      function: () {
                        setState(() {
                          selectedGender = Gender.MALE;
                        });
                      }),
                ),
                Expanded(
                  child: ReusableCard(
                    color: selectedGender == Gender.FEMALE
                        ? reusableCardColor
                        : inactiveCardColor,
                    cardChild: GenderCard(
                        icon: Icon(
                          FontAwesomeIcons.venus,
                          size: 90,
                        ),
                        text: Text(
                          "FEMALE",
                          style: lableTextStyle,
                        )),
                    function: () {
                      setState(() {
                        selectedGender = Gender.FEMALE;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: reusableCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Height",
                    style: lableTextStyle,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "$height",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "cm",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 24),
                      overlayColor: Color(0xFFEB1555).withAlpha(0x29),
                    ),
                    child: Slider(
                      min: 0,
                      max: 300,
                      divisions: 300,
                      value: height.toDouble(),
                      onChanged: (val) {
                        setState(() {
                          height = val.round();
                        });
                      },
                      inactiveColor: Colors.grey.shade600,
                      autofocus: false,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: reusableCardColor,
                    cardChild: HeightWeightIcon(
                        title: "Weight",
                        value: weight,
                        action1: () {
                          setState(() {
                            weight = weight != 0 ? weight - 1 : weight;
                          });
                        },
                        action2: () {
                          setState(() {
                            weight = weight + 1;
                          });
                        }),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: reusableCardColor,
                    cardChild: HeightWeightIcon(
                        title: "Age",
                        value: age,
                        action1: () {
                          setState(() {
                            age = age != 0 ? age - 1 : age;
                          });
                        },
                        action2: () {
                          setState(() {
                            age = age + 1;
                          });
                        }),
                  ),
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
              child: Text('Calculate'),
              onPressed: () {
                var bmiBrain = BmiCalcultorBrain(
                    height: height,
                    weight: weight,
                    age: age,
                    gender: selectedGender);
                String result = bmiBrain.calculateBMI();
                String bmi = bmiBrain.getBMI();
                String suggestion =
                    bmiBrain.getSuggestion(bmiBrain.getBMIval());
                Navigator.of(context).pushNamed('/result', arguments: {
                  'result': result,
                  'suggestion': suggestion,
                  'bmi_val': bmi
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
