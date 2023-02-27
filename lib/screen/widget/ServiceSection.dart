import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ServiceSection extends StatelessWidget {
  //const ServiceSection({Key? key}) : super(key: key);

  Widget _serviceCard(double mHeight, double mWidth, String image,
      String bigText, String smallText) {
    return Container(
      padding: EdgeInsets.only(top: mHeight * (2 / 100)),
      decoration: BoxDecoration(
          //  color: Colors.amber,
          // border: Border.all(color: Colors.blueAccent)
      ),
      child: Center(
        child: Column(
          children: [
            Container(
              width: mWidth * (32 / 100),
              height: 80.0,
              // padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
              //padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    image,
                  ),
                ),
                color: Color(0xFFF2F2F2),
                border: Border.all(
                  color: Color(0xFFCCCCCC),
                ),
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(height: 5),
            Text(
              bigText,
              style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                color: Color(0xFFFFB317),
              ),
            ),
            SizedBox(height: 5),
            AutoSizeText(
              smallText,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12.0,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double mWidth = MediaQuery.of(context).size.width;
    double mHeight = MediaQuery.of(context).size.height;
    double ellipseHeight = mHeight * (25 / 100);
    return Container(
      height: ellipseHeight,
      width: mWidth,
      padding: EdgeInsets.only(top: mHeight * (2 / 100)),
      decoration: BoxDecoration(
          //color: Colors.red,
          //border: Border.all(color: Colors.blueAccent)
          ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _serviceCard(mHeight, mWidth, 'assets/images/billlogo.png',
                'Create Bill', "Choose from\n20 templates"),
            _serviceCard(mHeight, mWidth, 'assets/images/documentlogo.png',
                'Send PDF', 'Email or print\nyour invoice'),
            _serviceCard(mHeight, mWidth, 'assets/images/grouplogo.png',
                'Get Paid', "Receive money\nin accounts"),
            // Container(
            //   padding: EdgeInsets.only(top: mHeight * (2 / 100)),
            //   decoration: BoxDecoration(
            //       //  color: Colors.amber,
            //       border: Border.all(color: Colors.blueAccent)),
            //   child: Center(
            //     child: Column(
            //       children: [
            //         Container(
            //           width: mWidth * (32 / 100),
            //           height: 80.0,
            //           // padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
            //           //padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            //           decoration: BoxDecoration(
            //             image: const DecorationImage(
            //               image: AssetImage(
            //                 'assets/images/billlogo.png',
            //               ),
            //             ),
            //             color: Colors.white,
            //             border: Border.all(
            //               color: Color(0xFFCCCCCC),
            //             ),
            //             shape: BoxShape.circle,
            //           ),
            //         ),
            //         SizedBox(height: 5),
            //         const Text(
            //           'Create Bill',
            //           style: TextStyle(
            //             fontSize: 18.0,
            //             fontFamily: 'Montserrat',
            //             fontWeight: FontWeight.w400,
            //             color: Color(0xFFFFB317),
            //           ),
            //         ),
            //         SizedBox(height: 5),
            //         const AutoSizeText(
            //           "Choose from\n20 templates",
            //           textAlign: TextAlign.center,
            //           style: TextStyle(
            //             fontSize: 12.0,
            //             fontFamily: 'Montserrat',
            //             fontWeight: FontWeight.w400,
            //             color: Colors.black,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
//             Container(
//               padding: EdgeInsets.only(top: mHeight * (2 / 100)),
//               decoration:
//                   BoxDecoration(border: Border.all(color: Colors.blueAccent)),
//               child: Column(
//                 children: [
//                   Container(
//                     width: mWidth * (32 / 100),
//                     height: 80.0,
//                     decoration: new BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage(
//                           'assets/images/documentlogo.png',
//                         ),
//                       ),
//                       color: Color(0xFFF2F2F2),
//                       border: Border.all(
//                         color: Color(0xFFCCCCCC),
//                       ),
//                       shape: BoxShape.circle,
//                     ),
//                   ),
//                   SizedBox(height: 5),
//                   Text(
//                     'Send PDF',
//                     style: TextStyle(
//                       fontSize: 18.0,
//                       fontFamily: 'Montserrat',
//                       fontWeight: FontWeight.w400,
//                       color: Color(0xFFFFB317),
//                     ),
//                   ),
//                   SizedBox(height: 5),
//                   Text(
//                     '''Email or print
// your invoice''',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       // height: 1.171875,
//                       fontSize: 12.0,
//                       fontFamily: 'Montserrat',
//                       fontWeight: FontWeight.w400,
//                       color: Color.fromARGB(255, 0, 0, 0),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.only(top: mHeight * (2 / 100)),
//               decoration:
//                   BoxDecoration(border: Border.all(color: Colors.blueAccent)),
//               child: Column(
//                 children: [
//                   Container(
//                     width: mWidth * (32 / 100),
//                     height: 80.0,
//                     decoration: new BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage(
//                           'assets/images/grouplogo.png',
//                         ),
//                       ),
//                       color: Color(0xFFF2F2F2),
//                       border: Border.all(
//                         color: Color(0xFFCCCCCC),
//                       ),
//                       shape: BoxShape.circle,
//                     ),
//                   ),
//                   SizedBox(height: 5),
//                   Text(
//                     'Get Paid',
//                     style: TextStyle(
//                       fontSize: 18.0,
//                       fontFamily: 'Montserrat',
//                       fontWeight: FontWeight.w400,
//                       color: Color(0xFFFFB317),
//                     ),
//                   ),
//                   SizedBox(height: 5),
//                   Text(
//                     "Receive money\nin accounts",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       // height: 1.171875,
//                       fontSize: 12.0,
//                       fontFamily: 'Montserrat',
//                       fontWeight: FontWeight.w400,
//                       color: Color.fromARGB(255, 0, 0, 0),
//                     ),
//                   ),
//                 ],
//               ),
//             )

            // Padding(
            //   padding: const EdgeInsets.all(5.0),
            //
            // ),
//           Padding(
//             padding: const EdgeInsets.all(5.0),
//             child: Column(
//               children: [
//                 Container(
//                   width: 80.0,
//                   height: 80.0,
//                   decoration: new BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage(
//                         'assets/images/documentlogo.png',
//                       ),
//                     ),
//                     color: Color(0xFFF2F2F2),
//                     border: Border.all(
//                       color: Color(0xFFCCCCCC),
//                     ),
//                     shape: BoxShape.circle,
//                   ),
//                 ),
//                 SizedBox(height: 5),
//                 Text(
//                   'Send PDF',
//                   style: TextStyle(
//                     fontSize: 18.0,
//                     fontFamily: 'Montserrat',
//                     fontWeight: FontWeight.w400,
//                     color: Color(0xFFFFB317),
//                   ),
//                 ),
//                 SizedBox(height: 5),
//                 Text(
//                   '''Email or print
// your invoice''',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     // height: 1.171875,
//                     fontSize: 12.0,
//                     fontFamily: 'Montserrat',
//                     fontWeight: FontWeight.w400,
//                     color: Color.fromARGB(255, 0, 0, 0),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(5.0),
//             child: Column(
//               children: [
//                 Container(
//                   width: 80.0,
//                   height: 80.0,
//                   decoration: new BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage(
//                         'assets/images/grouplogo.png',
//                       ),
//                     ),
//                     color: Color(0xFFF2F2F2),
//                     border: Border.all(
//                       color: Color(0xFFCCCCCC),
//                     ),
//                     shape: BoxShape.circle,
//                   ),
//                 ),
//                 SizedBox(height: 5),
//                 Text(
//                   'Get Paid',
//                   style: TextStyle(
//                     fontSize: 18.0,
//                     fontFamily: 'Montserrat',
//                     fontWeight: FontWeight.w400,
//                     color: Color(0xFFFFB317),
//                   ),
//                 ),
//                 SizedBox(height: 5),
//                 Text(
//                   '''Receive payment
// in accounts''',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//
//                     // height: 1.171875,
//                     fontSize: 12.0,
//                     fontFamily: 'Montserrat',
//                     fontWeight: FontWeight.w400,
//                     color: Color.fromARGB(255, 0, 0, 0),
//                   ),
//                  ),
//               ],
//             ),
//           ),
          ],
        ),
      ),
    );
  }
}
