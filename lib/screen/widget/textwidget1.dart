import 'package:flutter/material.dart';


class TextWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        "Create Bill",
        overflow: TextOverflow.visible,
        textAlign: TextAlign.left,
        style: TextStyle(
          height: 1.171875,
          fontSize: 21.0,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          color: Color(0xFFFFB317),
        ),
      ),
    );
  }
}
