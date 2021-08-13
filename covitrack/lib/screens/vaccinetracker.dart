// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class VaccineTracker extends StatefulWidget {
//   @override
//   _VaccineTrackerState createState() => _VaccineTrackerState();
// }

// class _VaccineTrackerState extends State<VaccineTracker> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Container(decoration: BoxDecoration(
//             gradient: LinearGradient(
//           colors: [Colors.greenAccent.shade400, Colors.blue],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         )),
//         child: Center(
//           child: SafeArea(
//             child: Column(
//               children: [
//                 SizedBox(height: 5,),
//                 Row(
//                   children: [
//                     Row(
//                       children: [
//                         IconButton(
//                           onPressed: () {
//                             Navigator.pop(context);
//                           },
//                           icon: Icon(
//                             Icons.arrow_back_ios_new,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(width: 10,),
//                     Text(
//                       'Vaccine tracker',
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 28,
//                           color: Colors.white),
//                     ),
//                   ],
//                 ),
//                 Divider(
//                   height: 30,
//                   thickness: 5,
//                   indent: 20,
//                   endIndent: 20,
//                   color: Colors.white,
//                 ),
//               ],
              
//             ),
//           ),
//         ),
//       ),

//     );

            
//   }
// }
     
//       // body: Container(
//       //   decoration: BoxDecoration(
//       //       gradient: LinearGradient(
//       //     colors: [Colors.greenAccent.shade400, Colors.blue],
//       //     begin: Alignment.topLeft,
//       //     end: Alignment.bottomRight,
//       //   )),
//       //   child: Center(
//       //     child: SafeArea(
//       //       child: Column(
//       //         children: [
//       //           SizedBox(height: 5,),
//       //           Row(
//       //             children: [
//       //               Row(
//       //                 children: [
//       //                   IconButton(
//       //                     onPressed: () {
//       //                       Navigator.pop(context);
//       //                     },
//       //                     icon: Icon(
//       //                       Icons.arrow_back_ios_new,
//       //                       color: Colors.white,
//       //                     ),
//       //                   ),
//       //                 ],
//       //               ),
//       //               SizedBox(width: 10,),
//       //               Text(
//       //                 'Vaccine tracker',
//       //                 style: TextStyle(
//       //                     fontWeight: FontWeight.bold,
//       //                     fontSize: 28,
//       //                     color: Colors.white),
//       //               ),
//       //             ],
//       //           ),
//                 // Divider(
//                 //   height: 30,
//                 //   thickness: 5,
//                 //   indent: 20,
//                 //   endIndent: 20,
//                 //   color: Colors.white,
//                 // ),
//                 // SizedBox(height: 20,),

//             //                body: Container(height: double.infinity,
//             // width: double.infinity,
//             // child: WebView(
//             //   javascriptMode: JavascriptMode.unrestricted,
//             //   initialUrl: 'https://graphics.reuters.com/world-coronavirus-tracker-and-maps/vaccination-rollout-and-access/',

//             // ))

//                 // void main() => runApp(VaccineTracker2());

// class VaccineTracker2 extends StatefulWidget {
//   @override
//   _VaccineTracker2State createState() => _VaccineTracker2State();
// }

// class _VaccineTracker2State extends State<VaccineTracker2> {

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: SafeArea(
//         child: Scaffold(
//           appBar: AppBar(
//             title: Text('Covid-19 tracker'),
//             backgroundColor: Colors.deepOrangeAccent,),
        
          
//           body: Expanded(
//             //  child: SingleChildScrollView(
//             //         physics: BouncingScrollPhysics(),
//             child: Container(
//               height: double.infinity,
//               width: double.infinity,
//               child: WebView(
//                 javascriptMode: JavascriptMode.unrestricted,
//                 initialUrl: 'https://www.bing.com/covid/local/raipur_chhattisgarh_india?form=C19ANS',
//               )
//               ),
//             // ),
//           ),
//         ),
//       ),
//     );
//   }
// }
