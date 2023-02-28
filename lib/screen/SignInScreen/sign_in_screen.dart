import 'dart:ui';
import 'package:billto/screen/SignUpScreen/sign_up_screen_test.dart';
import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    ScreenScaler scaler = ScreenScaler()..init(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height + 20,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 35),
              Text(
                'Wellcome to Billto',
                // 'Billto',
                style: TextStyle(
                  color: Color(0xFFFFB317),
                  fontSize: 24,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'SignIn',
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 24,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.h),
              SingleChildScrollView(
                child: Container(
                  height: scaler.getHeight(80),
                  width: scaler.getWidth(85),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFF2F2F2),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 5.h),
                      inputFile(label: "Email / Phone number"),
                      showPass(),
                      SizedBox(height: 5.h),
                      //Continue
                      Container(
                        padding: EdgeInsets.only(top: 3),
                        child: MaterialButton(
                          // minWidth: double.infinity,
                          minWidth: scaler.getWidth(77),
                          height: 6.h,
                          onPressed: () {},
                          color: Color(0xFFFFB317),
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            "Continue",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color(0xFFFEFEFE),
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        height: 5.h,
                        thickness: 1,
                        indent: 14,
                        endIndent: 14,
                        color: Color(0xFFCCCCCC),
                      ),
                      //Google
                      Container(
                        padding: EdgeInsets.only(top: 3),
                        child: MaterialButton(
                          minWidth: scaler.getWidth(77),
                          height: 6.h,
                          onPressed: () {},
                          color: Color(0xFFFFB317),
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                SimpleIcons.google,
                                color: Color(0xFFFEFEFE),
                              ),
                              SizedBox(width: 2.w),
                              Text(
                                'Continue with Google',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Color(0xFFFEFEFE),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 2.h),
                      //Facebook
                      Container(
                        padding: EdgeInsets.only(top: 3),
                        child: MaterialButton(
                          // minWidth: double.infinity,
                          minWidth: scaler.getWidth(77),
                          height: 6.h,
                          onPressed: () {},
                          color: Color(0xFFFFB317),
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                SimpleIcons.facebook,
                                color: Color(0xFFFEFEFE),
                              ),
                              SizedBox(width: 2.w),
                              Text(
                                'Continue with Facebook',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Color(0xFFFEFEFE),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 5.h),
                      //Sign In
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Don't have an account?",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF898989),
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              primary: Colors.black,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpPage(),
                                ),
                              );
                            },
                            child: Text(
                              " Sign Up",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFFFFB317),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget inputFile({label}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Color(0xFF898989),
          fontFamily: 'Montserrat',
        ),
      ),
      SizedBox(
        height: 2.h,
      ),
      Container(
        height: 6.h,
        width: 77.w,
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            fillColor: Color(0xFFFFFFFF),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFFFFB317),
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 2.h,
      )
    ],
  );
}

class showPass extends StatefulWidget {
  const showPass({Key? key}) : super(key: key);

  @override
  State<showPass> createState() => _showPassState();
}

class _showPassState extends State<showPass> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          "Password",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: Color(0xFF898989),
            fontFamily: 'Montserrat',
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Container(
          height: 6.h,
          width: 77.w,
          child: TextField(
            obscureText: _isHidden,
            decoration: InputDecoration(
              hintText: 'Between 8 and 72 characters',
              hintStyle: TextStyle(
                color: Color(0xFFC1C1C1),
                fontWeight: FontWeight.normal,
                fontSize: 15.sp,
                fontFamily: 'Montserrat',
              ),
              suffix: InkWell(
                onTap: _togglePasswordView,
                child: Icon(
                  _isHidden ? Icons.visibility_off : Icons.visibility,
                  color: Color(0xFFCCCCCC),
                ),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              fillColor: Color(0xFFFFFFFF),
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xFFFFB317),
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}





