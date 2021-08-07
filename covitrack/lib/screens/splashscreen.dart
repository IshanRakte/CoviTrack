import 'package:covitrack/main.dart';
import 'package:flutter/material.dart';
import 'dart:async';
// import 'package:animated_splash_screen/animated_splash_screen.dart';
// import 'package:page_transition/page_transition.dart';

// class SplashScreen extends StatefulWidget {


//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   Widget build(BuildContext context) {

//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: AnimatedSplashScreen(splash: 'assets/logo2.png' , nextScreen: HomePage(), backgroundColor: Colors.black,)
      
    
//     );
//   }
// }

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Timer(Duration(seconds: 3), () {
  //     Navigator.of(context)
  //         .pushReplacement(MaterialPageRoute(builder: (_) => Login()));
  //   });
  // }

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     Timer(Duration(seconds: 3), (){
//       Navigator.pushReplacementNamed(context, '/login');
//   });
// }

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), (){
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
              // valueColor: AlwaysStoppedAnimation<Color>(Colors.teal),
              // backgroundColor: Colors.red,
              // strokeWidth: 5,
            ),

            SizedBox(height: 20,),

            // LinearProgressIndicator(
            //   // valueColor: AlwaysStoppedAnimation<Color>(Colors.teal),
            //   // backgroundColor: Colors.red,
            //   // minHeight: 5,
            // )
          ],
        ),
      ),
    );
  }
}