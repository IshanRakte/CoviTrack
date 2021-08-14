// import 'dart:js';
import 'package:covitrack/bnb/bottomNavigation_oxypulse.dart';
import 'package:covitrack/bnb/bottomNavigation_tracker.dart';
import 'package:covitrack/bnb/bottomNavigation_vaccineinfo.dart';
import 'package:covitrack/screens/about.dart';
import 'package:covitrack/screens/oxypulse.dart';
import 'package:covitrack/screens/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:covitrack/tracker/vaccinetracker.dart';
import 'package:covitrack/screens/emergency.dart';
import 'package:covitrack/screens/precautions.dart';
import 'package:covitrack/screens/symptoms.dart';
import 'package:covitrack/screens/vaccine.dart';
import 'package:covitrack/tracker/tracker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
        '/casetracker': (context) => CaseTracker(),
        '/bnbsymptoms': (context) => bottomNavTracker2(),
        '/vaccine_info': (context) => bottomNavTracker3(),
        '/symptoms': (context) => Symptoms(),
        '/precautions': (context) => Precautions(),
        '/emergency': (context) => Emergency(),
        '/bottomnavtracker': (context) => bottomNavTracker(),
        '/home': (context) => HomePage(),
        '/vaccinetracker': (context) => VaccineTracker(),
        '/about': (context) => About()
      },

      home: SplashScreen(),
  ));
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       color: Color(0xffEAEAEA),
       child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 28,),
              Row(
                children: [
                  SizedBox(width: 17.0,),
                  FaIcon(FontAwesomeIcons.home, size: 30,),
                  SizedBox(width: 20,),
                  Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff252A34)
                    ),
                  ),
                ],
              ),
              Divider(
                height: 30,
                thickness: 5,
                indent: 20,
                color: Color(0xff252A34),
                endIndent: 20,
              ),
              
              SizedBox(height: 28,),
              Expanded(
                child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Center(
                        child: Card(
                          elevation: 4,
                          
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                            child: Container(
                              color: Color(0xff08D9D6),
                              // decoration: BoxDecoration(
                              //   gradient: LinearGradient(
                              //     colors: [Colors.purple, Colors.blue],
                              //     begin: Alignment.topLeft,
                              //     end: Alignment.bottomRight,
                              //   ),
                              // ),
                              width: 200,
                              // padding: EdgeInsets.all(5),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: (){
                                    Navigator.pushNamed(context, '/bottomnavtracker');
                                  },
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      SizedBox(height: 65,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            'Tracker >',
                                            style: TextStyle(
                                              color: Color(0xff252A34),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(width: 5,),
                                        ],
                                      ),
                                      SizedBox(height: 5,),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 38,
                            width: 4,
                            color: Color(0xff08D9D6),
                          ),
                          SizedBox(width: 6,),
                          Text(
                            'Keep track of covid 19\ncases.',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Color(0xff252A34)
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 50,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                      ),
                      SizedBox(height: 5,),
                      //
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 20,),
                          // Container(
                          //   height: 24,
                          //   width: 20,
                          //   color: Colors.amber[400],
                          // ),
                          // SizedBox(width: 4,),
                          Text(
                            'More Features:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              letterSpacing: 1,
                              color: Color(0xff252A34)
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 50,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(width: 2, color: Colors.black,),
                            ),
                            elevation: 4,
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, '/vaccinetracker');
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      height: 65,
                                      width: 120,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                'Vaccine Tracker >',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              SizedBox(width: 5,),
                                            ],
                                          ),
                                          SizedBox(height: 5,),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(width: 2, color: Colors.black,),
                            ),
                            elevation: 4,
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, '/vaccine_info');
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      height: 65,
                                      width: 120,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                'Vaccine Info >',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              SizedBox(width: 5,),
                                            ],
                                          ),
                                          SizedBox(height: 5,),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(width: 2, color: Color(0xff252A34),),
                            ),
                            elevation: 4,
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, '/bnbsymptoms');
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      height: 65,
                                      width: 120,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                'Symptoms >',
                                                style: TextStyle(
                                                  color: Color(0xff252A34),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              SizedBox(width: 5,),
                                            ],
                                          ),
                                          SizedBox(height: 5,),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(width: 2, color: Color(0xff252A34),),
                            ),
                            elevation: 4,
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, '/precautions');
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      height: 65,
                                      width: 120,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                'Precautions >',
                                                style: TextStyle(
                                                  color: Color(0xff252A34),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              SizedBox(width: 5,),
                                            ],
                                          ),
                                          SizedBox(height: 5,),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Center(
                        child: Card(
                          elevation: 4,
                          // shadowColor: Colors.red,
                          
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                            child: Container(
                              color: Color(0xffFF2E63),
                              // decoration: BoxDecoration(
                              //   gradient: LinearGradient(
                              //     colors: [Colors.redAccent, Colors.red],
                              //     begin: Alignment.topCenter,
                              //     end: Alignment.bottomCenter,
                              //   ),
                              // ),
                              width: 270,
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  // splashColor: Colors.red,
                                  onTap: (){
                                    Navigator.pushNamed(context, '/emergency');
                                  },
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      SizedBox(height: 55,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            'Emergency Info >',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(width: 5,),
                                        ],
                                      ),
                                      SizedBox(height: 5,),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                        ),
                        
                      ),
                      TextButton(onPressed: (){
                                  Navigator.pushNamed(context, '/about');}, child: Text("About")),
                    ],
                  ),
                ),
              )
              //
            ],
          ),

        ),
     ),
    );
  }
}
