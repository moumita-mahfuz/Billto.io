import 'package:flutter/material.dart';


class BannerWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double mHeight = MediaQuery.of(context).size.height;
    final double mWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.fromLTRB((mWidth*10)/100, 0, (mWidth*10)/100, 0),
      child: ClipRRect(
        borderRadius: BorderRadius.zero,
        child: Image.asset(
          "assets/images/banner1.png",
          color: null,
          fit: BoxFit.cover,
          //width: mWidth,
          //height: (mHeight*40)/100,
          colorBlendMode: BlendMode.dstATop,
        ),
      ),
    );
  }
}