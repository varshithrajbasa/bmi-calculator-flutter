import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 70.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);
const inactiveColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color1: activeCardColor,
                    customWidget: GestureDetector(
                      child: IconContent(
                          icon: FontAwesomeIcons.mars, label: 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color1: activeCardColor,
                    customWidget: GestureDetector(
                      child: IconContent(
                          icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(color1: activeCardColor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color1: activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(color1: activeCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color1, this.customWidget});

  final Color color1;
  final Widget customWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: customWidget,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color1,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
