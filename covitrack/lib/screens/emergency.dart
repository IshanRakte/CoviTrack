import 'package:flutter/material.dart';
import 'package:covitrack/cities/pune.dart';
import 'package:covitrack/cities/mumbai.dart';
import 'package:covitrack/cities/delhi.dart';
import 'package:covitrack/cities/kolkata.dart';
import 'package:covitrack/cities/bangalore.dart';

class Emergency extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Emergency',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 15.0),
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    width: 2,
                    color: Colors.black,
                  ),
                ),
                child: Container(
                  width: 370,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Ink(
                        child: Container(
                          height: 40,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Pune()));
                            },
                            child: Text(
                              'Pune  >',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    width: 2,
                    color: Colors.black,
                  ),
                ),
                child: Container(
                  width: 370,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Mumbai()));
                          },
                          child: Text(
                            'Mumbai  >',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    width: 2,
                    color: Colors.black,
                  ),
                ),
                child: Container(
                  width: 370,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Bangalore()));
                          },
                          child: Text(
                            'Bangalore  >',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    width: 2,
                    color: Colors.black,
                  ),
                ),
                child: Container(
                  width: 370,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Kolkata()));
                          },
                          child: Text(
                            'Kolkata  >',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    width: 2,
                    color: Colors.black,
                  ),
                ),
                child: Container(
                  width: 370,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Delhi()));
                          },
                          child: Text(
                            'Delhi  >',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    width: 2,
                    color: Colors.black,
                  ),
                ),
                child: InkWell(
                  
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Delhi()));
                  },
                  child: Container(

                    width: 370,
                    height: 40,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Delhi  >',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             SizedBox(height: 28,),
//             Row(
//               children: [
//                 SizedBox(width: 20,),
//                 Text(
//                   'Emergency',
//                   style: TextStyle(
//                     fontSize: 28,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//             Divider(
//               height: 30,
//               thickness: 5,
//               indent: 20,
//               color: Colors.black,
//               endIndent: 20,
//             ),

//             SizedBox(height: 28,),

//             Center(
//               child: Card(
//                 elevation: 4,

//                 clipBehavior: Clip.antiAlias,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                   child: Container(
//                     decoration: BoxDecoration(

//                     ),
//                     width: 200,
//                     padding: EdgeInsets.all(5),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         SizedBox(height: 35,),
//                         TextButton(
//                           onPressed: (){
//                             Navigator.push(context, MaterialPageRoute(builder: (context) => Mumbai()));
//                           },
//                           child: Text(
//                             'Mumbai  >',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//               ),
//             ),
//             SizedBox(height: 15,),

//             SizedBox(height: 50,),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Card(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     side: BorderSide(width: 2, color: Colors.black,),
//                   ),
//                   elevation: 4,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       SizedBox(height: 15,),
//                         TextButton(
//                           onPressed: (){
//                             Navigator.push(context, MaterialPageRoute(builder: (context) => Pune()));
//                           },
//                           child: Text(
//                             '    Pune  >',
//                             style: TextStyle(
//                               fontSize: 12,
//                               color: Colors.black,
//                             ),
//                           ),

//                         ),
//                       ],
//                   ),
//                 ),
//                 SizedBox(width: 20,),
//                 Card(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     side: BorderSide(width: 2, color: Colors.black,),
//                   ),
//                   elevation: 4,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       SizedBox(height: 15,),
//                         TextButton(
//                           onPressed: (){
//                             Navigator.push(context, MaterialPageRoute(builder: (context) => Delhi()));
//                           },
//                           child: Text(
//                             '           Delhi  >',
//                             style: TextStyle(
//                               fontSize: 12,
//                               color: Colors.black,
//                             ),
//                           ),
//                         ),
//                       ],
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(height: 10,),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Card(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     side: BorderSide(width: 2, color: Colors.blueAccent,),
//                   ),
//                   elevation: 4,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       SizedBox(height: 15,),
//                         TextButton(
//                           onPressed: (){
//                             Navigator.push(context, MaterialPageRoute(builder: (context) => Kolkata()));
//                           },
//                           child: Text(
//                             '              Kolkata  >',
//                             style: TextStyle(
//                               fontSize: 12,
//                               color: Colors.blueAccent,
//                             ),
//                           ),
//                         ),
//                       ],
//                   ),
//                 ),
//                 SizedBox(width: 20,),
//                 Card(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     side: BorderSide(width: 2, color: Colors.green.shade800,),
//                   ),
//                   elevation: 4,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       SizedBox(height: 15,),
//                         TextButton(
//                           onPressed: (){
//                             Navigator.push(context, MaterialPageRoute(builder: (context) => Bangalore()));
//                           },
//                           child: Text(
//                             '            Bangalore  >',
//                             style: TextStyle(
//                               fontSize: 12,
//                               color: Colors.green[600],
//                             ),
//                           ),
//                         ),
//                       ],
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(height: 20,),

//           ],
//         ),

//       ),
//     );
//   }
// }
