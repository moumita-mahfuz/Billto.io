// import 'package:flutter/material.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';
//
// class invoice extends StatelessWidget {
//   const invoice({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Color(0xFFF2F2F2),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           SizedBox(height: 2.5.h),
//           Text(
//             'My Invoices',
//             style: TextStyle(
//               color: Color(0xFF000000),
//               fontSize: 18,
//               fontFamily: 'Montserrat',
//               fontWeight: FontWeight.normal,
//             ),
//           ),
//           SizedBox(height: 5),
//           IntrinsicHeight(
//             child: Container(
//               padding: EdgeInsets.only(top: 3),
//               child: MaterialButton(
//                 minWidth: 90.w,
//                 height: 10.h,
//                 onPressed: () {},
//                 color: Color(0xFFFFFFFF),
//                 elevation: 5,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(5),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 5),
//                       child: Text(
//                         '101000',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 14.sp,
//                           color: Color(0xFF898989),
//                         ),
//                       ),
//                     ),
//                     VerticalDivider(
//                       thickness: 1,
//                       endIndent: 10,
//                       indent: 10,
//                       // width: 30,
//                       color: Color(0xFFCCCCCC),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 5),
//                       child: Text(
//                         '02/21/2022',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 14.sp,
//                           color: Color(0xFF898989),
//                         ),
//                       ),
//                     ),
//                     VerticalDivider(
//                       thickness: 1,
//                       // width: 30,
//                       endIndent: 10,
//                       indent: 10,
//                       color: Color(0xFFCCCCCC),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 5),
//                       child: Text(
//                         'Lumina Dev\nNurjahan Road,\nM...',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 14.sp,
//                           color: Color(0xFF898989),
//                         ),
//                       ),
//                     ),
//                     VerticalDivider(
//                       thickness: 1,
//                       endIndent: 10,
//                       indent: 10,
//                       width: 10,
//                       color: Color(0xFFCCCCCC),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 5),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisSize: MainAxisSize.min,
//                         children: <Widget>[
//                           Text(
//                             '৳ 1,024.00',
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 14.sp,
//                               color: Color(0xFFED1C24),
//                             ),
//                           ),
//                           SizedBox(height: 5),
//                           Text(
//                             '৳ 1,024.00',
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 14.sp,
//                               color: Color(0xFF898989),
//                             ),
//                           ),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//
//               ),
//             ),
//           ),
//           SizedBox(height: 5),
//           IntrinsicHeight(
//             child: Container(
//               padding: EdgeInsets.only(top: 3),
//               child: MaterialButton(
//                 minWidth: 90.w,
//                 height: 10.h,
//                 onPressed: () {},
//                 color: Color(0xFFFFFFFF),
//                 elevation: 5,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(5),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 5),
//                       child: Text(
//                         '101000',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 14.sp,
//                           color: Color(0xFF898989),
//                         ),
//                       ),
//                     ),
//                     VerticalDivider(
//                       thickness: 1,
//                       endIndent: 10,
//                       indent: 10,
//                       // width: 30,
//                       color: Color(0xFFCCCCCC),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 5),
//                       child: Text(
//                         '02/21/2022',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 14.sp,
//                           color: Color(0xFF898989),
//                         ),
//                       ),
//                     ),
//                     VerticalDivider(
//                       thickness: 1,
//                       // width: 30,
//                       endIndent: 10,
//                       indent: 10,
//                       color: Color(0xFFCCCCCC),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 5),
//                       child: Text(
//                         'Lumina Dev\nNurjahan Road,\nM...',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 14.sp,
//                           color: Color(0xFF898989),
//                         ),
//                       ),
//                     ),
//                     VerticalDivider(
//                       thickness: 1,
//                       endIndent: 10,
//                       indent: 10,
//                       width: 10,
//                       color: Color(0xFFCCCCCC),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 5),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisSize: MainAxisSize.min,
//                         children: <Widget>[
//                           Text(
//                             '৳ 1,024.00',
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 14.sp,
//                               color: Color(0xFFED1C24),
//                             ),
//                           ),
//                           SizedBox(height: 5),
//                           Text(
//                             '৳ 1,024.00',
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 14.sp,
//                               color: Color(0xFF898989),
//                             ),
//                           ),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//
//               ),
//             ),
//           ),
//           SizedBox(height: 5),
//           IntrinsicHeight(
//             child: Container(
//               padding: EdgeInsets.only(top: 3),
//               child: MaterialButton(
//                 minWidth: 90.w,
//                 height: 10.h,
//                 onPressed: () {},
//                 color: Color(0xFFFFFFFF),
//                 elevation: 5,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(5),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 5),
//                       child: Text(
//                         '101000',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 14.sp,
//                           color: Color(0xFF898989),
//                         ),
//                       ),
//                     ),
//                     VerticalDivider(
//                       thickness: 1,
//                       endIndent: 10,
//                       indent: 10,
//                       // width: 30,
//                       color: Color(0xFFCCCCCC),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 5),
//                       child: Text(
//                         '02/21/2022',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 14.sp,
//                           color: Color(0xFF898989),
//                         ),
//                       ),
//                     ),
//                     VerticalDivider(
//                       thickness: 1,
//                       // width: 30,
//                       endIndent: 10,
//                       indent: 10,
//                       color: Color(0xFFCCCCCC),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 5),
//                       child: Text(
//                         'Lumina Dev\nNurjahan Road,\nM...',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 14.sp,
//                           color: Color(0xFF898989),
//                         ),
//                       ),
//                     ),
//                     VerticalDivider(
//                       thickness: 1,
//                       endIndent: 10,
//                       indent: 10,
//                       width: 10,
//                       color: Color(0xFFCCCCCC),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 5),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisSize: MainAxisSize.min,
//                         children: <Widget>[
//                           Text(
//                             '৳ 1,024.00',
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 14.sp,
//                               color: Color(0xFFED1C24),
//                             ),
//                           ),
//                           SizedBox(height: 5),
//                           Text(
//                             '৳ 1,024.00',
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 14.sp,
//                               color: Color(0xFF898989),
//                             ),
//                           ),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//
//               ),
//             ),
//           ),
//           SizedBox(height: 5),
//           IntrinsicHeight(
//             child: Container(
//               padding: EdgeInsets.only(top: 3),
//               child: MaterialButton(
//                 minWidth: 90.w,
//                 height: 10.h,
//                 onPressed: () {},
//                 color: Color(0xFFFFFFFF),
//                 elevation: 5,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(5),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 5),
//                       child: Text(
//                         '101000',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 14.sp,
//                           color: Color(0xFF898989),
//                         ),
//                       ),
//                     ),
//                     VerticalDivider(
//                       thickness: 1,
//                       endIndent: 10,
//                       indent: 10,
//                       // width: 30,
//                       color: Color(0xFFCCCCCC),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 5),
//                       child: Text(
//                         '02/21/2022',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 14.sp,
//                           color: Color(0xFF898989),
//                         ),
//                       ),
//                     ),
//                     VerticalDivider(
//                       thickness: 1,
//                       // width: 30,
//                       endIndent: 10,
//                       indent: 10,
//                       color: Color(0xFFCCCCCC),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 5),
//                       child: Text(
//                         'Lumina Dev\nNurjahan Road,\nM...',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 14.sp,
//                           color: Color(0xFF898989),
//                         ),
//                       ),
//                     ),
//                     VerticalDivider(
//                       thickness: 1,
//                       endIndent: 10,
//                       indent: 10,
//                       width: 10,
//                       color: Color(0xFFCCCCCC),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 5),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisSize: MainAxisSize.min,
//                         children: <Widget>[
//                           Text(
//                             '৳ 1,024.00',
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 14.sp,
//                               color: Color(0xFFED1C24),
//                             ),
//                           ),
//                           SizedBox(height: 5),
//                           Text(
//                             '৳ 1,024.00',
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 14.sp,
//                               color: Color(0xFF898989),
//                             ),
//                           ),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//
//               ),
//             ),
//           ),
//
//         ],
//       ),
//     );
//   }
// }

