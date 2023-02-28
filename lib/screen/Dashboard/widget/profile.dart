import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class profilewidget extends StatelessWidget {
  const profilewidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double mWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.fromLTRB(7.5.w, 0, 0, 0),
      height: 5.h,
      width: mWidth,
      decoration: BoxDecoration(
        color: Color(0xFFF2F2F2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                child: Image.asset(
                  'assets/images/wid_logo.png',
                  height: 10.h,
                ),
              ),
              SizedBox(width: 10),
              Container(
                child: RichText(
                  text: TextSpan(
                    text: "Women In Digital \n",
                    style: TextStyle(
                      height: 1.171875,
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF686868),
                    ),
                    children: [
                      TextSpan(
                        text: '01710000000',
                        style: TextStyle(
                          height: 1.171875,
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFFFB317),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
