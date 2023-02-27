
import 'package:flutter/material.dart';
import 'package:linear_timer/linear_timer.dart';

import '../WelcomeScreen/welcomeScreen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => WelcomeScreen(),
        ),
      );
    });
  }

  Widget _richText(String text) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        text,
        style: const TextStyle(
          height: 1.171875,
          fontSize: 18.0,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
          color: Color.fromARGB(255, 0, 0, 0),

          /* letterSpacing: 0.0, */
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/bill-to-logo.png',
                height: 100,
              ),
              SizedBox(height: 20),
              _richText('QUICK AND EFFICIENT WAY TO'),
              _richText('CREATE YOUR BILLs'),
              const SizedBox(height: 20),
              LinearTimer(
                backgroundColor: Color(0xFFFFB317),
                color: Colors.black,
                // color: Color(00xFFFFB317),
                duration: const Duration(seconds: 5),
                onTimerEnd: () {
                  print("timer ended");
                },
              ),
              // const CircularProgressIndicator(
              //   color: Colors.black,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
