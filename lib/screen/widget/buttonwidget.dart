import 'dart:ui';

import 'package:billto/screen/SignUpScreen/Sign_UP_Screen.dart';
// import 'package:billto/screen/SignUpScreen/sign_up_screen_test.dart';
import 'package:flutter/material.dart';


class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double mHeight = MediaQuery.of(context).size.height;
    double mWidth = MediaQuery.of(context).size.width;
    return Container(
      width: mWidth/2,
      height: mHeight * (7 / 100),
      //color: Colors.deepOrange,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SignUpPage(),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          textStyle: TextStyle(fontSize: 24),
          primary: Color(0xFFFFB317),
          onPrimary: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
        child: const Text(
          'Get Stared',
          style: TextStyle(
            fontFamily: 'Montserrat',
          ),
        ),
      ),
    );
  }
}

// Widget build(BuildContext context) {
//   return Scaffold(
//     body: Center(
//       child: Padding(
//         padding: EdgeInsets.all(30),
//         child: ElevatedButton(
//           onPressed: () {},
//           style: ElevatedButton.styleFrom(
//             shape: new RoundedRectangleBorder(
//               // textStyle: TextStyle(fontSize: 24),
//               // primary: Color(0xFFFFB317),
//               // onPrimary: Colors.white,
//               borderRadius: new BorderRadius.circular(30.0),
//             ),
//           ),
//           child: Text(
//             'Get Stared',
//             style: TextStyle(
//               fontFamily: 'Montserrat',
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }
