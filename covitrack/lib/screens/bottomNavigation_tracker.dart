import 'dart:convert';
import 'package:covitrack/models/tcases.dart';
import 'package:covitrack/tracker/indiacases.dart';
import 'package:covitrack/tracker/tracker.dart';
import 'package:covitrack/tracker/tracker.dart';
import 'package:covitrack/tracker/world_countrywise.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class bottomNavTracker extends StatefulWidget {
  const bottomNavTracker({ Key key }) : super(key: key);

  @override
  _bottomNavTrackerState createState() => _bottomNavTrackerState();
}

class _bottomNavTrackerState extends State<bottomNavTracker> {

  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    CaseTracker(),
    World(),
    Text('Profile Screen'),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.blue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        // child: _widgetOptions.elementAt(_selectedIndex), =>>> Need to add this
        child: SafeArea(
          child: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
        ),

      ), 
      
        bottomNavigationBar: BottomNavigationBar(
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      
                      icon: Icon(
                        Icons.home,
                      ),
                      label:
                        'World Stats',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.golf_course,
                      ),
                      label:
                        'Country Stats',  
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.apartment,
                      ),
                      label:
                        'India Stats',
                    ),
                  ],
                  currentIndex: _selectedIndex,
                  onTap: _onItemTap,
                  selectedFontSize: 13.0,
                  unselectedFontSize: 13.0,
                  
                ),     
    );
  }
}