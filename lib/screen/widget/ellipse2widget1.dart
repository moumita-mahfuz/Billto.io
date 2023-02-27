// import 'package:flutter/material.dart';
//
// class GeneratedEllipse2Widget3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.zero,
//       child: Container(
//         width: 428.0,
//         height: 335.0,
//         child: Stack(
//           clipBehavior: Clip.none,
//           fit: StackFit.expand,
//           alignment: Alignment.center,
//           children: [
//             Positioned(
//               width: 80.0,
//               height: 80.0,
//               child: EllipsbackWidget(),
//             ),
//             Positioned(
//               width: 48.0,
//               height: 48.0,
//               child: ellipseWidget2(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class EllipsbackWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: ClipOval(
//         child: Image.asset(
//           "assets/images/Ellipse 2.png",
//           color: null,
//           fit: BoxFit.cover,
//           width: 80,
//           height: 80,
//           colorBlendMode: BlendMode.dstATop,
//         ),
//       ),
//     );
//   }
// }
//
// class ellipseWidget2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: ClipRRect(
//         borderRadius: BorderRadius.zero,
//         child: Image.asset(
//           "assets/images/billlogo.png",
//           color: null,
//           fit: BoxFit.cover,
//           colorBlendMode: BlendMode.dstATop,
//         ),
//       ),
//     );
//   }
// }
//
// class TextWidget1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.center,
//       child: Text(
//         "Create Bill",
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
//   }
// }

import 'dart:ui';

import 'package:flutter/material.dart';

class GeneratedEllipse2Widget3 extends StatelessWidget {
  const GeneratedEllipse2Widget3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    double circleRadius = (size / 3) / 2 - 12;
    return Container(
      width: size,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: new BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/billlogo.png',
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
                  'Create Bill',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFB317),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  '''Choose from 
20 templates''',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: new BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/documentlogo.png',
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
                  'Send PDF',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFB317),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  '''Email or print 
your invoice''',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    // height: 1.171875,
                    fontSize: 10.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: new BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/grouplogo.png',
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
                  'Get Paid',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFB317),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  '''Receive payment
in accounts''',
                  textAlign: TextAlign.center,
                  style: TextStyle(

                    // height: 1.171875,
                    fontSize: 12.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
