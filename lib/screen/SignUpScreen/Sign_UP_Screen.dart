import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xFFFFFFFF),
      // appBar: AppBar(
      //   elevation: 0,
      //   brightness: Brightness.light,
      //   backgroundColor: Colors.white,
      //   leading: IconButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     icon: Icon(Icons.arrow_back_ios,
      //       size: 20,
      //       color: Colors.black,),
      //
      //
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            height: MediaQuery.of(context).size.height - 50,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Wellcome to",
                          style: TextStyle(
                            fontSize: 24,
                            color: Color(0xFFFFB317),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          " Billto",
                          style: TextStyle(
                            fontSize: 24,
                            color: Color(0xFFFFB317),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Sign Up ",
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xFF000000),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                      ),
                    )
                  ],
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

      ),
    );
  }
}

// we will be creating a widget for text field
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
