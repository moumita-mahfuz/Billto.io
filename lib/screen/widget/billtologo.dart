import 'package:flutter/material.dart';

/* Rectangle banner 1
    Autogenerated by FlutLab FTF Generator
  */
class BilltoLogo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double mHeight = MediaQuery.of(context).size.height;
    double mWidth = MediaQuery.of(context).size.width;
    // print( mHeight);
    // print(mWidth);
    return Container(
      width: mWidth,
      padding: EdgeInsets.fromLTRB(0, mHeight * (3/100), 0, mHeight * (3/100)),
      child: Image.asset(
        "assets/images/bill-to-logo.png",
        color: null,
        colorBlendMode: BlendMode.dstATop,
      ),
    );
  }
}