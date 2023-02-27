import 'package:flutter/material.dart';

class GeneratedLoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.black,
        ),
        child: const Text(
          'Log in',
          overflow: TextOverflow.visible,
          textAlign: TextAlign.center,
          style: TextStyle(
           // height: 1.171875,
            fontSize: 14.0,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 0, 0, 0),
            decoration: TextDecoration.underline,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
