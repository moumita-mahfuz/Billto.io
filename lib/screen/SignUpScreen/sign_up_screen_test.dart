import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double mHeight = MediaQuery.of(context).size.height;
    final double mWidth = MediaQuery.of(context).size.width;


    final double welcomesec = (mHeight * 15) / 100;
    final double formesec = (mHeight * 80) / 100;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color(0xFFF2F2F2),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Text(
                'Wellcome to Billto',
                // 'Billto',
                style: TextStyle(
                  color: Color(0xFFFFB317),
                  fontSize: 24,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                'SignUp',
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 24,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 40),
              Container(
                  height: formesec,
                  width: 325,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFCCCCCC)
                  ),
                ),
              Column(
                children: <Widget>[
                  inputFile(label: "Full Name / Company Name"),
                  inputFile(label: "Email / Phone number"),
                  inputFile(label: "Password", obscureText: true),
                ],
              ),
              //Continue Button
              Container(
                padding: EdgeInsets.only(top: 3),
                child: MaterialButton(
                  // minWidth: double.infinity,
                  minWidth: 300,
                  height: 50,
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
              //Google Button
              Container(
                padding: EdgeInsets.only(top: 3),
                child: MaterialButton(
                  // minWidth: double.infinity,
                  minWidth: 300,
                  height: 50,
                  onPressed: () {},
                  color: Color(0xFFFFB317),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        SimpleIcons.google,
                        color: Color(0xFFFEFEFE),
                      ),
                      SizedBox(width: 10),
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
              //Facebook Button
              Container(
                padding: EdgeInsets.only(top: 3),
                child: MaterialButton(
                  // minWidth: double.infinity,
                  minWidth: 300,
                  height: 50,
                  onPressed: () {},
                  color: Color(0xFFFFB317),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        SimpleIcons.facebook,
                        color: Color(0xFFFEFEFE),
                      ),
                      SizedBox(width: 10),
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
              //Login Button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already on Billto?",
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
                    onPressed: () {},
                    child: Text(
                      " Sign in here",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFFFB317),
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),

        ),

      ),
    );
  }
}



Widget inputFile({label, obscureText = false}) {
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
        height: 5,
      ),
      Container(
        height: 60,
        width: 300,
        child: TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 5,
      )
    ],
  );
}
