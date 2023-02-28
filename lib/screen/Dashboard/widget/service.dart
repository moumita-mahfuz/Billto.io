import 'package:auto_size_text/auto_size_text.dart';
import 'package:billto/screen/Dashboard/widget/my_invoice.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../createNewInvoice/new_invoices_screen.dart';

class service extends StatelessWidget {
  //const ServiceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double mWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.fromLTRB(0, 3.h, 0, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyInvoice(),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Column(
                    children: [

                      Container(
                        width: 80.0,
                        height: 10.h,
                        // padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                        //padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        decoration: new BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/my_invoices.png',
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
                        'My\nInvoices',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                // padding: EdgeInsets.fromLTRB(0, 10, (mWidth*3)/100, 0),
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Column(
                  children: [
                    Container(
                      width: 80.0,
                      height: 10.h,
                      decoration: new BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/customar.png',
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
                      'My\nCustomers',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Column(
                  children: [
                    Container(
                      width: 80.0,
                      height: 10.h,
                      decoration: new BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/reports.png',
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
                      'My\nReports',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 3.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewInvoice(),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Column(
                    children: [
                      Container(
                        width: 80.0,
                        height: 10.h,
                        // padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                        //padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        decoration: new BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/new_invoices.png',
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
                        'New\nInvoices',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                // padding: EdgeInsets.fromLTRB(0, 10, (mWidth*3)/100, 0),
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Column(
                  children: [
                    Container(
                      width: 80.0,
                      height: 10.h,
                      decoration: new BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/add_user.png',
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
                      'Add\nCustomers',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Column(
                  children: [
                    Container(
                      width: 80.0,
                      height: 10.h,
                      decoration: new BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/settings.png',
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
                      'Settings\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
