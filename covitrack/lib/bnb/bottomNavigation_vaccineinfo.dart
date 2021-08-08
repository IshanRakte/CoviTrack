import 'package:covitrack/vaccineinfo/covaxin.dart';
import 'package:covitrack/vaccineinfo/covishield.dart';
import 'package:covitrack/vaccineinfo/sputnik.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class bottomNavTracker3 extends StatefulWidget {
  const bottomNavTracker3({Key key}) : super(key: key);

  @override
  _bottomNavTracker3State createState() => _bottomNavTracker3State();
}

class _bottomNavTracker3State extends State<bottomNavTracker3> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Covishield(),
    Covaxin(),
    Sputnik(),
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
        
          child: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          
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
              FontAwesomeIcons.syringe,
              size: 20,
              // color: Colors.white,
            ),
            label: 'Covishield',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.syringe,
              size: 20,
              // color: Colors.white,
              
            ),
            label: 'Covaxin',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.syringe,
              size: 20,
              // color: Colors.white,
            ),
            label: 'Sputnik-V',
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
