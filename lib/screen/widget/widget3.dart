import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Widget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // double mHeight = MediaQuery.of(context).size.height;
    double mWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.fromLTRB((mWidth * 5) / 100, 0, (mWidth * 5) / 100, 0),
      child: const AutoSizeText("100+ Free Invoice Templates\nPrint & Email Invoices",
        overflow: TextOverflow.visible,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 21,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
        maxLines: 2,
      ),
    );
//     return Align(
//      // alignment: Alignment.center,
//       child: Text(
//         '''100+ Free Invoice Templates
// Print & Email Invoices''',
//         overflow: TextOverflow.visible,
//         textAlign: TextAlign.center,
//         style: TextStyle(
//           height: 1.171875,
//           fontSize: 21.0,
//           fontFamily: 'Montserrat',
//           fontWeight: FontWeight.w600,
//           color: Color.fromARGB(255, 0, 0, 0),
//         ),
//       ),
//     );
  }
}
