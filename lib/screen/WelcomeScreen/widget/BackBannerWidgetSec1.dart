import 'package:flutter/material.dart';

class BackBannerWidgetSec1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double mHeight = MediaQuery.of(context).size.height;
    double mWidth = MediaQuery.of(context).size.width;
    return Opacity(
      opacity: 0.5,
      child: ClipRRect(
        borderRadius: BorderRadius.zero,
        child: Image.asset(
          "assets/images/back_banner.png",
          color: null,
          fit: BoxFit.cover,
          width: mWidth,
          height: (mHeight*40)/100,
          colorBlendMode: BlendMode.dstATop,
        ),
      ),
    );
  }
}
