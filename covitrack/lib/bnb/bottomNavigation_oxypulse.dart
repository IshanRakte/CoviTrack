import 'package:covitrack/screens/oxypulse.dart';
import 'package:covitrack/screens/symptoms.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class bottomNavTracker2 extends StatefulWidget {
  const bottomNavTracker2({Key key}) : super(key: key);

  @override
  _bottomNavTracker2State createState() => _bottomNavTracker2State();
}

class _bottomNavTracker2State extends State<bottomNavTracker2> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Symptoms(),
    Oxy(),
    Pulse(),
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
              FontAwesomeIcons.headSideCough,
              size: 20,
              // color: Colors.white,
            ),
            label: 'Symptoms',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.lungs,
              size: 20,
              // color: Colors.white,
            ),
            label: 'Oxygen',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.heartbeat,
              size: 20,
              // color: Colors.white,
              
            ),
            label: 'Pulse',
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
