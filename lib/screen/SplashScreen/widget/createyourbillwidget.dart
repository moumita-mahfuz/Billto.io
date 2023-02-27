import 'package:flutter/material.dart';

class CreateYourBillWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        overflow: TextOverflow.visible,
        textAlign: TextAlign.center,
        text: const TextSpan(
          style: TextStyle(
            height: 1.171875,
            fontSize: 18.0,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 0, 0, 0),

            /* letterSpacing: 0.0, */
          ),
          children: [
            TextSpan(
              text: '''QUICK AND EFFICIENT WAY TO
CREATE YOUR BILL''',
              // style: TextStyle(
              //
              //   // letterSpacing: null,
              // ),
            )
          ],
        ),
      ),
    );
  }
}
