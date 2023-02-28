import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ListStyle extends StatelessWidget {
  const ListStyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IntrinsicHeight(
              child: Container(
                padding: EdgeInsets.only(top: 3),
                child: MaterialButton(
                  minWidth: 90.w,
                  height: 10.h,
                  onPressed: () {},
                  color: Color(0xFFFFFFFF),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          '101000',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                            color: Color(0xFF898989),
                          ),
                        ),
                      ),
                      VerticalDivider(
                        thickness: 1,
                        endIndent: 10,
                        indent: 10,
                        // width: 30,
                        color: Color(0xFFCCCCCC),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          '02/21/2022',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                            color: Color(0xFF898989),
                          ),
                        ),
                      ),
                      VerticalDivider(
                        thickness: 1,
                        // width: 30,
                        endIndent: 10,
                        indent: 10,
                        color: Color(0xFFCCCCCC),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          'Lumina Dev\nNurjahan Road,\nM...',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                            color: Color(0xFF898989),
                          ),
                        ),
                      ),
                      VerticalDivider(
                        thickness: 1,
                        endIndent: 10,
                        indent: 10,
                        width: 10,
                        color: Color(0xFFCCCCCC),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              '৳ 1,024.00',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.sp,
                                color: Color(0xFFED1C24),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '৳ 1,024.00',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.sp,
                                color: Color(0xFF898989),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
