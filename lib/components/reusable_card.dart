import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color1, this.customWidget, this.onPressed});

  final Color color1;
  final Widget customWidget;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: customWidget,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color1,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
