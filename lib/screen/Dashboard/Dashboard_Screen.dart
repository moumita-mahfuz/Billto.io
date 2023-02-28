import 'package:billto/screen/Dashboard/widget/invoice.dart';
import 'package:billto/screen/Dashboard/widget/profile.dart';
import 'package:billto/screen/Dashboard/widget/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../WelcomeScreen/widget/billtologo.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenScaler scaler = ScreenScaler()..init(context);
    double mHeight = MediaQuery.of(context).size.height;
    double mWidth = MediaQuery.of(context).size.width;
    double h = mHeight * (1/100);
    return Material(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SingleChildScrollView(
              primary: false,
              // scrollDirection: Axis.vertical,
              child: Container(
                height: MediaQuery.of(context).size.height+mHeight,
                child: Center(
                  child: Stack(
                    clipBehavior: Clip.none,
                    fit: StackFit.expand,
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      Positioned(
                        top: 4.h,
                        width: mWidth,
                        height: 15.h,
                        child: BilltoLogo(),
                      ),
                      Positioned(
                        top: 20.h,
                        width: mWidth,
                        height: 7.5.h,
                        child: profilewidget(),
                      ),
                      Positioned(
                        top: 27.5.h,
                        width: mWidth,
                        height: 50.h,
                        child: service(),
                      ),
                      Positioned(
                        top: 74.h,
                        width: mWidth,
                        height: mHeight.h,

                        child: invoice(),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