import 'package:billto/screen/Dashboard/widget/list_view_style.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class invoice extends StatelessWidget {
  const invoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF2F2F2),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  'My Invoices',
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            Container(
              child: ListView(
                padding: EdgeInsets.zero,
                // physics: AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                primary: false,
                // scrollDirection: Axis.vertical,
                children: [
                  // SizedBox(height: 2.5.h),
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
            ),
          ],
        ),
      ),
    );
    // child: ListView(
    //   scrollDirection: Axis.vertical,
    //
    //   crossAxisAlignment: CrossAxisAlignment.center,
    //   children: [
    //     SizedBox(height: 2.5.h),
    //     ListStyle(),
    //     ListStyle(),
    //     ListStyle(),
    //     ListStyle(),
    //     ListStyle(),
    //       Text(
    //         'My Invoices',
    //         style: TextStyle(
    //           color: Color(0xFF000000),
    //           fontSize: 18,
    //           fontFamily: 'Montserrat',
    //           fontWeight: FontWeight.normal,
    //         ),
    //       ),
    //   //     // Container(
    //   //     //   child: ListView(
    //   //     //       children: [
    //   //     //         ListStyle(),
    //   //     //       ],
    //   //     //   ),
    //   //     // ),
    //   //     // SizedBox(height: 5),
    //   //     // IntrinsicHeight(
    //   //     //   child: Container(
    //   //     //     padding: EdgeInsets.only(top: 3),
    //   //     //     child: MaterialButton(
    //   //     //       minWidth: 90.w,
    //   //     //       height: 10.h,
    //   //     //       onPressed: () {},
    //   //     //       color: Color(0xFFFFFFFF),
    //   //     //       elevation: 5,
    //   //     //       shape: RoundedRectangleBorder(
    //   //     //         borderRadius: BorderRadius.circular(5),
    //   //     //       ),
    //   //     //       child: Row(
    //   //     //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   //     //         mainAxisSize: MainAxisSize.min,
    //   //     //         children: [
    //   //     //           Padding(
    //   //     //             padding: const EdgeInsets.symmetric(horizontal: 5),
    //   //     //             child: Text(
    //   //     //               '101000',
    //   //     //               style: TextStyle(
    //   //     //                 fontWeight: FontWeight.bold,
    //   //     //                 fontSize: 15.sp,
    //   //     //                 color: Color(0xFF898989),
    //   //     //               ),
    //   //     //             ),
    //   //     //           ),
    //   //     //           VerticalDivider(
    //   //     //             thickness: 1,
    //   //     //             endIndent: 10,
    //   //     //             indent: 10,
    //   //     //             // width: 30,
    //   //     //             color: Color(0xFFCCCCCC),
    //   //     //           ),
    //   //     //           Padding(
    //   //     //             padding: const EdgeInsets.symmetric(horizontal: 5),
    //   //     //             child: Text(
    //   //     //               '02/21/2022',
    //   //     //               style: TextStyle(
    //   //     //                 fontWeight: FontWeight.bold,
    //   //     //                 fontSize: 15.sp,
    //   //     //                 color: Color(0xFF898989),
    //   //     //               ),
    //   //     //             ),
    //   //     //           ),
    //   //     //           VerticalDivider(
    //   //     //             thickness: 1,
    //   //     //             // width: 30,
    //   //     //             endIndent: 10,
    //   //     //             indent: 10,
    //   //     //             color: Color(0xFFCCCCCC),
    //   //     //           ),
    //   //     //           Padding(
    //   //     //             padding: const EdgeInsets.symmetric(horizontal: 5),
    //   //     //             child: Text(
    //   //     //               'Lumina Dev\nNurjahan Road,\nM...',
    //   //     //               style: TextStyle(
    //   //     //                 fontWeight: FontWeight.bold,
    //   //     //                 fontSize: 15.sp,
    //   //     //                 color: Color(0xFF898989),
    //   //     //               ),
    //   //     //             ),
    //   //     //           ),
    //   //     //           VerticalDivider(
    //   //     //             thickness: 1,
    //   //     //             endIndent: 10,
    //   //     //             indent: 10,
    //   //     //             width: 10,
    //   //     //             color: Color(0xFFCCCCCC),
    //   //     //           ),
    //   //     //           Padding(
    //   //     //             padding: const EdgeInsets.symmetric(horizontal: 5),
    //   //     //             child: Column(
    //   //     //               crossAxisAlignment: CrossAxisAlignment.start,
    //   //     //               mainAxisSize: MainAxisSize.min,
    //   //     //               children: <Widget>[
    //   //     //                 Text(
    //   //     //                   '৳ 1,024.00',
    //   //     //                   style: TextStyle(
    //   //     //                     fontWeight: FontWeight.bold,
    //   //     //                     fontSize: 15.sp,
    //   //     //                     color: Color(0xFFED1C24),
    //   //     //                   ),
    //   //     //                 ),
    //   //     //                 SizedBox(height: 5),
    //   //     //                 Text(
    //   //     //                   '৳ 1,024.00',
    //   //     //                   style: TextStyle(
    //   //     //                     fontWeight: FontWeight.bold,
    //   //     //                     fontSize: 15.sp,
    //   //     //                     color: Color(0xFF898989),
    //   //     //                   ),
    //   //     //                 ),
    //   //     //               ],
    //   //     //             ),
    //   //     //           )
    //   //     //         ],
    //   //     //       ),
    //   //     //
    //   //     //     ),
    //   //     //   ),
    //   //     // ),
    //   //     // SizedBox(height: 5),
    //   //     // IntrinsicHeight(
    //   //     //   child: Container(
    //   //     //     padding: EdgeInsets.only(top: 3),
    //   //     //     child: MaterialButton(
    //   //     //       minWidth: 90.w,
    //   //     //       height: 10.h,
    //   //     //       onPressed: () {},
    //   //     //       color: Color(0xFFFFFFFF),
    //   //     //       elevation: 5,
    //   //     //       shape: RoundedRectangleBorder(
    //   //     //         borderRadius: BorderRadius.circular(5),
    //   //     //       ),
    //   //     //       child: Row(
    //   //     //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   //     //         mainAxisSize: MainAxisSize.min,
    //   //     //         children: [
    //   //     //           Padding(
    //   //     //             padding: const EdgeInsets.symmetric(horizontal: 5),
    //   //     //             child: Text(
    //   //     //               '101000',
    //   //     //               style: TextStyle(
    //   //     //                 fontWeight: FontWeight.bold,
    //   //     //                 fontSize: 15.sp,
    //   //     //                 color: Color(0xFF898989),
    //   //     //               ),
    //   //     //             ),
    //   //     //           ),
    //   //     //           VerticalDivider(
    //   //     //             thickness: 1,
    //   //     //             endIndent: 10,
    //   //     //             indent: 10,
    //   //     //             // width: 30,
    //   //     //             color: Color(0xFFCCCCCC),
    //   //     //           ),
    //   //     //           Padding(
    //   //     //             padding: const EdgeInsets.symmetric(horizontal: 5),
    //   //     //             child: Text(
    //   //     //               '02/21/2022',
    //   //     //               style: TextStyle(
    //   //     //                 fontWeight: FontWeight.bold,
    //   //     //                 fontSize: 15.sp,
    //   //     //                 color: Color(0xFF898989),
    //   //     //               ),
    //   //     //             ),
    //   //     //           ),
    //   //     //           VerticalDivider(
    //   //     //             thickness: 1,
    //   //     //             // width: 30,
    //   //     //             endIndent: 10,
    //   //     //             indent: 10,
    //   //     //             color: Color(0xFFCCCCCC),
    //   //     //           ),
    //   //     //           Padding(
    //   //     //             padding: const EdgeInsets.symmetric(horizontal: 5),
    //   //     //             child: Text(
    //   //     //               'Lumina Dev\nNurjahan Road,\nM...',
    //   //     //               style: TextStyle(
    //   //     //                 fontWeight: FontWeight.bold,
    //   //     //                 fontSize: 15.sp,
    //   //     //                 color: Color(0xFF898989),
    //   //     //               ),
    //   //     //             ),
    //   //     //           ),
    //   //     //           VerticalDivider(
    //   //     //             thickness: 1,
    //   //     //             endIndent: 10,
    //   //     //             indent: 10,
    //   //     //             width: 10,
    //   //     //             color: Color(0xFFCCCCCC),
    //   //     //           ),
    //   //     //           Padding(
    //   //     //             padding: const EdgeInsets.symmetric(horizontal: 5),
    //   //     //             child: Column(
    //   //     //               crossAxisAlignment: CrossAxisAlignment.start,
    //   //     //               mainAxisSize: MainAxisSize.min,
    //   //     //               children: <Widget>[
    //   //     //                 Text(
    //   //     //                   '৳ 1,024.00',
    //   //     //                   style: TextStyle(
    //   //     //                     fontWeight: FontWeight.bold,
    //   //     //                     fontSize: 15.sp,
    //   //     //                     color: Color(0xFFED1C24),
    //   //     //                   ),
    //   //     //                 ),
    //   //     //                 SizedBox(height: 5),
    //   //     //                 Text(
    //   //     //                   '৳ 1,024.00',
    //   //     //                   style: TextStyle(
    //   //     //                     fontWeight: FontWeight.bold,
    //   //     //                     fontSize: 15.sp,
    //   //     //                     color: Color(0xFF898989),
    //   //     //                   ),
    //   //     //                 ),
    //   //     //               ],
    //   //     //             ),
    //   //     //           )
    //   //     //         ],
    //   //     //       ),
    //   //     //
    //   //     //     ),
    //   //     //   ),
    //   //     // ),
    //   //     // SizedBox(height: 5),
    //   //     // IntrinsicHeight(
    //   //     //   child: Container(
    //   //     //     padding: EdgeInsets.only(top: 3),
    //   //     //     child: MaterialButton(
    //   //     //       minWidth: 90.w,
    //   //     //       height: 10.h,
    //   //     //       onPressed: () {},
    //   //     //       color: Color(0xFFFFFFFF),
    //   //     //       elevation: 5,
    //   //     //       shape: RoundedRectangleBorder(
    //   //     //         borderRadius: BorderRadius.circular(5),
    //   //     //       ),
    //   //     //       child: Row(
    //   //     //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   //     //         mainAxisSize: MainAxisSize.min,
    //   //     //         children: [
    //   //     //           Padding(
    //   //     //             padding: const EdgeInsets.symmetric(horizontal: 5),
    //   //     //             child: Text(
    //   //     //               '101000',
    //   //     //               style: TextStyle(
    //   //     //                 fontWeight: FontWeight.bold,
    //   //     //                 fontSize: 15.sp,
    //   //     //                 color: Color(0xFF898989),
    //   //     //               ),
    //   //     //             ),
    //   //     //           ),
    //   //     //           VerticalDivider(
    //   //     //             thickness: 1,
    //   //     //             endIndent: 10,
    //   //     //             indent: 10,
    //   //     //             // width: 30,
    //   //     //             color: Color(0xFFCCCCCC),
    //   //     //           ),
    //   //     //           Padding(
    //   //     //             padding: const EdgeInsets.symmetric(horizontal: 5),
    //   //     //             child: Text(
    //   //     //               '02/21/2022',
    //   //     //               style: TextStyle(
    //   //     //                 fontWeight: FontWeight.bold,
    //   //     //                 fontSize: 15.sp,
    //   //     //                 color: Color(0xFF898989),
    //   //     //               ),
    //   //     //             ),
    //   //     //           ),
    //   //     //           VerticalDivider(
    //   //     //             thickness: 1,
    //   //     //             // width: 30,
    //   //     //             endIndent: 10,
    //   //     //             indent: 10,
    //   //     //             color: Color(0xFFCCCCCC),
    //   //     //           ),
    //   //     //           Padding(
    //   //     //             padding: const EdgeInsets.symmetric(horizontal: 5),
    //   //     //             child: Text(
    //   //     //               'Lumina Dev\nNurjahan Road,\nM...',
    //   //     //               style: TextStyle(
    //   //     //                 fontWeight: FontWeight.bold,
    //   //     //                 fontSize: 15.sp,
    //   //     //                 color: Color(0xFF898989),
    //   //     //               ),
    //   //     //             ),
    //   //     //           ),
    //   //     //           VerticalDivider(
    //   //     //             thickness: 1,
    //   //     //             endIndent: 10,
    //   //     //             indent: 10,
    //   //     //             width: 10,
    //   //     //             color: Color(0xFFCCCCCC),
    //   //     //           ),
    //   //     //           Padding(
    //   //     //             padding: const EdgeInsets.symmetric(horizontal: 5),
    //   //     //             child: Column(
    //   //     //               crossAxisAlignment: CrossAxisAlignment.start,
    //   //     //               mainAxisSize: MainAxisSize.min,
    //   //     //               children: <Widget>[
    //   //     //                 Text(
    //   //     //                   '৳ 1,024.00',
    //   //     //                   style: TextStyle(
    //   //     //                     fontWeight: FontWeight.bold,
    //   //     //                     fontSize: 15.sp,
    //   //     //                     color: Color(0xFFED1C24),
    //   //     //                   ),
    //   //     //                 ),
    //   //     //                 SizedBox(height: 5),
    //   //     //                 Text(
    //   //     //                   '৳ 1,024.00',
    //   //     //                   style: TextStyle(
    //   //     //                     fontWeight: FontWeight.bold,
    //   //     //                     fontSize: 15.sp,
    //   //     //                     color: Color(0xFF898989),
    //   //     //                   ),
    //   //     //                 ),
    //   //     //               ],
    //   //     //             ),
    //   //     //           )
    //   //     //         ],
    //   //     //       ),
    //   //     //
    //   //     //     ),
    //   //     //   ),
    //   //     // ),
    //   //     // SizedBox(height: 5),
    //   //     // IntrinsicHeight(
    //   //     //   child: Container(
    //   //     //     padding: EdgeInsets.only(top: 3),
    //   //     //     child: MaterialButton(
    //   //     //       minWidth: 90.w,
    //   //     //       height: 10.h,
    //   //     //       onPressed: () {},
    //   //     //       color: Color(0xFFFFFFFF),
    //   //     //       elevation: 5,
    //   //     //       shape: RoundedRectangleBorder(
    //   //     //         borderRadius: BorderRadius.circular(5),
    //   //     //       ),
    //   //     //       child: Row(
    //   //     //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   //     //         mainAxisSize: MainAxisSize.min,
    //   //     //         children: [
    //   //     //           Padding(
    //   //     //             padding: const EdgeInsets.symmetric(horizontal: 5),
    //   //     //             child: Text(
    //   //     //               '101000',
    //   //     //               style: TextStyle(
    //   //     //                 fontWeight: FontWeight.bold,
    //   //     //                 fontSize: 15.sp,
    //   //     //                 color: Color(0xFF898989),
    //   //     //               ),
    //   //     //             ),
    //   //     //           ),
    //   //     //           VerticalDivider(
    //   //     //             thickness: 1,
    //   //     //             endIndent: 10,
    //   //     //             indent: 10,
    //   //     //             // width: 30,
    //   //     //             color: Color(0xFFCCCCCC),
    //   //     //           ),
    //   //     //           Padding(
    //   //     //             padding: const EdgeInsets.symmetric(horizontal: 5),
    //   //     //             child: Text(
    //   //     //               '02/21/2022',
    //   //     //               style: TextStyle(
    //   //     //                 fontWeight: FontWeight.bold,
    //   //     //                 fontSize: 15.sp,
    //   //     //                 color: Color(0xFF898989),
    //   //     //               ),
    //   //     //             ),
    //   //     //           ),
    //   //     //           VerticalDivider(
    //   //     //             thickness: 1,
    //   //     //             // width: 30,
    //   //     //             endIndent: 10,
    //   //     //             indent: 10,
    //   //     //             color: Color(0xFFCCCCCC),
    //   //     //           ),
    //   //     //           Padding(
    //   //     //             padding: const EdgeInsets.symmetric(horizontal: 5),
    //   //     //             child: Text(
    //   //     //               'Lumina Dev\nNurjahan Road,\nM...',
    //   //     //               style: TextStyle(
    //   //     //                 fontWeight: FontWeight.bold,
    //   //     //                 fontSize: 15.sp,
    //   //     //                 color: Color(0xFF898989),
    //   //     //               ),
    //   //     //             ),
    //   //     //           ),
    //   //     //           VerticalDivider(
    //   //     //             thickness: 1,
    //   //     //             endIndent: 10,
    //   //     //             indent: 10,
    //   //     //             width: 10,
    //   //     //             color: Color(0xFFCCCCCC),
    //   //     //           ),
    //   //     //           Padding(
    //   //     //             padding: const EdgeInsets.symmetric(horizontal: 5),
    //   //     //             child: Column(
    //   //     //               crossAxisAlignment: CrossAxisAlignment.start,
    //   //     //               mainAxisSize: MainAxisSize.min,
    //   //     //               children: <Widget>[
    //   //     //                 Text(
    //   //     //                   '৳ 1,024.00',
    //   //     //                   style: TextStyle(
    //   //     //                     fontWeight: FontWeight.bold,
    //   //     //                     fontSize: 15.sp,
    //   //     //                     color: Color(0xFFED1C24),
    //   //     //                   ),
    //   //     //                 ),
    //   //     //                 SizedBox(height: 5),
    //   //     //                 Text(
    //   //     //                   '৳ 1,024.00',
    //   //     //                   style: TextStyle(
    //   //     //                     fontWeight: FontWeight.bold,
    //   //     //                     fontSize: 15.sp,
    //   //     //                     color: Color(0xFF898989),
    //   //     //                   ),
    //   //     //                 ),
    //   //     //               ],
    //   //     //             ),
    //   //     //           )
    //   //     //         ],
    //   //     //       ),
    //   //     //
    //   //     //     ),
    //   //     //   ),
    //   //     // ),
    //   //   ],
    //   // ),
    // );
  }
}
