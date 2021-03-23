import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content2.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

/*  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  // 1=Mann 2=Frau
  void updateColor(Gender selectedGender) {
    //male card pressed
    if (selectedGender == Gender.male) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    }
    //female card was pressed
    if (selectedGender == Gender.female) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Rechner')),
      ),
      body: Column(children: [
        Expanded(
            child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print('Male Card was pressed');
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
                child: ReusableCard(
                  color: selectedGender == Gender.male
                      ? activeCardColor
                      : inactiveCardColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MANN',
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print('Female Card was pressed');
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                child: ReusableCard(
                  color: selectedGender == Gender.female
                      ? activeCardColor
                      : inactiveCardColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FRAU',
                  ),
                ),
              ),
            ),
          ],
        )),
        Expanded(
          child: ReusableCard(color: activeCardColor),
        ),
        Expanded(
            child: Row(
          children: [
            Expanded(
              child: ReusableCard(color: activeCardColor),
            ),
            Expanded(
              child: ReusableCard(color: activeCardColor),
            ),
          ],
        )),
        Container(
          color: bottomContainerColor,
          margin: EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height: bottomContainerHeight,
          child: Center(child: Text("Berechne")),
        ),
      ]),
    );
  }
}
