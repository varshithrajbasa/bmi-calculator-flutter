import 'package:flutter/material.dart';

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
