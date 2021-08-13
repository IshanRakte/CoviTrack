import 'package:covitrack/tracker/indiacases3.dart';
import 'package:covitrack/tracker/tracker.dart';
import 'package:covitrack/tracker/world_countrywise.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class bottomNavTracker extends StatefulWidget {
  const bottomNavTracker({Key key}) : super(key: key);

  @override
  _bottomNavTrackerState createState() => _bottomNavTrackerState();
}

class _bottomNavTrackerState extends State<bottomNavTracker> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    CaseTracker(),
    World(),
    IndiaCases3(),
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
        color: Color(0xff08D9D6),
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     colors: [Colors.purple, Colors.blue],
        //     begin: Alignment.topLeft,
        //     end: Alignment.bottomRight,
        //   ),
        // ),
        // child: _widgetOptions.elementAt(_selectedIndex), =>>> Need to add this
        child: SafeArea(
          child: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff252A34),
        elevation: 0,
        selectedItemColor: Color(0xff08D9D6),
        unselectedItemColor: Color(0xffEAEAEA),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.globeAfrica,
              size: 20,
              // color: Colors.white,
            ),
            label: 'World Stats',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.flagCheckered,
              size: 20,
              // color: Colors.white,
              
            ),
            label: 'Country-Wise Stats',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.flag,
              size: 20,
              // color: Colors.white,
            ),
            label: 'India Stats',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedFontSize: 14.0,
        unselectedFontSize: 13.0,
        
      ),
    );
  }
}
