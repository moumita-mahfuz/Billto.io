import 'package:billto/screen/firstscreen/widgets/BackBannerWidgetSec1.dart';
import 'package:billto/screen/firstscreen/widgets/bannerwidget2.dart';
import 'package:billto/screen/firstscreen/widgets/widget3.dart';
import 'package:flutter/material.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';

class BannerWidget5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double mHeight = MediaQuery.of(context).size.height;
    double mWidth = MediaQuery.of(context).size.width;
    double bottomPadding = (mHeight * 3) / 100;
    return ClipRRect(
      borderRadius: BorderRadius.zero,
      child: Container(
        height: (mHeight * 50) / 100,
        width: mWidth,
        child: Stack(
          clipBehavior: Clip.none,
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Positioned(
              top: null,
              bottom: null,
              width: mWidth,
              // height: 340.0,
              child: BackBannerWidgetSec1(),
            ),
            Positioned(
              bottom: bottomPadding,
              width: mWidth,
              // width: size,
              // height: 256.0,

              child: BannerWidget2(),
            ),
            Positioned(
              top: 9.0,
              width: mWidth,
              child: Widget3(),
            ),
          ],
        ),

        // child: RowSuper(
        //   innerDistance: -mWidth,
        //   fill: true,
        //   // mainAxisSize: MainAxisSize.max,
        //   alignment: Alignment.center,
        //
        //   children: [
        //     Bannerback1Widget(),
        //     Positioned(
        //       bottom: bottomPadding,
        //       // width: 326.0,
        //       // width: size,
        //       // height: 256.0,
        //       child: BannerWidget2(),
        //     ),
        //     Widget3(),
        //   ],
        // ),
      ),
    );
  }
}
