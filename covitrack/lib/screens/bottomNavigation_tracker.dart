import 'package:covitrack/tracker/indiacases3.dart';
import 'package:covitrack/tracker/tracker.dart';
import 'package:covitrack/tracker/world_countrywise.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

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
// class bottomNavTracker extends StatefulWidget {
//   const bottomNavTracker({ Key key }) : super(key: key);

//   @override
//   _bottomNavTrackerState createState() => _bottomNavTrackerState();
// }

// class _bottomNavTrackerState extends State<bottomNavTracker> {

//   int _selectedIndex = 0;
//   // PageController _pageController;
//   List<Widget> _widgetOptions = <Widget>[
//     CaseTracker(),
//     World(),
//     IndiaCases3(),
//   ];

//   void _onItemTap(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       body: Container(
        
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.purple, Colors.blue],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         // child: _widgetOptions.elementAt(_selectedIndex), =>>> Need to add this
//         child: SafeArea(
//           child: IndexedStack(
//             children: [Center(
//               child: _widgetOptions.elementAt(_selectedIndex),
//             ),]
//           ),
//         ),

//       ), 
//         bottomNavigationBar: BottomNavigationBar(
          
//     //       selectedIndex: _selectedIndex,
//     //       onItemSelected: (index) => setState(() {
//     //           _selectedIndex = index;
//     //           _pageController.animateToPage(index,
//     //               duration: Duration(milliseconds: 300), curve: Curves.ease);
//     // }),
//                   items:  <BottomNavigationBarItem>[
//                     BottomNavigationBarItem(
//                       icon: FaIcon(
//                         FontAwesomeIcons.globeEurope
//                       ),
//                       title:
//                         Text('World Stats'),
//                     ),
//                     BottomNavigationBarItem(
//                       icon: Icon(
//                         FontAwesomeIcons.flag
//                       ),
//                       title:
//                         Text('Country-Wise Stats'),  
//                     ),
//                     BottomNavigationBarItem(
//                       icon: FaIcon(
//                         FontAwesomeIcons.flagCheckered
//                       ),
//                       title:
//                         Text('India Stats'),
//                     ),
//                   ],
//                 ),

//                     );}
// }
  //       2nd
  //       bottomNavigationBar: BottomNavyBar(
  //  selectedIndex: _selectedIndex,
  //  showElevation: true, // use this to remove appBar's elevation
  //  onItemSelected: (index) => setState(() {
  //             _selectedIndex = index;
  //             _pageController.animateToPage(index,
  //                 duration: Duration(milliseconds: 300), curve: Curves.ease);
  //   }),
  //  items: [
  //    BottomNavigationBarItem(
  //      icon: Icon(Icons.apps),
  //      title: Text('Home'),
  //      activeColor: Colors.red,
  //    ),
  //    BottomNavigationBarItem(
  //        icon: Icon(Icons.people),
  //        title: Text('Users'),
  //        activeColor: Colors.purpleAccent
  //    ),
  //    BottomNavigationBarItem(
  //        icon: Icon(Icons.message),
  //        title: Text('Messages'),
  //        activeColor: Colors.pink
  //    ),
  //    BottomNavigationBarItem(
  //        icon: Icon(Icons.settings),
  //        title: Text('Settings'),
  //        activeColor: Colors.blue
  //    ),


// void main() => runApp(MyApp());
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
// class MyHomePage extends StatefulWidget {

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {

//   int _currentIndex = 0;
//   PageController _pageController;
//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController();
//   }

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(title: Text("Bottom Nav Bar")),
//       body: IndexedStack(
//          children: [Center(
//         child: SizedBox.expand(
//           child: PageView(
//             controller: _pageController,
//             onPageChanged: (index) {
//               setState(() => _currentIndex = index);
//             },
//             children: <Widget>[
//               CaseTracker(),
//               World(),
//               IndiaCases3(),
//             ],        ),
//           ) ),],
  

//       bottomNavigationBar: BottomNavyBar(
//         selectedIndex: _currentIndex,
//         onItemSelected: (index) {
//           setState(() => _currentIndex = index);
//           _pageController.jumpToPage(index);
//         },
//         items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             title: Text('World Stats'),
//             icon: FaIcon(FontAwesomeIcons.globeEurope)
//           ),
//           BottomNavigationBarItem(
//             title: Text('Country Stats'),
//             icon: FaIcon(FontAwesomeIcons.flag)
//           ),
//           BottomNavigationBarItem(
//             title: Text('India Stats'),
//             icon: FaIcon(FontAwesomeIcons.flagCheckered)
//           ),
//         ],
//       ),
//   ));
//   }
// }