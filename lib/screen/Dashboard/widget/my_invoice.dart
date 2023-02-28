import 'dart:collection';

import 'package:billto/screen/Dashboard/widget/list_view_style.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

// class MyInvoice extends StatelessWidget {
//   const MyInvoice({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     // return SingleChildScrollView(
//     //   child: Container(
//     return Container(
//       decoration: BoxDecoration(
//         color: Color(0xFFF2F2F2),
//       ),
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 15),
//                 child: Text(
//                   'My Invoices',
//                   style: TextStyle(
//                     color: Color(0xFF000000),
//                     fontSize: 18,
//                     fontFamily: 'Montserrat',
//                     fontWeight: FontWeight.normal,
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               child: ListView(
//                 physics: AlwaysScrollableScrollPhysics(),
//                 shrinkWrap: true,
//                 primary: false,
//                 scrollDirection: Axis.vertical,
//                 children: [
//                   // SizedBox(height: 2.5.h),
//                   ListStyle(),
//                   ListStyle(),
//                   ListStyle(),
//                   ListStyle(),
//                   ListStyle(),
//                   ListStyle(),
//                   ListStyle(),
//                   ListStyle(),
//                   ListStyle(),
//                   ListStyle(),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class MyInvoice extends StatelessWidget {
  const MyInvoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
          children: [
            ListStyle(),
            ListStyle(),
            ListStyle(),
            ListStyle(),
            ListStyle(),
            ListStyle(),
            ListStyle(),
            ListStyle(),
            ListStyle(),
            ListStyle(),
            ListStyle(),
            ListStyle(),
            ListStyle(),
            ListStyle(),
            ListStyle(),
            ListStyle(),
            ListStyle(),
            ListStyle(),
            ListStyle(),
            ListStyle(),
          ],
        ),
    );
  }
}

