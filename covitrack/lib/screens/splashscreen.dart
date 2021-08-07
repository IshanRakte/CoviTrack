import 'package:covitrack/main.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo2.png',
              width: 600,
              height: 400,
            ),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xff08D9D6)),
                backgroundColor: Color(0xff252A34)),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
