// import 'dart:convert';
// import 'package:covitrack/models/tcases.dart';
// import 'package:covitrack/screens/indiacases.dart';
// import 'package:covitrack/world_countrywise.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class bottomNavTracker extends StatefulWidget {
//   @override
//   _CaseTrackerState createState() => _CaseTrackerState();
// }

// class _CaseTrackerState extends State<bottomNavTracker> {
//   final String url = "https://disease.sh/v3/covid-19/all";

  
  
  
//   int _selectedIndex = 0;
//   List<Widget> _widgetOptions = <Widget>[
//     bottomNavTracker(),
//     World(),
//     Text('Profile Screen'),
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
//           child: Center(
//             child: _widgetOptions.elementAt(_selectedIndex),
//           ),
//         ),

//       ), 
      
//         bottomNavigationBar: BottomNavigationBar(
//                   items: const <BottomNavigationBarItem>[
//                     BottomNavigationBarItem(
                      
//                       icon: Icon(
//                         Icons.home,
//                       ),
//                       label:
//                         'World Stats',
//                     ),
//                     BottomNavigationBarItem(
//                       icon: Icon(
//                         Icons.golf_course,
//                       ),
//                       label:
//                         'Country Stats',  
//                     ),
//                     BottomNavigationBarItem(
//                       icon: Icon(
//                         Icons.apartment,
//                       ),
//                       label:
//                         'India Stats',
//                     ),
//                   ],
//                   currentIndex: _selectedIndex,
//                   onTap: _onItemTap,
//                   selectedFontSize: 13.0,
//                   unselectedFontSize: 13.0,
                  
//                 ),     
//     );
//   }

//   Widget buildSheet() => Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           SizedBox(
//             height: 10,
//           ),
//           Container(
//             height: 2,
//             width: 40,
//             color: Colors.black,
//           ),
//           SizedBox(
//             height: 8,
//           ),
//           Container(
//             padding: EdgeInsets.all(16),
//             height: 400,
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Container(
//                           height: 85,
//                           width: 150,
//                           color: Colors.grey[300],
//                           padding: EdgeInsets.all(8),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'Cases today',
//                                 style: TextStyle(
//                                   // fontWeight: FontWeight.bold,
//                                   fontSize: 18,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 8,
//                               ),
                              
//                             ],
//                           ),
//                         ),
//                         //
//                       ],
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Container(
//                           height: 85,
//                           width: 150,
//                           color: Colors.grey[300],
//                           padding: EdgeInsets.all(8),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'Deaths today',
//                                 style: TextStyle(
//                                   // fontWeight: FontWeight.bold,
//                                   fontSize: 18,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 8,
//                               ),
                              
//                             ],
//                           ),
//                         ),
//                         //
//                       ],
//                     )
//                   ],
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 Container(
//                   height: 85,
//                   width: double.infinity,
//                   color: Colors.grey[300],
//                   padding: EdgeInsets.all(8),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Total affected Countries',
//                         style: TextStyle(
//                           // fontWeight: FontWeight.bold,
//                           fontSize: 18,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 8,
//                       ),
                      
//                     ],
//                   ),
//                 ),
//               ],
//             ),
            
//           ),
          
//         ],
        
//       );
      
// }
