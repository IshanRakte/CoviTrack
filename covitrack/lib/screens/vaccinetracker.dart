import 'package:flutter/material.dart';

class VaccineTracker extends StatefulWidget {
  @override
  _VaccineTrackerState createState() => _VaccineTrackerState();
}

class _VaccineTrackerState extends State<VaccineTracker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.greenAccent.shade400, Colors.blue],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Center(
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 5,),
                Row(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10,),
                    Text(
                      'Vaccine tracker',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.white),
                    ),
                  ],
                ),
                Divider(
                  height: 30,
                  thickness: 5,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.white,
                ),
                SizedBox(height: 20,),


                //---> add page contents here


              ],
            ),
          ),
        ),
      ),
    );
  }
}
